; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_inode.c_xfs_trans_ijoin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_inode.c_xfs_trans_ijoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.xfs_trans*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_ijoin(%struct.xfs_trans* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca %struct.xfs_trans*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %3, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %4, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %6, i32 0, i32 0
  %8 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %9 = icmp eq %struct.xfs_trans* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %13 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %14 = call i32 @xfs_isilocked(%struct.xfs_inode* %12, i32 %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xfs_inode_item_init(%struct.xfs_inode* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %5, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @xfs_trans_add_item(%struct.xfs_trans* %36, i32* %38)
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %41 = call i32 @xfs_trans_inode_broot_debug(%struct.xfs_inode* %40)
  %42 = load %struct.xfs_trans*, %struct.xfs_trans** %3, align 8
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %43, i32 0, i32 0
  store %struct.xfs_trans* %42, %struct.xfs_trans** %44, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_inode_item_init(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_add_item(%struct.xfs_trans*, i32*) #1

declare dso_local i32 @xfs_trans_inode_broot_debug(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
