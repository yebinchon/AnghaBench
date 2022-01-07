; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_sb_queue_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_sb_queue_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_buff = type { i32 }

@ip_vs_sync_lock = common dso_local global i32 0, align 4
@ip_vs_sync_state = common dso_local global i32 0, align 4
@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@ip_vs_sync_queue_len = common dso_local global i64 0, align 8
@ip_vs_master_wakeup_work = common dso_local global i32 0, align 4
@IPVS_SYNC_SEND_DELAY = common dso_local global i32 0, align 4
@ip_vs_sync_queue = common dso_local global i32 0, align 4
@ip_vs_sync_queue_delay = common dso_local global i64 0, align 8
@IPVS_SYNC_WAKEUP_RATE = common dso_local global i64 0, align 8
@sync_master_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_sync_buff*)* @sb_queue_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_queue_tail(%struct.ip_vs_sync_buff* %0) #0 {
  %2 = alloca %struct.ip_vs_sync_buff*, align 8
  store %struct.ip_vs_sync_buff* %0, %struct.ip_vs_sync_buff** %2, align 8
  %3 = call i32 @spin_lock(i32* @ip_vs_sync_lock)
  %4 = load i32, i32* @ip_vs_sync_state, align 4
  %5 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i64, i64* @ip_vs_sync_queue_len, align 8
  %10 = call i64 (...) @sysctl_sync_qlen_max()
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i64, i64* @ip_vs_sync_queue_len, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @IPVS_SYNC_SEND_DELAY, align 4
  %17 = call i32 @max(i32 %16, i32 1)
  %18 = call i32 @schedule_delayed_work(i32* @ip_vs_master_wakeup_work, i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i64, i64* @ip_vs_sync_queue_len, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @ip_vs_sync_queue_len, align 8
  %22 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %23 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %23, i32* @ip_vs_sync_queue)
  %25 = load i64, i64* @ip_vs_sync_queue_delay, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @ip_vs_sync_queue_delay, align 8
  %27 = load i64, i64* @IPVS_SYNC_WAKEUP_RATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @sync_master_thread, align 4
  %31 = call i32 @wake_up_process(i32 %30)
  br label %32

32:                                               ; preds = %29, %19
  br label %36

33:                                               ; preds = %8, %1
  %34 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %35 = call i32 @ip_vs_sync_buff_release(%struct.ip_vs_sync_buff* %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = call i32 @spin_unlock(i32* @ip_vs_sync_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sysctl_sync_qlen_max(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @ip_vs_sync_buff_release(%struct.ip_vs_sync_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
