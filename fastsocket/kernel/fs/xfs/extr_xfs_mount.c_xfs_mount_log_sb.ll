; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mount_log_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mount_log_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@XFS_SB_UNIT = common dso_local global i32 0, align 4
@XFS_SB_WIDTH = common dso_local global i32 0, align 4
@XFS_SB_UUID = common dso_local global i32 0, align 4
@XFS_SB_FEATURES2 = common dso_local global i32 0, align 4
@XFS_SB_BAD_FEATURES2 = common dso_local global i32 0, align 4
@XFS_SB_VERSIONNUM = common dso_local global i32 0, align 4
@XFS_TRANS_SB_UNIT = common dso_local global i32 0, align 4
@XFS_DEFAULT_LOG_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mount_log_sb(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @XFS_SB_UNIT, align 4
  %10 = load i32, i32* @XFS_SB_WIDTH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @XFS_SB_UUID, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @XFS_SB_FEATURES2, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @XFS_SB_BAD_FEATURES2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @XFS_SB_VERSIONNUM, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %8, %19
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i32, i32* @XFS_TRANS_SB_UNIT, align 4
  %24 = call i32* @xfs_trans_alloc(%struct.TYPE_6__* %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 128
  %31 = load i32, i32* @XFS_DEFAULT_LOG_COUNT, align 4
  %32 = call i32 @xfs_trans_reserve(i32* %25, i32 0, i64 %30, i32 0, i32 0, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @xfs_trans_cancel(i32* %36, i32 0)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %2
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @xfs_mod_sb(i32* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @xfs_trans_commit(i32* %43, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_mod_sb(i32*, i32) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
