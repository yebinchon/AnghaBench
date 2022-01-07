; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_set_eofblocks_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_set_eofblocks_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.xfs_mount*, i32 }
%struct.xfs_mount = type { i32, i32 }
%struct.xfs_perag = type { i32, i32, i32 }

@XFS_ICI_EOFBLOCKS_TAG = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_set_eofblocks_tag(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_perag*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  store %struct.xfs_mount* %8, %struct.xfs_mount** %3, align 8
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @XFS_INO_TO_AGNO(%struct.xfs_mount* %10, i32 %13)
  %15 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %9, i32 %14)
  store %struct.xfs_perag* %15, %struct.xfs_perag** %4, align 8
  %16 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = call i32 @trace_xfs_inode_set_eofblocks_tag(%struct.TYPE_4__* %19)
  %21 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %21, i32 0, i32 2
  %23 = load i32, i32* @XFS_ICI_EOFBLOCKS_TAG, align 4
  %24 = call i32 @radix_tree_tagged(i32* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @XFS_INO_TO_AGINO(%struct.xfs_mount* %29, i32 %32)
  %34 = load i32, i32* @XFS_ICI_EOFBLOCKS_TAG, align 4
  %35 = call i32 @radix_tree_tag_set(i32* %26, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %74, label %38

38:                                               ; preds = %1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %40, align 8
  %42 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %45, align 8
  %47 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.xfs_mount*, %struct.xfs_mount** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @XFS_INO_TO_AGNO(%struct.xfs_mount* %50, i32 %53)
  %55 = load i32, i32* @XFS_ICI_EOFBLOCKS_TAG, align 4
  %56 = call i32 @radix_tree_tag_set(i32* %47, i32 %54, i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.xfs_mount*, %struct.xfs_mount** %58, align 8
  %60 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %63, align 8
  %65 = call i32 @xfs_queue_eofblocks(%struct.xfs_mount* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.xfs_mount*, %struct.xfs_mount** %67, align 8
  %69 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @_RET_IP_, align 4
  %73 = call i32 @trace_xfs_perag_set_eofblocks(%struct.xfs_mount* %68, i32 %71, i32 -1, i32 %72)
  br label %74

74:                                               ; preds = %38, %1
  %75 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %76 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %79 = call i32 @xfs_perag_put(%struct.xfs_perag* %78)
  ret void
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_xfs_inode_set_eofblocks_tag(%struct.TYPE_4__*) #1

declare dso_local i32 @radix_tree_tagged(i32*, i32) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @XFS_INO_TO_AGINO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_queue_eofblocks(%struct.xfs_mount*) #1

declare dso_local i32 @trace_xfs_perag_set_eofblocks(%struct.xfs_mount*, i32, i32, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
