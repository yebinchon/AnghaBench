; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_find_vdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_find_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zpool_find_vdev(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = load i32, i32* @KM_SLEEP, align 4
  %24 = call i64 @nvlist_alloc(i32** %15, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @verify(i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strtoull(i8* %28, i8** %13, i32 10)
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %17, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %5
  %33 = load i8*, i8** %13, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %40 = load i64, i64* %17, align 8
  %41 = call i64 @nvlist_add_uint64(i32* %38, i32 %39, i64 %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @verify(i32 %43)
  br label %84

45:                                               ; preds = %32, %5
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @zpool_vdev_is_interior(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @nvlist_add_string(i32* %50, i32 %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @verify(i32 %55)
  br label %83

57:                                               ; preds = %45
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 47
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = trunc i64 %19 to i32
  %65 = load i8*, i8** @_PATH_DEV, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @snprintf(i8* %21, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %70 = call i64 @nvlist_add_string(i32* %68, i32 %69, i8* %21)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @verify(i32 %72)
  br label %82

74:                                               ; preds = %57
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @nvlist_add_string(i32* %75, i32 %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @verify(i32 %80)
  br label %82

82:                                               ; preds = %74, %63
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %37
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %89 = call i64 @nvlist_lookup_nvlist(i32 %87, i32 %88, i32** %14)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @verify(i32 %91)
  %93 = load i32, i32* @B_FALSE, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %84
  %100 = load i32, i32* @B_FALSE, align 4
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %84
  %103 = load i32*, i32** %14, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32* @vdev_to_nvlist_iter(i32* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  store i32* %108, i32** %16, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @nvlist_free(i32* %109)
  %111 = load i32*, i32** %16, align 8
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  ret i32* %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @strtoull(i8*, i8**, i32) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #2

declare dso_local i64 @zpool_vdev_is_interior(i8*) #2

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #2

declare dso_local i32* @vdev_to_nvlist_iter(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
