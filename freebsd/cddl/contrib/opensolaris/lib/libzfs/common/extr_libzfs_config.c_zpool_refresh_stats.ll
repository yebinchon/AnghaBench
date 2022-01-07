; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_config.c_zpool_refresh_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_config.c_zpool_refresh_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i32*, i32*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_STATS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@POOL_STATE_ACTIVE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_refresh_stats(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  %16 = load i32, i32* @B_FALSE, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strcpy(i32 %19, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 65536, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @zcmd_alloc_dst_nvlist(%struct.TYPE_15__* %32, %struct.TYPE_14__* %6, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %147

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %79, %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ZFS_IOC_POOL_STATS, align 4
  %47 = call i64 @ioctl(i32 %45, i32 %46, %struct.TYPE_14__* %6)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  br label %80

52:                                               ; preds = %40
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ENOMEM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = call i64 @zcmd_expand_dst_nvlist(%struct.TYPE_15__* %57, %struct.TYPE_14__* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %6)
  store i32 -1, i32* %3, align 4
  br label %147

62:                                               ; preds = %56
  br label %79

63:                                               ; preds = %52
  %64 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %6)
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @ENOENT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @EINVAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %63
  %73 = load i32, i32* @B_TRUE, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i8*, i8** @POOL_STATE_UNAVAIL, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %147

79:                                               ; preds = %62
  br label %40

80:                                               ; preds = %49
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = call i64 @zcmd_read_dst_nvlist(%struct.TYPE_15__* %81, %struct.TYPE_14__* %6, i32** %8)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %6)
  store i32 -1, i32* %3, align 4
  br label %147

86:                                               ; preds = %80
  %87 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %6)
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %132

96:                                               ; preds = %86
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %101 = call i64 @nvlist_lookup_uint64(i32* %99, i32 %100, i64* %10)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @verify(i32 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %107 = call i64 @nvlist_lookup_uint64(i32* %105, i32 %106, i64* %11)
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @verify(i32 %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @nvlist_free(i32* %113)
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %96
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @nvlist_free(i32* %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  store i32* null, i32** %124, align 8
  br label %131

125:                                              ; preds = %96
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %125, %118
  br label %132

132:                                              ; preds = %131, %86
  %133 = load i32*, i32** %8, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  store i32* %133, i32** %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i8*, i8** @POOL_STATE_UNAVAIL, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %146

142:                                              ; preds = %132
  %143 = load i8*, i8** @POOL_STATE_ACTIVE, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %138
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %84, %75, %60, %38
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_read_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
