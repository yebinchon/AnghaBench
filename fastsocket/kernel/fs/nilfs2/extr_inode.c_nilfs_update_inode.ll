; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode_info = type { i32 }
%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NILFS_I_NEW = common dso_local global i32 0, align 4
@NILFS_I_INODE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_update_inode(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.nilfs_sb_info*, align 8
  %9 = alloca %struct.nilfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %13)
  store %struct.nilfs_inode_info* %14, %struct.nilfs_inode_info** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %18)
  store %struct.nilfs_sb_info* %19, %struct.nilfs_sb_info** %8, align 8
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %21 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %25 = call %struct.nilfs_inode* @nilfs_ifile_map_inode(i32 %22, i32 %23, %struct.buffer_head* %24)
  store %struct.nilfs_inode* %25, %struct.nilfs_inode** %9, align 8
  %26 = load i32, i32* @NILFS_I_NEW, align 4
  %27 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %28 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %27, i32 0, i32 0
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.nilfs_inode*, %struct.nilfs_inode** %9, align 8
  %33 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %34 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_2__* @NILFS_MDT(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(%struct.nilfs_inode* %32, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %31, %2
  %41 = load i32, i32* @NILFS_I_INODE_DIRTY, align 4
  %42 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %43 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = load %struct.nilfs_inode*, %struct.nilfs_inode** %9, align 8
  %47 = call i32 @nilfs_write_inode_common(%struct.inode* %45, %struct.nilfs_inode* %46, i32 0)
  %48 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = call i32 @nilfs_ifile_unmap_inode(i32 %50, i32 %51, %struct.buffer_head* %52)
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.nilfs_inode* @nilfs_ifile_map_inode(i32, i32, %struct.buffer_head*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.nilfs_inode*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nilfs_write_inode_common(%struct.inode*, %struct.nilfs_inode*, i32) #1

declare dso_local i32 @nilfs_ifile_unmap_inode(i32, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
