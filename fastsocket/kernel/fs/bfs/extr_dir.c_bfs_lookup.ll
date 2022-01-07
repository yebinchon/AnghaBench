; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_dirent = type { i32 }
%struct.bfs_sb_info = type { i32 }

@BFS_NAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @bfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @bfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.bfs_dirent*, align 8
  %11 = alloca %struct.bfs_sb_info*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bfs_sb_info* @BFS_SB(i32 %15)
  store %struct.bfs_sb_info* %16, %struct.bfs_sb_info** %11, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BFS_NAMELEN, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ENAMETOOLONG, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dentry* @ERR_PTR(i32 %25)
  store %struct.dentry* %26, %struct.dentry** %4, align 8
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %29 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %31, i32 %35, i64 %39, %struct.bfs_dirent** %10)
  store %struct.buffer_head* %40, %struct.buffer_head** %9, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %27
  %44 = load %struct.bfs_dirent*, %struct.bfs_dirent** %10, align 8
  %45 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %12, align 8
  %54 = call %struct.inode* @bfs_iget(i32 %52, i64 %53)
  store %struct.inode* %54, %struct.inode** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i64 @IS_ERR(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %60 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = call %struct.dentry* @ERR_CAST(%struct.inode* %62)
  store %struct.dentry* %63, %struct.dentry** %4, align 8
  br label %72

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %11, align 8
  %67 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i32 @d_add(%struct.dentry* %69, %struct.inode* %70)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %72

72:                                               ; preds = %65, %58, %23
  %73 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %73
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bfs_find_entry(%struct.inode*, i32, i64, %struct.bfs_dirent**) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.inode* @bfs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
