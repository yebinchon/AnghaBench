; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_add_delayed_iput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_add_delayed_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.delayed_iput = type { i32, %struct.inode* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_add_delayed_iput(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.delayed_iput*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = call i64 @atomic_add_unless(i32* %12, i32 -1, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = load i32, i32* @__GFP_NOFAIL, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.delayed_iput* @kmalloc(i32 16, i32 %19)
  store %struct.delayed_iput* %20, %struct.delayed_iput** %4, align 8
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = load %struct.delayed_iput*, %struct.delayed_iput** %4, align 8
  %23 = getelementptr inbounds %struct.delayed_iput, %struct.delayed_iput* %22, i32 0, i32 1
  store %struct.inode* %21, %struct.inode** %23, align 8
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.delayed_iput*, %struct.delayed_iput** %4, align 8
  %28 = getelementptr inbounds %struct.delayed_iput, %struct.delayed_iput* %27, i32 0, i32 0
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  br label %35

35:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local %struct.delayed_iput* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
