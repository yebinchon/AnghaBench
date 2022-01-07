; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_inode_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_inode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_inode_info = type { i32, i32 }
%struct.nilfs_sb_info = type { i32 }

@NILFS_I_DIRTY = common dso_local global i32 0, align 4
@NILFS_I_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_inode_dirty(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_inode_info*, align 8
  %4 = alloca %struct.nilfs_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %6)
  store %struct.nilfs_inode_info* %7, %struct.nilfs_inode_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nilfs_sb_info* @NILFS_SB(i32 %10)
  store %struct.nilfs_sb_info* %11, %struct.nilfs_sb_info** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %13 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %1
  %17 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @NILFS_I_DIRTY, align 4
  %21 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %22 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @NILFS_I_BUSY, align 4
  %27 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %28 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %16
  %32 = phi i1 [ true, %16 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %35 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
