; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@ZFS_IOC_POOL_SCAN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@POOL_SCAN_SCRUB = common dso_local global i64 0, align 8
@POOL_SCRUB_NORMAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@POOL_SCRUB_PAUSE = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot pause scrubbing %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cannot scrub %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot cancel scrubbing %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"unexpected result\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SCAN_STATS = common dso_local global i32 0, align 4
@EZFS_SCRUB_PAUSED = common dso_local global i32 0, align 4
@EZFS_SCRUBBING = common dso_local global i32 0, align 4
@EZFS_RESILVERING = common dso_local global i32 0, align 4
@EZFS_NO_SCRUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_scan(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @ZFS_IOC_POOL_SCAN, align 4
  %31 = call i64 @zfs_ioctl(i32* %29, i32 %30, %struct.TYPE_7__* %8)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %161

34:                                               ; preds = %3
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ECANCELED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %161

48:                                               ; preds = %43, %39, %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @POOL_SCAN_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %161

61:                                               ; preds = %56, %52, %48
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %71 = load i32, i32* @TEXT_DOMAIN, align 4
  %72 = call i8* @dgettext(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snprintf(i8* %70, i32 1024, i8* %72, i32 %74)
  br label %88

76:                                               ; preds = %65
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %83 = load i32, i32* @TEXT_DOMAIN, align 4
  %84 = call i8* @dgettext(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @snprintf(i8* %82, i32 1024, i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %76, %69
  br label %103

89:                                               ; preds = %61
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @POOL_SCAN_NONE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %95 = load i32, i32* @TEXT_DOMAIN, align 4
  %96 = call i8* @dgettext(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snprintf(i8* %94, i32 1024, i8* %96, i32 %98)
  br label %102

100:                                              ; preds = %89
  %101 = call i32 @assert(i32 0)
  br label %102

102:                                              ; preds = %100, %93
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @EBUSY, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %103
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %112 = call i64 @nvlist_lookup_nvlist(i32 %110, i32 %111, i32** %12)
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @verify(i32 %114)
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* @ZPOOL_CONFIG_SCAN_STATS, align 4
  %118 = bitcast %struct.TYPE_8__** %13 to i32**
  %119 = call i32 @nvlist_lookup_uint64_array(i32* %116, i32 %117, i32** %118, i32* %14)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %121 = icmp ne %struct.TYPE_8__* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %107
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* @EZFS_SCRUB_PAUSED, align 4
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %136 = call i32 @zfs_error(i32* %133, i32 %134, i8* %135)
  store i32 %136, i32* %4, align 4
  br label %161

137:                                              ; preds = %128
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* @EZFS_SCRUBBING, align 4
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %141 = call i32 @zfs_error(i32* %138, i32 %139, i8* %140)
  store i32 %141, i32* %4, align 4
  br label %161

142:                                              ; preds = %122, %107
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* @EZFS_RESILVERING, align 4
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %146 = call i32 @zfs_error(i32* %143, i32 %144, i8* %145)
  store i32 %146, i32* %4, align 4
  br label %161

147:                                              ; preds = %103
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @ENOENT, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* @EZFS_NO_SCRUB, align 4
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %155 = call i32 @zfs_error(i32* %152, i32 %153, i8* %154)
  store i32 %155, i32* %4, align 4
  br label %161

156:                                              ; preds = %147
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %10, align 4
  %159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %160 = call i32 @zpool_standard_error(i32* %157, i32 %158, i8* %159)
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %151, %142, %137, %132, %60, %47, %33
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #2

declare dso_local i32 @nvlist_lookup_uint64_array(i32*, i32, i32**, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
