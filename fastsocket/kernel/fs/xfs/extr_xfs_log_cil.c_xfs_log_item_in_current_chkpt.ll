; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xfs_log_item_in_current_chkpt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xfs_log_item_in_current_chkpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.xfs_cil_ctx* }
%struct.xfs_cil_ctx = type { i32 }

@XFS_MOUNT_DELAYLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_log_item_in_current_chkpt(%struct.xfs_log_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_log_item*, align 8
  %4 = alloca %struct.xfs_cil_ctx*, align 8
  store %struct.xfs_log_item* %0, %struct.xfs_log_item** %3, align 8
  %5 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @XFS_MOUNT_DELAYLOG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %15, i32 0, i32 2
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %28, align 8
  store %struct.xfs_cil_ctx* %29, %struct.xfs_cil_ctx** %4, align 8
  %30 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @XFS_LSN_CMP(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %19, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @XFS_LSN_CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
