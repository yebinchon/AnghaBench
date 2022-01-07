; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_destroy_delayed_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_destroy_delayed_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_delayed_root = type { i32 }
%struct.btrfs_delayed_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_destroy_delayed_inodes(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_delayed_root*, align 8
  %4 = alloca %struct.btrfs_delayed_node*, align 8
  %5 = alloca %struct.btrfs_delayed_node*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %7 = call %struct.btrfs_delayed_root* @btrfs_get_delayed_root(%struct.btrfs_root* %6)
  store %struct.btrfs_delayed_root* %7, %struct.btrfs_delayed_root** %3, align 8
  %8 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %9 = call %struct.btrfs_delayed_node* @btrfs_first_delayed_node(%struct.btrfs_delayed_root* %8)
  store %struct.btrfs_delayed_node* %9, %struct.btrfs_delayed_node** %4, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %12 = icmp ne %struct.btrfs_delayed_node* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %15 = call i32 @__btrfs_kill_delayed_node(%struct.btrfs_delayed_node* %14)
  %16 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  store %struct.btrfs_delayed_node* %16, %struct.btrfs_delayed_node** %5, align 8
  %17 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %4, align 8
  %18 = call %struct.btrfs_delayed_node* @btrfs_next_delayed_node(%struct.btrfs_delayed_node* %17)
  store %struct.btrfs_delayed_node* %18, %struct.btrfs_delayed_node** %4, align 8
  %19 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %20 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %19)
  br label %10

21:                                               ; preds = %10
  ret void
}

declare dso_local %struct.btrfs_delayed_root* @btrfs_get_delayed_root(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_delayed_node* @btrfs_first_delayed_node(%struct.btrfs_delayed_root*) #1

declare dso_local i32 @__btrfs_kill_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local %struct.btrfs_delayed_node* @btrfs_next_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
