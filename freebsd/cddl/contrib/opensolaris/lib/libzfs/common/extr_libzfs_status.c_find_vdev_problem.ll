; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_status.c_find_vdev_problem.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_status.c_find_vdev_problem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_REPLACING = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32 (i32*, i64)*, i8*)* @find_vdev_problem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_vdev_problem(i32* %0, i32 (i32*, i64)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i32*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 (i32*, i64)* %1, i32 (i32*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** @B_TRUE, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %20 = call i64 @nvlist_lookup_string(i32* %18, i32 %19, i8** %13)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @verify(i32 %22)
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* @VDEV_TYPE_REPLACING, align 4
  %26 = call i64 @strcmp(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i8*, i8** @B_FALSE, align 8
  store i8* %29, i8** %4, align 8
  br label %100

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %34 = call i64 @nvlist_lookup_nvlist_array(i32* %32, i32 %33, i32*** %8, i64* %12)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32**, i32*** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32 (i32*, i64)*, i32 (i32*, i64)** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @find_vdev_problem(i32* %45, i32 (i32*, i64)* %46, i8* %47)
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i8*, i8** @B_TRUE, align 8
  store i8* %51, i8** %4, align 8
  br label %100

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %37

56:                                               ; preds = %37
  br label %72

57:                                               ; preds = %31
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %60 = call i64 @nvlist_lookup_uint64_array(i32* %58, i32 %59, i32** %9, i64* %11)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @verify(i32 %62)
  %64 = load i32 (i32*, i64)*, i32 (i32*, i64)** %6, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 %64(i32* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i8*, i8** @B_TRUE, align 8
  store i8* %70, i8** %4, align 8
  br label %100

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %75 = call i64 @nvlist_lookup_nvlist_array(i32* %73, i32 %74, i32*** %8, i64* %12)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  store i64 0, i64* %10, align 8
  br label %78

78:                                               ; preds = %94, %77
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load i32**, i32*** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32 (i32*, i64)*, i32 (i32*, i64)** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i8* @find_vdev_problem(i32* %86, i32 (i32*, i64)* %87, i8* %88)
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i8*, i8** @B_TRUE, align 8
  store i8* %92, i8** %4, align 8
  br label %100

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %78

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %72
  %99 = load i8*, i8** @B_FALSE, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %98, %91, %69, %50, %28
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
