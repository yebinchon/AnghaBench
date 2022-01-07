; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_delayed_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_delayed_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delayed_update_inode(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_delayed_node*, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = call %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(%struct.inode* %10)
  store %struct.btrfs_delayed_node* %11, %struct.btrfs_delayed_node** %8, align 8
  %12 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %13 = call i64 @IS_ERR(%struct.btrfs_delayed_node* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.btrfs_delayed_node* %16)
  store i32 %17, i32* %4, align 4
  br label %67

18:                                               ; preds = %3
  %19 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %20 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %23 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %28 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %28, i32 0, i32 3
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @fill_stack_inode_item(%struct.btrfs_trans_handle* %27, i32* %29, %struct.inode* %30)
  br label %60

32:                                               ; preds = %18
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %37 = call i32 @btrfs_delayed_inode_reserve_metadata(%struct.btrfs_trans_handle* %33, %struct.btrfs_root* %34, %struct.inode* %35, %struct.btrfs_delayed_node* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %60

41:                                               ; preds = %32
  %42 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %43 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %43, i32 0, i32 3
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @fill_stack_inode_item(%struct.btrfs_trans_handle* %42, i32* %44, %struct.inode* %45)
  %47 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %50 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @atomic_inc(i32* %58)
  br label %60

60:                                               ; preds = %41, %40, %26
  %61 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %62 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %65 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fill_stack_inode_item(%struct.btrfs_trans_handle*, i32*, %struct.inode*) #1

declare dso_local i32 @btrfs_delayed_inode_reserve_metadata(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, %struct.btrfs_delayed_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
