; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_vdev_get_physpaths.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_vdev_get_physpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@VDEV_TYPE_MIRROR = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i32 0, align 4
@VDEV_TYPE_REPLACING = common dso_local global i32 0, align 4
@VDEV_TYPE_SPARE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@EZFS_NOSPC = common dso_local global i32 0, align 4
@EZFS_POOL_INVALARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64*, i32)* @vdev_get_physpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_get_physpaths(i32* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %21 = call i64 @nvlist_lookup_string(i32* %19, i32 %20, i8** %12)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @EZFS_INVALCONFIG, align 4
  store i32 %24, i32* %6, align 4
  br label %114

25:                                               ; preds = %5
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @VDEV_TYPE_DISK, align 4
  %28 = call i64 @strcmp(i8* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  store i64 0, i64* %14, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %36 = call i32 @nvlist_lookup_uint64(i32* %34, i32 %35, i64* %14)
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EZFS_INVALCONFIG, align 4
  store i32 %40, i32* %6, align 4
  br label %114

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @vdev_online(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = call i32 @vdev_get_one_physpath(i32* %47, i8* %48, i64 %49, i64* %50)
  store i32 %51, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %114

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %42
  br label %112

57:                                               ; preds = %25
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @VDEV_TYPE_MIRROR, align 4
  %60 = call i64 @strcmp(i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @VDEV_TYPE_RAIDZ, align 4
  %65 = call i64 @strcmp(i8* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @VDEV_TYPE_REPLACING, align 4
  %70 = call i64 @strcmp(i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* @VDEV_TYPE_SPARE, align 4
  %75 = call i64 @strcmp(i8* %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  br i1 %76, label %78, label %111

78:                                               ; preds = %72, %67, %62, %57
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %81 = call i64 @nvlist_lookup_nvlist_array(i32* %79, i32 %80, i32*** %15, i32* %16)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @EZFS_INVALCONFIG, align 4
  store i32 %84, i32* %6, align 4
  br label %114

85:                                               ; preds = %78
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %107, %85
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i32**, i32*** %15, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @vdev_get_physpaths(i32* %95, i8* %96, i64 %97, i64* %98, i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @EZFS_NOSPC, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %6, align 4
  br label %114

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %86

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %72
  br label %112

112:                                              ; preds = %111, %56
  %113 = load i32, i32* @EZFS_POOL_INVALARG, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %104, %83, %53, %39, %23
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @vdev_online(i32*) #1

declare dso_local i32 @vdev_get_one_physpath(i32*, i8*, i64, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
