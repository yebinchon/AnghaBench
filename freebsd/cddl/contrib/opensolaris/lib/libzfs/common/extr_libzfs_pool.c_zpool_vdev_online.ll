; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_online.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32 }

@ZFS_ONLINE_EXPAND = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot expand %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot online %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOEXPAND = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot expand cache devices\00", align 1
@EZFS_VDEVNOTSUP = common dso_local global i32 0, align 4
@ZFS_DISK_ROOT = common dso_local global i32 0, align 4
@VDEV_STATE_ONLINE = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_SET_STATE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"was split from this pool into a new one.  Use '%s' instead\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"zpool detach\00", align 1
@EZFS_POSTSPLIT_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_online(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %17, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i8* @dgettext(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @snprintf(i8* %28, i32 1024, i8* %30, i8* %31)
  br label %39

33:                                               ; preds = %4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %35 = load i32, i32* @TEXT_DOMAIN, align 4
  %36 = call i8* @dgettext(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @snprintf(i8* %34, i32 1024, i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlcpy(i32 %41, i32 %44, i32 4)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32* @zpool_find_vdev(%struct.TYPE_7__* %46, i8* %47, i64* %14, i64* %15, i64* %16)
  store i32* %48, i32** %13, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* @EZFS_NODEVICE, align 4
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %54 = call i32 @zfs_error(i32* %51, i32 %52, i8* %53)
  store i32 %54, i32* %5, align 4
  br label %144

55:                                               ; preds = %39
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %59 = call i64 @nvlist_lookup_uint64(i32* %56, i32 %57, i64* %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @verify(i32 %61)
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* @EZFS_ISSPARE, align 4
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %69 = call i32 @zfs_error(i32* %66, i32 %67, i8* %68)
  store i32 %69, i32* %5, align 4
  br label %144

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = load i32, i32* @ZPOOL_PROP_AUTOEXPAND, align 4
  %78 = call i64 @zpool_get_prop_int(%struct.TYPE_7__* %76, i32 %77, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %75, %70
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %83 = call i64 @nvlist_lookup_string(i32* %81, i32 %82, i8** %12)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %80
  store i64 0, i64* %18, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %88 = call i64 @nvlist_lookup_uint64(i32* %86, i32 %87, i64* %18)
  %89 = load i64, i64* %15, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* @TEXT_DOMAIN, align 4
  %94 = call i8* @dgettext(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %92, i8* %94)
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* @EZFS_VDEVNOTSUP, align 4
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %99 = call i32 @zfs_error(i32* %96, i32 %97, i8* %98)
  store i32 %99, i32* %5, align 4
  br label %144

100:                                              ; preds = %85
  %101 = load i64, i64* %18, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* @ZFS_DISK_ROOT, align 4
  %105 = call i64 @strlen(i32 %104)
  %106 = add nsw i64 %105, 1
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8* %108, i8** %12, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @zpool_relabel_disk(i32* %109, i8* %110)
  br label %112

112:                                              ; preds = %103, %100
  br label %113

113:                                              ; preds = %112, %80, %75
  %114 = load i32, i32* @VDEV_STATE_ONLINE, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load i32, i32* @ZFS_IOC_VDEV_SET_STATE, align 4
  %120 = call i64 @zfs_ioctl(i32* %118, i32 %119, %struct.TYPE_8__* %10)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %113
  %123 = load i64, i64* @errno, align 8
  %124 = load i64, i64* @EINVAL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i32*, i32** %17, align 8
  %128 = load i32, i32* @TEXT_DOMAIN, align 4
  %129 = call i8* @dgettext(i32 %128, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %127, i8* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* @EZFS_POSTSPLIT_ONLINE, align 4
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %134 = call i32 @zfs_error(i32* %131, i32 %132, i8* %133)
  store i32 %134, i32* %5, align 4
  br label %144

135:                                              ; preds = %122
  %136 = load i32*, i32** %17, align 8
  %137 = load i64, i64* @errno, align 8
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %139 = call i32 @zpool_standard_error(i32* %136, i64 %137, i8* %138)
  store i32 %139, i32* %5, align 4
  br label %144

140:                                              ; preds = %113
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %135, %126, %91, %65, %50
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_7__*, i8*, i64*, i64*, i64*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i64 @zpool_get_prop_int(%struct.TYPE_7__*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @zpool_relabel_disk(i32*, i8*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
