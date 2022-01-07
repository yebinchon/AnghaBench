; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.dentry = type { %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_dirent = type { i64 }
%struct.bfs_sb_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unlinking non-existent file %s:%lu (nlink=%d)\0A\00", align 1
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @bfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.bfs_dirent*, align 8
  %9 = alloca %struct.bfs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_4__* %17)
  store %struct.bfs_sb_info* %18, %struct.bfs_sb_info** %9, align 8
  %19 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %20 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %22, i32 %26, i32 %30, %struct.bfs_dirent** %8)
  store %struct.buffer_head* %31, %struct.buffer_head** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %36 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @le16_to_cpu(i64 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %2
  br label %84

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %54, i64 %57, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %49, %44
  %65 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %66 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %67, %struct.inode* %68)
  %70 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i32 @mark_inode_dirty(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i32 @inode_dec_link_count(%struct.inode* %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %64, %43
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  %87 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %88 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bfs_find_entry(%struct.inode*, i32, i32, %struct.bfs_dirent**) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
