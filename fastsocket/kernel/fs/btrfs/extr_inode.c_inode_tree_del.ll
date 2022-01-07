; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_inode_tree_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_inode_tree_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_root = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i32, %struct.btrfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @inode_tree_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_tree_del(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_root* %8, %struct.btrfs_root** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @RB_EMPTY_NODE(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 1
  %23 = call i32 @rb_erase(i32* %20, i32* %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @RB_CLEAR_NODE(i32* %26)
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 1
  %30 = call i32 @RB_EMPTY_ROOT(i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %1
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 3
  %40 = call i64 @btrfs_root_refs(i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %47, align 8
  %49 = icmp ne %struct.btrfs_root* %43, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @synchronize_srcu(i32* %54)
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 1
  %61 = call i32 @RB_EMPTY_ROOT(i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %69 = call i32 @btrfs_add_dead_root(%struct.btrfs_root* %68)
  br label %70

70:                                               ; preds = %67, %50
  br label %71

71:                                               ; preds = %70, %42, %37, %31
  ret void
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @btrfs_add_dead_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
