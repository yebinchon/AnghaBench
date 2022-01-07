; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_orphan_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_orphan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@BTRFS_INODE_HAS_ORPHAN_ITEM = common dso_local global i32 0, align 4
@BTRFS_INODE_ORPHAN_META_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_orphan_del(%struct.btrfs_trans_handle* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_root* %12, %struct.btrfs_root** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @BTRFS_INODE_HAS_ORPHAN_ITEM, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @test_and_clear_bit(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @BTRFS_INODE_ORPHAN_META_RESERVED, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @test_and_clear_bit(i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %36 = icmp ne %struct.btrfs_trans_handle* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @btrfs_ino(%struct.inode* %43)
  %45 = call i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle* %41, %struct.btrfs_root* %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @BUG_ON(i32 %46)
  br label %48

48:                                               ; preds = %40, %37, %31
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @btrfs_orphan_release_metadata(%struct.inode* %52)
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %54, i32 0, i32 0
  %56 = call i32 @atomic_dec(i32* %55)
  br label %57

57:                                               ; preds = %51, %48
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_orphan_release_metadata(%struct.inode*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
