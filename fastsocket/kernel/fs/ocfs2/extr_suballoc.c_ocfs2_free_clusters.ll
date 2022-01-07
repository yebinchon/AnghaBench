; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_free_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_free_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"want to free %u clusters starting at block %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"bg_blkno = %llu, bg_start_bit = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_free_clusters(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 (...) @mlog_entry_void()
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @ocfs2_blocks_to_clusters(i32 %22, i64 %23)
  %25 = call i64 @ocfs2_clusters_to_blocks(i32 %19, i32 %24)
  %26 = icmp ne i64 %16, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %32, %struct.ocfs2_dinode** %14, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @ocfs2_block_to_cluster_group(%struct.inode* %33, i64 %34, i64* %13, i64* %12)
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ocfs2_free_suballoc_bits(i32* %43, %struct.inode* %44, %struct.buffer_head* %45, i64 %46, i64 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %62

55:                                               ; preds = %5
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @OCFS2_SB(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ocfs2_local_alloc_seen_free_bits(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @mlog_exit(i32 %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_block_to_cluster_group(%struct.inode*, i64, i64*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i64, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_local_alloc_seen_free_bits(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
