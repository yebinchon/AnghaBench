; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c___btrfs_kill_delayed_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c___btrfs_kill_delayed_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_node = type { i32, i64, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_delayed_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_delayed_node*)* @__btrfs_kill_delayed_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__btrfs_kill_delayed_node(%struct.btrfs_delayed_node* %0) #0 {
  %2 = alloca %struct.btrfs_delayed_node*, align 8
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_delayed_item*, align 8
  %5 = alloca %struct.btrfs_delayed_item*, align 8
  store %struct.btrfs_delayed_node* %0, %struct.btrfs_delayed_node** %2, align 8
  %6 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %6, i32 0, i32 2
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_root* %8, %struct.btrfs_root** %3, align 8
  %9 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %13 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node* %12)
  store %struct.btrfs_delayed_item* %13, %struct.btrfs_delayed_item** %4, align 8
  br label %14

14:                                               ; preds = %17, %1
  %15 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %4, align 8
  %16 = icmp ne %struct.btrfs_delayed_item* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %19 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %4, align 8
  %20 = call i32 @btrfs_delayed_item_release_metadata(%struct.btrfs_root* %18, %struct.btrfs_delayed_item* %19)
  %21 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %4, align 8
  store %struct.btrfs_delayed_item* %21, %struct.btrfs_delayed_item** %5, align 8
  %22 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %23 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %22)
  store %struct.btrfs_delayed_item* %23, %struct.btrfs_delayed_item** %4, align 8
  %24 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %25 = call i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item* %24)
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %28 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node* %27)
  store %struct.btrfs_delayed_item* %28, %struct.btrfs_delayed_item** %4, align 8
  br label %29

29:                                               ; preds = %32, %26
  %30 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %4, align 8
  %31 = icmp ne %struct.btrfs_delayed_item* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %34 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %4, align 8
  %35 = call i32 @btrfs_delayed_item_release_metadata(%struct.btrfs_root* %33, %struct.btrfs_delayed_item* %34)
  %36 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %4, align 8
  store %struct.btrfs_delayed_item* %36, %struct.btrfs_delayed_item** %5, align 8
  %37 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %38 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %37)
  store %struct.btrfs_delayed_item* %38, %struct.btrfs_delayed_item** %4, align 8
  %39 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %40 = call i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item* %39)
  br label %29

41:                                               ; preds = %29
  %42 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %48 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %49 = call i32 @btrfs_delayed_inode_release_metadata(%struct.btrfs_root* %47, %struct.btrfs_delayed_node* %48)
  %50 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %51 = call i32 @btrfs_release_delayed_inode(%struct.btrfs_delayed_node* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %54 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_delayed_item_release_metadata(%struct.btrfs_root*, %struct.btrfs_delayed_item*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item*) #1

declare dso_local i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_delayed_inode_release_metadata(%struct.btrfs_root*, %struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_release_delayed_inode(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
