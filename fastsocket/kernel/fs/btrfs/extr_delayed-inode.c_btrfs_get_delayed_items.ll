; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_get_delayed_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_get_delayed_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32 }
%struct.btrfs_delayed_item = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_get_delayed_items(%struct.inode* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.btrfs_delayed_node*, align 8
  %8 = alloca %struct.btrfs_delayed_item*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.inode* %9)
  store %struct.btrfs_delayed_node* %10, %struct.btrfs_delayed_node** %7, align 8
  %11 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %7, align 8
  %12 = icmp ne %struct.btrfs_delayed_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %7, align 8
  %19 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node* %18)
  store %struct.btrfs_delayed_item* %19, %struct.btrfs_delayed_item** %8, align 8
  br label %20

20:                                               ; preds = %23, %14
  %21 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %22 = icmp ne %struct.btrfs_delayed_item* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %24, i32 0, i32 1
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %28 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %27, i32 0, i32 0
  %29 = load %struct.list_head*, %struct.list_head** %5, align 8
  %30 = call i32 @list_add_tail(i32* %28, %struct.list_head* %29)
  %31 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %32 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %31)
  store %struct.btrfs_delayed_item* %32, %struct.btrfs_delayed_item** %8, align 8
  br label %20

33:                                               ; preds = %20
  %34 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %7, align 8
  %35 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node* %34)
  store %struct.btrfs_delayed_item* %35, %struct.btrfs_delayed_item** %8, align 8
  br label %36

36:                                               ; preds = %39, %33
  %37 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %38 = icmp ne %struct.btrfs_delayed_item* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %41 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %40, i32 0, i32 1
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %43, i32 0, i32 0
  %45 = load %struct.list_head*, %struct.list_head** %6, align 8
  %46 = call i32 @list_add_tail(i32* %44, %struct.list_head* %45)
  %47 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %8, align 8
  %48 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %47)
  store %struct.btrfs_delayed_item* %48, %struct.btrfs_delayed_item** %8, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %7, align 8
  %51 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %7, align 8
  %54 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %53, i32 0, i32 0
  %55 = call i32 @atomic_dec(i32* %54)
  br label %56

56:                                               ; preds = %49, %13
  ret void
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_delayed_node(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
