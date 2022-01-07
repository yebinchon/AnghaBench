; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_extent_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_extent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_duplicate_extent_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_duplicate_extent_list(%struct.inode* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_caching_info* %3, %struct.buffer_head* %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_caching_info* %3, %struct.ocfs2_caching_info** %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i32 @INODE_CACHE(%struct.inode* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %24 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %20, i32 %22, %struct.buffer_head* %23)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @i_size_read(%struct.inode* %25)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %18, align 4
  %31 = call i64 @ocfs2_clusters_for_bytes(i32 %29, i32 %30)
  store i64 %31, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %32

32:                                               ; preds = %58, %6
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i32 @ocfs2_get_clusters(%struct.inode* %37, i64 %38, i64* %14, i64* %15, i32* %19)
  store i32 %39, i32* %13, align 4
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %51 = call i32 @ocfs2_add_refcounted_extent(%struct.inode* %43, %struct.ocfs2_extent_tree* %20, %struct.ocfs2_caching_info* %44, %struct.buffer_head* %45, i64 %46, i64 %47, i64 %48, i32 %49, %struct.ocfs2_cached_dealloc_ctxt* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %63

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %17, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %17, align 8
  br label %32

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @ocfs2_add_refcounted_extent(%struct.inode*, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i64, i64, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
