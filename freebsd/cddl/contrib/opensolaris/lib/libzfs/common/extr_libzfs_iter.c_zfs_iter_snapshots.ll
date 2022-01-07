; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_snapshots.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_snapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@ZFS_TYPE_BOOKMARK = common dso_local global i64 0, align 8
@SNAP_ITER_MIN_TXG = common dso_local global i32 0, align 4
@SNAP_ITER_MAX_TXG = common dso_local global i32 0, align 4
@ZFS_IOC_SNAPSHOT_LIST_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_snapshots(%struct.TYPE_16__* %0, i64 %1, i32 (%struct.TYPE_16__*, i8*)* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (%struct.TYPE_16__*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 (%struct.TYPE_16__*, i8*)* %2, i32 (%struct.TYPE_16__*, i8*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = bitcast %struct.TYPE_17__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  store i32* null, i32** %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZFS_TYPE_BOOKMARK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %6
  store i32 0, i32* %7, align 4
  br label %120

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @zcmd_alloc_dst_nvlist(i32 %36, %struct.TYPE_17__* %14, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %120

40:                                               ; preds = %31
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = call i32* (...) @fnvlist_alloc()
  store i32* %44, i32** %17, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* @SNAP_ITER_MIN_TXG, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @fnvlist_add_uint64(i32* %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %17, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32* (...) @fnvlist_alloc()
  store i32* %56, i32** %17, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* @SNAP_ITER_MAX_TXG, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @fnvlist_add_uint64(i32* %58, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32*, i32** %17, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i64 @zcmd_write_src_nvlist(i32 %68, %struct.TYPE_17__* %14, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = call i32 @zcmd_free_nvlists(%struct.TYPE_17__* %14)
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @fnvlist_free(i32* %74)
  store i32 -1, i32* %7, align 4
  br label %120

76:                                               ; preds = %65, %62
  br label %77

77:                                               ; preds = %108, %96, %76
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = load i32, i32* @ZFS_IOC_SNAPSHOT_LIST_NEXT, align 4
  %80 = call i32 @zfs_do_list_ioctl(%struct.TYPE_16__* %78, i32 %79, %struct.TYPE_17__* %14)
  store i32 %80, i32* %16, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = call %struct.TYPE_16__* @make_dataset_simple_handle_zc(%struct.TYPE_16__* %86, %struct.TYPE_17__* %14)
  store %struct.TYPE_16__* %87, %struct.TYPE_16__** %15, align 8
  br label %93

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_16__* @make_dataset_handle_zc(i32 %91, %struct.TYPE_17__* %14)
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %15, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %95 = icmp eq %struct.TYPE_16__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %77

97:                                               ; preds = %93
  %98 = load i32 (%struct.TYPE_16__*, i8*)*, i32 (%struct.TYPE_16__*, i8*)** %10, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 %98(%struct.TYPE_16__* %99, i8* %100)
  store i32 %101, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = call i32 @zcmd_free_nvlists(%struct.TYPE_17__* %14)
  %105 = load i32*, i32** %17, align 8
  %106 = call i32 @fnvlist_free(i32* %105)
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %7, align 4
  br label %120

108:                                              ; preds = %97
  br label %77

109:                                              ; preds = %77
  %110 = call i32 @zcmd_free_nvlists(%struct.TYPE_17__* %14)
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @fnvlist_free(i32* %111)
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %16, align 4
  br label %118

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %116, %115 ], [ 0, %117 ]
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %103, %72, %39, %30
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32, %struct.TYPE_17__*, i32) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32, %struct.TYPE_17__*, i32*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_17__*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @zfs_do_list_ioctl(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_16__* @make_dataset_simple_handle_zc(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_16__* @make_dataset_handle_zc(i32, %struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
