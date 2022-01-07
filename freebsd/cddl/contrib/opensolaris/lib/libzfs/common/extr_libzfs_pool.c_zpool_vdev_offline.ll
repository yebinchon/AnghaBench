; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_offline.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot offline %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@VDEV_STATE_OFFLINE = common dso_local global i32 0, align 4
@ZFS_OFFLINE_TEMPORARY = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_SET_STATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_NOREPLICAS = common dso_local global i32 0, align 4
@EZFS_UNPLAYED_LOGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_offline(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* @TEXT_DOMAIN, align 4
  %20 = call i8* @dgettext(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @snprintf(i8* %18, i32 1024, i8* %20, i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strlcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32* @zpool_find_vdev(%struct.TYPE_6__* %29, i8* %30, i64* %11, i64* %12, i32* null)
  store i32* %31, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @EZFS_NODEVICE, align 4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %37 = call i32 @zfs_error(i32* %34, i32 %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %86

38:                                               ; preds = %3
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %42 = call i64 @nvlist_lookup_uint64(i32* %39, i32 %40, i32* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @verify(i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* @EZFS_ISSPARE, align 4
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %52 = call i32 @zfs_error(i32* %49, i32 %50, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %86

53:                                               ; preds = %38
  %54 = load i32, i32* @VDEV_STATE_OFFLINE, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @ZFS_OFFLINE_TEMPORARY, align 4
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @ZFS_IOC_VDEV_SET_STATE, align 4
  %66 = call i64 @zfs_ioctl(i32* %64, i32 %65, %struct.TYPE_7__* %8)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %86

69:                                               ; preds = %61
  %70 = load i32, i32* @errno, align 4
  switch i32 %70, label %81 [
    i32 129, label %71
    i32 128, label %76
  ]

71:                                               ; preds = %69
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* @EZFS_NOREPLICAS, align 4
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %75 = call i32 @zfs_error(i32* %72, i32 %73, i8* %74)
  store i32 %75, i32* %4, align 4
  br label %86

76:                                               ; preds = %69
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* @EZFS_UNPLAYED_LOGS, align 4
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %80 = call i32 @zfs_error(i32* %77, i32 %78, i8* %79)
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %69
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %85 = call i32 @zpool_standard_error(i32* %82, i32 %83, i8* %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %76, %71, %68, %48, %33
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_6__*, i8*, i64*, i64*, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
