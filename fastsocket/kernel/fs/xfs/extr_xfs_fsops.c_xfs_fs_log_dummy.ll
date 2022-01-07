; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_fs_log_dummy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_fs_log_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@XFS_TRANS_DUMMY1 = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_DEFAULT_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_SB_UUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_log_dummy(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @XFS_TRANS_DUMMY1, align 4
  %8 = load i32, i32* @KM_SLEEP, align 4
  %9 = call i32* @_xfs_trans_alloc(%struct.TYPE_6__* %6, i32 %7, i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 128
  %16 = load i32, i32* @XFS_DEFAULT_LOG_COUNT, align 4
  %17 = call i32 @xfs_trans_reserve(i32* %10, i32 0, i64 %15, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @xfs_trans_cancel(i32* %21, i32 0)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @XFS_SB_UUID, align 4
  %27 = call i32 @xfs_mod_sb(i32* %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @xfs_trans_set_sync(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @xfs_trans_commit(i32* %30, i32 0)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32* @_xfs_trans_alloc(%struct.TYPE_6__*, i32, i32) #1

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
