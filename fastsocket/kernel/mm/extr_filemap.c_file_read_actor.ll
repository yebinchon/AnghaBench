; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_file_read_actor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_file_read_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.page = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_read_actor(%struct.TYPE_5__* %0, %struct.page* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @fault_in_pages_writeable(i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %20
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = load i32, i32* @KM_USER0, align 4
  %31 = call i8* @kmap_atomic(%struct.page* %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @__copy_to_user_inatomic(i64 %35, i8* %38, i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @KM_USER0, align 4
  %43 = call i32 @kunmap_atomic(i8* %41, i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %73

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i8* @kmap(%struct.page* %49)
  store i8* %50, i8** %9, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @__copy_to_user(i64 %54, i8* %57, i64 %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i32 @kunmap(%struct.page* %60)
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %64, %48
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %74, %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %84
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* %8, align 8
  %91 = trunc i64 %90 to i32
  ret i32 %91
}

declare dso_local i32 @fault_in_pages_writeable(i64, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i64 @__copy_to_user_inatomic(i64, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i64 @__copy_to_user(i64, i8*, i64) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
