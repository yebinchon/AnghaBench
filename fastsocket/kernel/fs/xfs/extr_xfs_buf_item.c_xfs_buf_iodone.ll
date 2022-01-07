; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_buf_item.c_xfs_buf_iodone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_buf_item.c_xfs_buf_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }
%struct.xfs_log_item = type { %struct.xfs_ail* }
%struct.xfs_ail = type { i32 }
%struct.TYPE_3__ = type { %struct.xfs_buf* }

@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_iodone(%struct.xfs_buf* %0, %struct.xfs_log_item* %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_log_item*, align 8
  %5 = alloca %struct.xfs_ail*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store %struct.xfs_log_item* %1, %struct.xfs_log_item** %4, align 8
  %6 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %6, i32 0, i32 0
  %8 = load %struct.xfs_ail*, %struct.xfs_ail** %7, align 8
  store %struct.xfs_ail* %8, %struct.xfs_ail** %5, align 8
  %9 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %10 = call %struct.TYPE_3__* @BUF_ITEM(%struct.xfs_log_item* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %14 = icmp eq %struct.xfs_buf* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %18 = call i32 @xfs_buf_rele(%struct.xfs_buf* %17)
  %19 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %23 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %24 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %25 = call i32 @xfs_trans_ail_delete(%struct.xfs_ail* %22, %struct.xfs_log_item* %23, i32 %24)
  %26 = load %struct.xfs_log_item*, %struct.xfs_log_item** %4, align 8
  %27 = call %struct.TYPE_3__* @BUF_ITEM(%struct.xfs_log_item* %26)
  %28 = call i32 @xfs_buf_item_free(%struct.TYPE_3__* %27)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_3__* @BUF_ITEM(%struct.xfs_log_item*) #1

declare dso_local i32 @xfs_buf_rele(%struct.xfs_buf*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xfs_trans_ail_delete(%struct.xfs_ail*, %struct.xfs_log_item*, i32) #1

declare dso_local i32 @xfs_buf_item_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
