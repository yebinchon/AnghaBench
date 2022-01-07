; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c___btrfs_add_ordered_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c___btrfs_add_ordered_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_ordered_inode_tree = type { i32, i32 }
%struct.rb_node = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.btrfs_ordered_inode_tree }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ORDERED_IO_DONE = common dso_local global i32 0, align 4
@BTRFS_ORDERED_COMPLETE = common dso_local global i32 0, align 4
@BTRFS_ORDERED_DIRECT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i8*, i8*, i32, i32, i32)* @__btrfs_add_ordered_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_add_ordered_extent(%struct.inode* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_ordered_inode_tree*, align 8
  %19 = alloca %struct.rb_node*, align 8
  %20 = alloca %struct.btrfs_ordered_extent*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.btrfs_ordered_inode_tree* %23, %struct.btrfs_ordered_inode_tree** %18, align 8
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.btrfs_ordered_extent* @kzalloc(i32 72, i32 %24)
  store %struct.btrfs_ordered_extent* %25, %struct.btrfs_ordered_extent** %20, align 8
  %26 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %27 = icmp ne %struct.btrfs_ordered_extent* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %137

31:                                               ; preds = %8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %34 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %37 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %40 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %43 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %46 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call i32 @igrab(%struct.inode* %47)
  %49 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %50 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %53 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @BTRFS_ORDERED_IO_DONE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %31
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @BTRFS_ORDERED_COMPLETE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %64 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %63, i32 0, i32 6
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %57, %31
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @BTRFS_ORDERED_DIRECT, align 4
  %71 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %72 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %71, i32 0, i32 6
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %76 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %75, i32 0, i32 5
  %77 = call i32 @atomic_set(i32* %76, i32 1)
  %78 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %79 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %78, i32 0, i32 4
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %82 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %81, i32 0, i32 3
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %85 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %84, i32 0, i32 1
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %89 = call i32 @trace_btrfs_ordered_extent_add(%struct.inode* %87, %struct.btrfs_ordered_extent* %88)
  %90 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %18, align 8
  %91 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_irq(i32* %91)
  %93 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %18, align 8
  %94 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %93, i32 0, i32 1
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %97 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %96, i32 0, i32 2
  %98 = call %struct.rb_node* @tree_insert(i32* %94, i8* %95, i32* %97)
  store %struct.rb_node* %98, %struct.rb_node** %19, align 8
  %99 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %100 = icmp ne %struct.rb_node* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %74
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = load i32, i32* @EEXIST, align 4
  %104 = sub nsw i32 0, %103
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @ordered_data_tree_panic(%struct.inode* %102, i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %101, %74
  %108 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %18, align 8
  %109 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_irq(i32* %109)
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %120 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %119, i32 0, i32 1
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = call i32 @list_add_tail(i32* %120, i32* %127)
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %129)
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock(i32* %135)
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %107, %28
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_ordered_extent* @kzalloc(i32, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @trace_btrfs_ordered_extent_add(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.rb_node* @tree_insert(i32*, i8*, i32*) #1

declare dso_local i32 @ordered_data_tree_panic(%struct.inode*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
