; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_log_sbcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_log_sbcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@XFS_TRANS_SB_COUNT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_DEFAULT_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_SB_IFREE = common dso_local global i32 0, align 4
@XFS_SB_ICOUNT = common dso_local global i32 0, align 4
@XFS_SB_FDBLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_log_sbcount(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = call i32 @xfs_fs_writable(%struct.TYPE_7__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @xfs_icsb_sync_counters(%struct.TYPE_7__* %13, i32 0)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = call i32 @xfs_sb_version_haslazysbcount(%struct.TYPE_8__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = load i32, i32* @XFS_TRANS_SB_COUNT, align 4
  %23 = load i32, i32* @KM_SLEEP, align 4
  %24 = call i32* @_xfs_trans_alloc(%struct.TYPE_7__* %21, i32 %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 128
  %31 = load i32, i32* @XFS_DEFAULT_LOG_COUNT, align 4
  %32 = call i32 @xfs_trans_reserve(i32* %25, i32 0, i64 %30, i32 0, i32 0, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @xfs_trans_cancel(i32* %36, i32 0)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %20
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @XFS_SB_IFREE, align 4
  %42 = load i32, i32* @XFS_SB_ICOUNT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @XFS_SB_FDBLOCKS, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @xfs_mod_sb(i32* %40, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @xfs_trans_set_sync(i32* %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @xfs_trans_commit(i32* %53, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %35, %19, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @xfs_fs_writable(%struct.TYPE_7__*) #1

declare dso_local i32 @xfs_icsb_sync_counters(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_sb_version_haslazysbcount(%struct.TYPE_8__*) #1

declare dso_local i32* @_xfs_trans_alloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_mod_sb(i32*, i32) #1

declare dso_local i32 @xfs_trans_set_sync(i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
