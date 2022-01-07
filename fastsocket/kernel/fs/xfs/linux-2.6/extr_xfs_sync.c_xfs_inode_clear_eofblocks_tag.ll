; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_clear_eofblocks_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_inode_clear_eofblocks_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.xfs_mount*, i32 }
%struct.xfs_mount = type { i32, i32 }
%struct.xfs_perag = type { i32, i32, i32 }

@XFS_ICI_EOFBLOCKS_TAG = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_clear_eofblocks_tag(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_perag*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @XFS_INO_TO_AGNO(%struct.xfs_mount* %9, i32 %12)
  %14 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %8, i32 %13)
  store %struct.xfs_perag* %14, %struct.xfs_perag** %4, align 8
  %15 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @trace_xfs_inode_clear_eofblocks_tag(%struct.TYPE_4__* %18)
  %20 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @XFS_INO_TO_AGINO(%struct.xfs_mount* %24, i32 %27)
  %29 = load i32, i32* @XFS_ICI_EOFBLOCKS_TAG, align 4
  %30 = call i32 @radix_tree_tag_clear(i32* %21, i32 %28, i32 %29)
  %31 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %31, i32 0, i32 2
  %33 = load i32, i32* @XFS_ICI_EOFBLOCKS_TAG, align 4
  %34 = call i32 @radix_tree_tagged(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %38, align 8
  %40 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %43, align 8
  %45 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @XFS_INO_TO_AGNO(%struct.xfs_mount* %48, i32 %51)
  %53 = load i32, i32* @XFS_ICI_EOFBLOCKS_TAG, align 4
  %54 = call i32 @radix_tree_tag_clear(i32* %45, i32 %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %56, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %61, align 8
  %63 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %64 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @_RET_IP_, align 4
  %67 = call i32 @trace_xfs_perag_clear_eofblocks(%struct.xfs_mount* %62, i32 %65, i32 -1, i32 %66)
  br label %68

68:                                               ; preds = %36, %1
  %69 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %73 = call i32 @xfs_perag_put(%struct.xfs_perag* %72)
  ret void
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_xfs_inode_clear_eofblocks_tag(%struct.TYPE_4__*) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @XFS_INO_TO_AGINO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @radix_tree_tagged(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_xfs_perag_clear_eofblocks(%struct.xfs_mount*, i32, i32, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
