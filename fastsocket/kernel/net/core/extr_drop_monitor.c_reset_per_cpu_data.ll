; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_drop_monitor.c_reset_per_cpu_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_drop_monitor.c_reset_per_cpu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.per_cpu_dm_data = type { i32, i32, i32 }
%struct.net_dm_alert_msg = type { i32 }
%struct.nlattr = type { i32 }

@dm_hit_limit = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@net_drop_monitor_family = common dso_local global i32 0, align 4
@NET_DM_CMD_ALERT = common dso_local global i32 0, align 4
@NLA_UNSPEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.per_cpu_dm_data*)* @reset_per_cpu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @reset_per_cpu_data(%struct.per_cpu_dm_data* %0) #0 {
  %2 = alloca %struct.per_cpu_dm_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_dm_alert_msg*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  store %struct.per_cpu_dm_data* %0, %struct.per_cpu_dm_data** %2, align 8
  store i64 4, i64* %3, align 8
  %8 = load i32, i32* @dm_hit_limit, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %13, 4
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @genlmsg_new(i64 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load i32, i32* @NET_DM_CMD_ALERT, align 4
  %23 = call i32 @genlmsg_put(%struct.sk_buff* %21, i32 0, i32 0, i32* @net_drop_monitor_family, i32 0, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load i32, i32* @NLA_UNSPEC, align 4
  %26 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %24, i32 %25, i32 4)
  store %struct.nlattr* %26, %struct.nlattr** %5, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %28 = call %struct.net_dm_alert_msg* @nla_data(%struct.nlattr* %27)
  store %struct.net_dm_alert_msg* %28, %struct.net_dm_alert_msg** %4, align 8
  %29 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @memset(%struct.net_dm_alert_msg* %29, i32 0, i64 %30)
  br label %41

32:                                               ; preds = %1
  %33 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %34 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %33, i32 0, i32 2
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %36, 10
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @mod_timer(i32* %34, i64 %39)
  br label %41

41:                                               ; preds = %32, %20
  %42 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %43 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %47 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @swap(i32 %48, %struct.sk_buff* %49)
  %51 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %52 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %55
}

declare dso_local %struct.sk_buff* @genlmsg_new(i64, i32) #1

declare dso_local i32 @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.net_dm_alert_msg* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.net_dm_alert_msg*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swap(i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
