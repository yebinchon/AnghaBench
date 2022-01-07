; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_inode_delayed_dir_index_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_inode_delayed_dir_index_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_delayed_node = type { i64 }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_inode_delayed_dir_index_count(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_delayed_node*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.inode* %5)
  store %struct.btrfs_delayed_node* %6, %struct.btrfs_delayed_node** %4, align 8
  %7 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %8 = icmp ne %struct.btrfs_delayed_node* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %19 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %12
  %23 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %30 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %17, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.inode*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
