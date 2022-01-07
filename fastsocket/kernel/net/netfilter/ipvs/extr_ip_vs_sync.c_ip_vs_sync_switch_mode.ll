; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_switch_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_switch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@curr_sb_lock = common dso_local global i32 0, align 4
@ip_vs_sync_state = common dso_local global i32 0, align 4
@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@curr_sb = common dso_local global %struct.ip_vs_sync_buff* null, align 8
@sysctl_ip_vs_sync_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_sync_switch_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_sync_buff*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @spin_lock_bh(i32* @curr_sb_lock)
  %5 = load i32, i32* @ip_vs_sync_state, align 4
  %6 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** @curr_sb, align 8
  store %struct.ip_vs_sync_buff* %11, %struct.ip_vs_sync_buff** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @sysctl_ip_vs_sync_ver, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %3, align 8
  %17 = icmp ne %struct.ip_vs_sync_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %10
  br label %34

19:                                               ; preds = %15
  %20 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ule i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %3, align 8
  %29 = call i32 @ip_vs_sync_buff_release(%struct.ip_vs_sync_buff* %28)
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** @curr_sb, align 8
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** @curr_sb, align 8
  %32 = call i32 @sb_queue_tail(%struct.ip_vs_sync_buff* %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %18, %9
  %35 = call i32 @spin_unlock_bh(i32* @curr_sb_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ip_vs_sync_buff_release(%struct.ip_vs_sync_buff*) #1

declare dso_local i32 @sb_queue_tail(%struct.ip_vs_sync_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
