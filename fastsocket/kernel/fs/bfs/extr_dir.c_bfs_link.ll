; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bfs_sb_info = type { i32 }

@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @bfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.bfs_sb_info*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bfs_sb_info* @BFS_SB(i32 %16)
  store %struct.bfs_sb_info* %17, %struct.bfs_sb_info** %9, align 8
  %18 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %19 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bfs_add_entry(%struct.inode* %21, i32 %25, i32 %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %38 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %3
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @inc_nlink(%struct.inode* %42)
  %44 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @mark_inode_dirty(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @d_instantiate(%struct.dentry* %52, %struct.inode* %53)
  %55 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %56 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %41, %36
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bfs_add_entry(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
