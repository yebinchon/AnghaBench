; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_remove_arg_zero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_remove_arg_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_arg_zero(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %77, %13
  %15 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %16 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %22 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %23 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.page* @get_arg_page(%struct.linux_binprm* %21, i64 %24, i32 0)
  store %struct.page* %25, %struct.page** %7, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %90

31:                                               ; preds = %14
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = load i32, i32* @KM_USER0, align 4
  %34 = call i8* @kmap_atomic(%struct.page* %32, i32 %33)
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %49, %31
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i1 [ false, %35 ], [ %45, %39 ]
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  %52 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %53 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %35

56:                                               ; preds = %46
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @KM_USER0, align 4
  %59 = call i32 @kunmap_atomic(i8* %57, i32 %58)
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = call i32 @put_arg_page(%struct.page* %60)
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %67 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %68 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %69, %71
  %73 = sub i64 %72, 1
  %74 = trunc i64 %73 to i32
  %75 = call i32 @free_arg_page(%struct.linux_binprm* %66, i32 %74)
  br label %76

76:                                               ; preds = %65, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %14, label %81

81:                                               ; preds = %77
  %82 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %83 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %87 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %81, %28
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.page* @get_arg_page(%struct.linux_binprm*, i64, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @put_arg_page(%struct.page*) #1

declare dso_local i32 @free_arg_page(%struct.linux_binprm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
