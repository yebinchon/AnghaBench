; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_clear_ext_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_clear_ext_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { i32 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"inode %llu cpos %u, len %u, p_cluster %u, ext_flags %u\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Inode %llu has an extent at cpos %u which can no longer be found.\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_clear_ext_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_clear_ext_refcount(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_cached_dealloc_ctxt* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_extent_rec, align 4
  %20 = alloca %struct.ocfs2_path*, align 8
  %21 = alloca %struct.ocfs2_extent_list*, align 8
  %22 = alloca %struct.super_block*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %20, align 8
  %24 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %26)
  store %struct.super_block* %27, %struct.super_block** %22, align 8
  %28 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ocfs2_metadata_cache_owner(i32 %30)
  store i64 %31, i64* %23, align 8
  %32 = load i64, i64* %23, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = call i32 @memset(%struct.ocfs2_extent_rec* %19, i32 0, i32 16)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.super_block*, %struct.super_block** %22, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %45, i32 %46)
  %48 = call i32 @cpu_to_le64(i32 %47)
  %49 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %58 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %57)
  store %struct.ocfs2_path* %58, %struct.ocfs2_path** %20, align 8
  %59 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %60 = icmp ne %struct.ocfs2_path* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %114

66:                                               ; preds = %8
  %67 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ocfs2_find_path(i32 %69, %struct.ocfs2_path* %70, i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %114

78:                                               ; preds = %66
  %79 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %80 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %79)
  store %struct.ocfs2_extent_list* %80, %struct.ocfs2_extent_list** %21, align 8
  %81 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %81, i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %93, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = icmp sge i32 %87, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86, %78
  %94 = load %struct.super_block*, %struct.super_block** %22, align 8
  %95 = load i64, i64* %23, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @ocfs2_error(%struct.super_block* %94, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %95, i32 %96)
  %98 = load i32, i32* @EROFS, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %17, align 4
  br label %114

100:                                              ; preds = %86
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %106 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %107 = call i32 @ocfs2_split_extent(i32* %101, %struct.ocfs2_extent_tree* %102, %struct.ocfs2_path* %103, i32 %104, %struct.ocfs2_extent_rec* %19, %struct.ocfs2_alloc_context* %105, %struct.ocfs2_cached_dealloc_ctxt* %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %113

113:                                              ; preds = %110, %100
  br label %114

114:                                              ; preds = %113, %93, %75, %61
  %115 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %116 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %115)
  %117 = load i32, i32* %17, align 4
  ret i32 %117
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i32) #1

declare dso_local i32 @ocfs2_split_extent(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
