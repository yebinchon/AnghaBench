; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcounted_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_add_refcounted_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32, i32, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_add_refcounted_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_refcounted_extent(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.ocfs2_cached_dealloc_ctxt* %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca %struct.ocfs2_caching_info*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ocfs2_super*, align 8
  %23 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %8, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %22, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %23, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %34 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %36 = call i32 @ocfs2_lock_refcount_allocators(i32 %30, i32 %31, i32 %32, %struct.ocfs2_extent_tree* %33, %struct.ocfs2_caching_info* %34, %struct.buffer_head* %35, %struct.ocfs2_alloc_context** %23, i32* null, i32* %21)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %9
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %92

42:                                               ; preds = %9
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %44 = load i32, i32* %21, align 4
  %45 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %43, i32 %44)
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %92

54:                                               ; preds = %42
  %55 = load i32*, i32** %20, align 8
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @ocfs2_clusters_to_blocks(i32 %60, i32 %61)
  %63 = call i32 @cpu_to_le64(i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %67 = call i32 @ocfs2_insert_extent(i32* %55, %struct.ocfs2_extent_tree* %56, i32 %57, i32 %63, i32 %64, i32 %65, %struct.ocfs2_alloc_context* %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %88

73:                                               ; preds = %54
  %74 = load i32*, i32** %20, align 8
  %75 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %12, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %80 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %81 = call i32 @ocfs2_increase_refcount(i32* %74, %struct.ocfs2_caching_info* %75, %struct.buffer_head* %76, i32 %77, i32 %78, %struct.ocfs2_alloc_context* %79, %struct.ocfs2_cached_dealloc_ctxt* %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %87

87:                                               ; preds = %84, %73
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %89, i32* %90)
  br label %92

92:                                               ; preds = %88, %49, %39
  %93 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %94 = icmp ne %struct.ocfs2_alloc_context* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %23, align 8
  %97 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %19, align 4
  ret i32 %99
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_allocators(i32, i32, i32, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_alloc_context**, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_increase_refcount(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
