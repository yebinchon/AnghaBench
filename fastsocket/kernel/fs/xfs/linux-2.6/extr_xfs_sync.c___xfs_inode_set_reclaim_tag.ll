; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c___xfs_inode_set_reclaim_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c___xfs_inode_set_reclaim_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i32, i32, i32 }
%struct.xfs_inode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@XFS_ICI_RECLAIM_TAG = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xfs_inode_set_reclaim_tag(%struct.xfs_perag* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca %struct.xfs_perag*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_perag* %0, %struct.xfs_perag** %3, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %4, align 8
  %5 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %5, i32 0, i32 2
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @XFS_INO_TO_AGINO(%struct.TYPE_4__* %9, i32 %12)
  %14 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %15 = call i32 @radix_tree_tag_set(i32* %6, i32 %13, i32 %14)
  %16 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %2
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @XFS_INO_TO_AGNO(%struct.TYPE_4__* %32, i32 %35)
  %37 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %38 = call i32 @radix_tree_tag_set(i32* %29, i32 %36, i32 %37)
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %48 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @_RET_IP_, align 4
  %51 = call i32 @trace_xfs_perag_set_reclaim(%struct.TYPE_4__* %46, i32 %49, i32 -1, i32 %50)
  br label %52

52:                                               ; preds = %20, %2
  %53 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %54 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local i32 @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @XFS_INO_TO_AGINO(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @XFS_INO_TO_AGNO(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_xfs_perag_set_reclaim(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
