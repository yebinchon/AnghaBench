; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_fetch_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_fetch_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_inode_info = type { i32, i32 }

@NILFS_I_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_fetch_dirty(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %5)
  store %struct.nilfs_inode_info* %6, %struct.nilfs_inode_info** %4, align 8
  %7 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @nilfs_bmap_test_and_clear_dirty(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @NILFS_I_DIRTY, align 4
  %14 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %15 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  store i32 1, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @NILFS_I_DIRTY, align 4
  %19 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @nilfs_bmap_test_and_clear_dirty(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
