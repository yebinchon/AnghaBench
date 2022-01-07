; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@KM_USER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, %struct.page*, i32, i32, i32)* @fuse_copy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_page(%struct.fuse_copy_state* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_copy_state*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.page*, %struct.page** %8, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = load i32, i32* @KM_USER1, align 4
  %28 = call i8* @kmap_atomic(%struct.page* %26, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @memset(i8* %29, i32 0, i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* @KM_USER1, align 4
  %34 = call i32 @kunmap_atomic(i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %21, %18, %5
  br label %36

36:                                               ; preds = %75, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %41 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %46 = call i32 @fuse_copy_fill(%struct.fuse_copy_state* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %88

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.page*, %struct.page** %8, align 8
  %57 = load i32, i32* @KM_USER1, align 4
  %58 = call i8* @kmap_atomic(%struct.page* %56, i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  store i8* %62, i8** %15, align 8
  %63 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %64 = call i32 @fuse_copy_do(%struct.fuse_copy_state* %63, i8** %15, i32* %10)
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* @KM_USER1, align 4
  %69 = call i32 @kunmap_atomic(i8* %67, i32 %68)
  br label %75

70:                                               ; preds = %52
  %71 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %72 = call i32 @fuse_copy_do(%struct.fuse_copy_state* %71, i8** null, i32* %10)
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %70, %55
  br label %36

76:                                               ; preds = %36
  %77 = load %struct.page*, %struct.page** %8, align 8
  %78 = icmp ne %struct.page* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %81 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.page*, %struct.page** %8, align 8
  %86 = call i32 @flush_dcache_page(%struct.page* %85)
  br label %87

87:                                               ; preds = %84, %79, %76
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @fuse_copy_fill(%struct.fuse_copy_state*) #1

declare dso_local i32 @fuse_copy_do(%struct.fuse_copy_state*, i8**, i32*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
