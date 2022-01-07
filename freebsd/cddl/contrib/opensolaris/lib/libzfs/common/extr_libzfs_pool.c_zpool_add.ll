; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot add to '%s'\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_SPARES = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"pool must be upgraded to add hot spares\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@SPA_VERSION_L2CACHE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"pool must be upgraded to add cache devices\00", align 1
@ZFS_IOC_VDEV_ADD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"one or more vdevs refer to the same device\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [87 x i8] c"invalid config; a pool with removing/removed vdevs does not support adding raidz vdevs\00", align 1
@SPA_MINDEVSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"device is less than the minimum size (%s)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"pool must be upgraded to add these vdevs\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"root pool can not have multiple vdevs or separate logs\00", align 1
@EZFS_POOL_NOTSUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"cache device must be a disk or disk slice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_add(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %20 = load i32, i32* @TEXT_DOMAIN, align 4
  %21 = call i8* @dgettext(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snprintf(i8* %19, i32 1024, i8* %21, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %28 = call i64 @zpool_get_prop_int(%struct.TYPE_8__* %26, i32 %27, i32* null)
  %29 = load i64, i64* @SPA_VERSION_SPARES, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %34 = call i64 @nvlist_lookup_nvlist_array(i32* %32, i32 %33, i32*** %10, i32* %12)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %37, i8* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @EZFS_BADVERSION, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  store i32 %44, i32* %3, align 4
  br label %152

45:                                               ; preds = %31, %2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %48 = call i64 @zpool_get_prop_int(%struct.TYPE_8__* %46, i32 %47, i32* null)
  %49 = load i64, i64* @SPA_VERSION_L2CACHE, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %54 = call i64 @nvlist_lookup_nvlist_array(i32* %52, i32 %53, i32*** %11, i32* %13)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @TEXT_DOMAIN, align 4
  %59 = call i8* @dgettext(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %57, i8* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @EZFS_BADVERSION, align 4
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %64 = call i32 @zfs_error(i32* %61, i32 %62, i8* %63)
  store i32 %64, i32* %3, align 4
  br label %152

65:                                               ; preds = %51, %45
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @zcmd_write_conf_nvlist(i32* %66, %struct.TYPE_9__* %6, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %152

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strlcpy(i32 %73, i32 %76, i32 4)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @ZFS_IOC_VDEV_ADD, align 4
  %80 = call i64 @zfs_ioctl(i32* %78, i32 %79, %struct.TYPE_9__* %6)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %148

82:                                               ; preds = %71
  %83 = load i32, i32* @errno, align 4
  switch i32 %83, label %142 [
    i32 133, label %84
    i32 131, label %93
    i32 128, label %102
    i32 129, label %115
    i32 132, label %124
    i32 130, label %133
  ]

84:                                               ; preds = %82
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @TEXT_DOMAIN, align 4
  %87 = call i8* @dgettext(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %85, i8* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @EZFS_BADDEV, align 4
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %92 = call i32 @zfs_error(i32* %89, i32 %90, i8* %91)
  br label %147

93:                                               ; preds = %82
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @TEXT_DOMAIN, align 4
  %96 = call i8* @dgettext(i32 %95, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %94, i8* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @EZFS_BADDEV, align 4
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %101 = call i32 @zfs_error(i32* %98, i32 %99, i8* %100)
  br label %147

102:                                              ; preds = %82
  %103 = load i32, i32* @SPA_MINDEVSIZE, align 4
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %105 = call i32 @zfs_nicenum(i32 %103, i8* %104, i32 64)
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @TEXT_DOMAIN, align 4
  %108 = call i8* @dgettext(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %110 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %106, i8* %108, i8* %109)
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* @EZFS_BADDEV, align 4
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %114 = call i32 @zfs_error(i32* %111, i32 %112, i8* %113)
  br label %147

115:                                              ; preds = %82
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* @TEXT_DOMAIN, align 4
  %118 = call i8* @dgettext(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %119 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %116, i8* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* @EZFS_BADVERSION, align 4
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %123 = call i32 @zfs_error(i32* %120, i32 %121, i8* %122)
  br label %147

124:                                              ; preds = %82
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @TEXT_DOMAIN, align 4
  %127 = call i8* @dgettext(i32 %126, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %128 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %125, i8* %127)
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* @EZFS_POOL_NOTSUP, align 4
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %132 = call i32 @zfs_error(i32* %129, i32 %130, i8* %131)
  br label %147

133:                                              ; preds = %82
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @TEXT_DOMAIN, align 4
  %136 = call i8* @dgettext(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %137 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %134, i8* %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* @EZFS_BADDEV, align 4
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %141 = call i32 @zfs_error(i32* %138, i32 %139, i8* %140)
  br label %147

142:                                              ; preds = %82
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* @errno, align 4
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %146 = call i32 @zpool_standard_error(i32* %143, i32 %144, i8* %145)
  br label %147

147:                                              ; preds = %142, %133, %124, %115, %102, %93, %84
  store i32 -1, i32* %7, align 4
  br label %149

148:                                              ; preds = %71
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %147
  %150 = call i32 @zcmd_free_nvlists(%struct.TYPE_9__* %6)
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %149, %70, %56, %36
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @zpool_get_prop_int(%struct.TYPE_8__*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_9__*, i32*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @zfs_nicenum(i32, i8*, i32) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
