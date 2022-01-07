; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_iget.c_xfs_inode_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_iget.c_xfs_inode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.xfs_ail* }
%struct.xfs_ail = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rcu_head = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_LI_IN_AIL = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4
@XFS_IRECLAIM = common dso_local global i32 0, align 4
@xfs_inode_free_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_free(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.xfs_ail*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @S_IFMT, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 130, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %13 = load i32, i32* @XFS_DATA_FORK, align 4
  %14 = call i32 @xfs_idestroy_fork(%struct.xfs_inode* %12, i32 %13)
  br label %15

15:                                               ; preds = %1, %11
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %22 = load i32, i32* @XFS_ATTR_FORK, align 4
  %23 = call i32 @xfs_idestroy_fork(%struct.xfs_inode* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %26 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %25, i32 0, i32 6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %84

29:                                               ; preds = %24
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %31 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %30, i32 0, i32 6
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %3, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.xfs_ail*, %struct.xfs_ail** %35, align 8
  store %struct.xfs_ail* %36, %struct.xfs_ail** %4, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %29
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @XFS_FORCED_SHUTDOWN(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %43, %29
  %50 = phi i1 [ true, %29 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %61 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %73 = call i32 @xfs_trans_ail_delete(%struct.xfs_ail* %70, %struct.TYPE_8__* %71, i32 %72)
  br label %78

74:                                               ; preds = %59
  %75 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %76 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %69
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %81 = call i32 @xfs_inode_item_destroy(%struct.xfs_inode* %80)
  %82 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %83 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %82, i32 0, i32 6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %83, align 8
  br label %84

84:                                               ; preds = %79, %24
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 5
  %87 = call i64 @atomic_read(i32* %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %92 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %91, i32 0, i32 4
  %93 = call i64 @atomic_read(i32* %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %98 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %97, i32 0, i32 0
  %99 = call i32 @spin_is_locked(i32* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %105 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %104, i32 0, i32 3
  %106 = call i32 @completion_done(i32* %105)
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %109 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load i32, i32* @XFS_IRECLAIM, align 4
  %112 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %113 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %115 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %117 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %120 = call %struct.TYPE_9__* @VFS_I(%struct.xfs_inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = bitcast i32* %121 to %struct.rcu_head*
  %123 = load i32, i32* @xfs_inode_free_callback, align 4
  %124 = call i32 @call_rcu(%struct.rcu_head* %122, i32 %123)
  ret void
}

declare dso_local i32 @xfs_idestroy_fork(%struct.xfs_inode*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xfs_trans_ail_delete(%struct.xfs_ail*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_inode_item_destroy(%struct.xfs_inode*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @call_rcu(%struct.rcu_head*, i32) #1

declare dso_local %struct.TYPE_9__* @VFS_I(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
