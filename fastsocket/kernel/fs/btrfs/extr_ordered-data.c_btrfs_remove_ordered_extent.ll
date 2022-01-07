; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_btrfs_remove_ordered_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_btrfs_remove_ordered_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i32, %struct.rb_node }
%struct.rb_node = type { i32 }
%struct.btrfs_ordered_inode_tree = type { i32, i32, i32* }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.btrfs_ordered_inode_tree, %struct.btrfs_root* }

@BTRFS_ORDERED_COMPLETE = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_remove_ordered_extent(%struct.inode* %0, %struct.btrfs_ordered_extent* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_ordered_extent*, align 8
  %5 = alloca %struct.btrfs_ordered_inode_tree*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.btrfs_ordered_extent* %1, %struct.btrfs_ordered_extent** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_root* %11, %struct.btrfs_root** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.btrfs_ordered_inode_tree* %14, %struct.btrfs_ordered_inode_tree** %5, align 8
  %15 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %18, i32 0, i32 3
  store %struct.rb_node* %19, %struct.rb_node** %7, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %21 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %21, i32 0, i32 0
  %23 = call i32 @rb_erase(%struct.rb_node* %20, i32* %22)
  %24 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @BTRFS_ORDERED_COMPLETE, align 4
  %27 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %27, i32 0, i32 2
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %38, i32 0, i32 1
  %40 = call i32 @list_del_init(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %43 = call i32 @trace_btrfs_ordered_extent_remove(%struct.inode* %41, %struct.btrfs_ordered_extent* %42)
  %44 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %44, i32 0, i32 0
  %46 = call i64 @RB_EMPTY_ROOT(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %2
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %53 = call i32 @mapping_tagged(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @list_del_init(i32* %58)
  br label %60

60:                                               ; preds = %55, %48, %2
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %67 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %66, i32 0, i32 0
  %68 = call i32 @wake_up(i32* %67)
  ret void
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @trace_btrfs_ordered_extent_remove(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @mapping_tagged(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
