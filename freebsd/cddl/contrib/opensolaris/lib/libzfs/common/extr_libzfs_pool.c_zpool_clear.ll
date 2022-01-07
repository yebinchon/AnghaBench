; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot clear errors for %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZFS_IOC_CLEAR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ZPOOL_TRY_REWIND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_clear(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %25 = load i32, i32* @TEXT_DOMAIN, align 4
  %26 = call i8* @dgettext(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @snprintf(i8* %24, i32 1024, i8* %26, i8* %27)
  br label %37

29:                                               ; preds = %3
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i8* @dgettext(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %30, i32 1024, i8* %32, i8* %35)
  br label %37

37:                                               ; preds = %29, %23
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlcpy(i32 %39, i8* %42, i32 4)
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %37
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32* @zpool_find_vdev(%struct.TYPE_14__* %47, i8* %48, i64* %12, i64* %13, i32* null)
  store i32* %49, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @EZFS_NODEVICE, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %55 = call i32 @zfs_error(i32* %52, i32 %53, i8* %54)
  store i32 %55, i32* %4, align 4
  br label %160

56:                                               ; preds = %46
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* @EZFS_ISSPARE, align 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %63 = call i32 @zfs_error(i32* %60, i32 %61, i8* %62)
  store i32 %63, i32* %4, align 4
  br label %160

64:                                               ; preds = %56
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %68 = call i64 @nvlist_lookup_uint64(i32* %65, i32 %66, i32* %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @verify(i32 %70)
  br label %72

72:                                               ; preds = %64, %37
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @zpool_get_load_policy(i32* %73, %struct.TYPE_13__* %11)
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 2
  %83 = call i64 @zcmd_alloc_dst_nvlist(i32* %78, %struct.TYPE_15__* %8, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %160

86:                                               ; preds = %72
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @zcmd_write_src_nvlist(i32* %87, %struct.TYPE_15__* %8, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %160

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %110, %92
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* @ZFS_IOC_CLEAR, align 4
  %96 = call i32 @zfs_ioctl(i32* %94, i32 %95, %struct.TYPE_15__* %8)
  store i32 %96, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @ENOMEM, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i1 [ false, %93 ], [ %101, %98 ]
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = load i32*, i32** %14, align 8
  %106 = call i64 @zcmd_expand_dst_nvlist(i32* %105, %struct.TYPE_15__* %8)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @zcmd_free_nvlists(%struct.TYPE_15__* %8)
  store i32 -1, i32* %4, align 4
  br label %160

110:                                              ; preds = %104
  br label %93

111:                                              ; preds = %102
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %114
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @EPERM, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @EACCES, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %154

128:                                              ; preds = %124, %111
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %132 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %128
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @zcmd_read_dst_nvlist(i32* %137, %struct.TYPE_15__* %8, i32** %15)
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @zpool_rewind_exclaim(i32* %139, i32 %141, i32 %147, i32* %148)
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @nvlist_free(i32* %150)
  br label %152

152:                                              ; preds = %136, %128
  %153 = call i32 @zcmd_free_nvlists(%struct.TYPE_15__* %8)
  store i32 0, i32* %4, align 4
  br label %160

154:                                              ; preds = %124, %120, %114
  %155 = call i32 @zcmd_free_nvlists(%struct.TYPE_15__* %8)
  %156 = load i32*, i32** %14, align 8
  %157 = load i64, i64* @errno, align 8
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %159 = call i32 @zpool_standard_error(i32* %156, i64 %157, i8* %158)
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %154, %152, %108, %91, %85, %59, %51
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_14__*, i8*, i64*, i64*, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_13__*) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_15__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_15__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_15__*, i32**) #2

declare dso_local i32 @zpool_rewind_exclaim(i32*, i32, i32, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zpool_standard_error(i32*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
