; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_import_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_import_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32* null, align 8
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@space_delta_cb = common dso_local global i32 0, align 4
@g_readonly = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@g_importargs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@g_pool = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"cannot import '%s': pool is active; run \22zpool export %s\22 first\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"cannot import '%s': no such pool available\0A\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@zfeature_checks_disable = common dso_local global i8* null, align 8
@ZFS_IMPORT_NORMAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"can't import '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @import_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_pool(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FREAD, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @FREAD, align 4
  %19 = load i32, i32* @FWRITE, align 4
  %20 = or i32 %18, %19
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  %23 = call i32 @kernel_init(i32 %22)
  %24 = call i32* (...) @libzfs_init()
  store i32* %24, i32** @g_zfs, align 8
  %25 = load i32*, i32** @g_zfs, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @DMU_OST_ZFS, align 4
  %30 = load i32, i32* @space_delta_cb, align 4
  %31 = call i32 @dmu_objset_register_type(i32 %29, i32 %30)
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** @g_readonly, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i64 @spa_open(i8* %36, i32** %9, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @spa_close(i32* %41, i32 %42)
  br label %131

44:                                               ; preds = %35, %21
  %45 = load i8*, i8** @B_TRUE, align 8
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_importargs, i32 0, i32 2), align 8
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_importargs, i32 0, i32 1), align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i8* @strdup(i8* %47)
  store i8* %48, i8** @g_pool, align 8
  %49 = load i8*, i8** @g_pool, align 8
  %50 = call i8* @strpbrk(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i8*, i8** @g_pool, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_importargs, i32 0, i32 0), align 8
  %56 = load i32*, i32** @g_zfs, align 8
  %57 = call i32* @zpool_search_import(i32* %56, %struct.TYPE_3__* @g_importargs)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @nvlist_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %54
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_importargs, i32 0, i32 1), align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @B_TRUE, align 8
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_importargs, i32 0, i32 1), align 8
  %66 = load i32*, i32** @g_zfs, align 8
  %67 = call i32* @zpool_search_import(i32* %66, %struct.TYPE_3__* @g_importargs)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* @FTAG, align 4
  %72 = call i64 @spa_open(i8* %70, i32** %9, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69, %64
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @FTAG, align 4
  %77 = load i8*, i8** @g_pool, align 8
  %78 = load i8*, i8** @g_pool, align 8
  %79 = call i32 (i32*, i32, i8*, i8*, ...) @fatal(i32* %75, i32 %76, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %74, %69
  br label %81

81:                                               ; preds = %80, %61
  %82 = load i32, i32* @FTAG, align 4
  %83 = load i8*, i8** @g_pool, align 8
  %84 = call i32 (i32*, i32, i8*, i8*, ...) @fatal(i32* null, i32 %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %54
  %86 = load i32*, i32** %6, align 8
  %87 = call i32* @nvlist_next_nvpair(i32* %86, i32* null)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i8* @nvpair_name(i32* %88)
  store i8* %89, i8** %12, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i64 @nvpair_value_nvlist(i32* %90, i32** %5)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @verify(i32 %93)
  store i32* null, i32** %11, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %85
  %98 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %99 = call i64 @nvlist_alloc(i32** %11, i32 %98, i32 0)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @verify(i32 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %105 = call i32 @zpool_prop_to_name(i32 %104)
  %106 = call i64 @nvlist_add_uint64(i32* %103, i32 %105, i32 1)
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @verify(i32 %108)
  br label %110

110:                                              ; preds = %97, %85
  %111 = load i8*, i8** @B_TRUE, align 8
  store i8* %111, i8** @zfeature_checks_disable, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* @ZFS_IMPORT_NORMAL, align 4
  %116 = call i32 @spa_import(i8* %112, i32* %113, i32* %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** @B_FALSE, align 8
  store i8* %117, i8** @zfeature_checks_disable, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @EEXIST, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %121, %110
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @FTAG, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i8* @strerror(i32 %128)
  %130 = call i32 (i32*, i32, i8*, i8*, ...) @fatal(i32* null, i32 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %129)
  br label %131

131:                                              ; preds = %40, %125, %122
  ret void
}

declare dso_local i32 @kernel_init(i32) #1

declare dso_local i32* @libzfs_init(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_objset_register_type(i32, i32) #1

declare dso_local i64 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32* @zpool_search_import(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local i32 @fatal(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @spa_import(i8*, i32*, i32*, i32) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
