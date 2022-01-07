; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_default_attroffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_default_attroffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MINABTPTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xfs_default_attroffset(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %5, i32 0, i32 0
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %15 = call i64 @XFS_LITINO(%struct.xfs_mount* %14)
  %16 = load i32, i32* @MINABTPTRS, align 4
  %17 = call i64 @XFS_BMDR_SPACE_CALC(i32 %16)
  %18 = sub nsw i64 %15, %17
  store i64 %18, i64* %4, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @MINABTPTRS, align 4
  %21 = mul nsw i32 6, %20
  %22 = call i64 @XFS_BMDR_SPACE_CALC(i32 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %26 = call i64 @XFS_LITINO(%struct.xfs_mount* %25)
  %27 = icmp slt i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i64 @XFS_LITINO(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_BMDR_SPACE_CALC(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
