; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mps_qos_null_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mps_qos_null_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"announcing peer-specific power mode to %pM\0A\00", align 1
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_EOSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @mps_qos_null_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_qos_null_tx(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = call %struct.sk_buff* @mps_qos_null_get(%struct.sta_info* %5)
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mps_dbg(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %20 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %21 = call i32 @test_sta_flag(%struct.sta_info* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %10
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32* @ieee80211_get_qos_ctl(i8* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32, i32* @IEEE80211_QOS_CTL_EOSP, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %23, %10
  %35 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @ieee80211_tx_skb(i32 %37, %struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %34, %9
  ret void
}

declare dso_local %struct.sk_buff* @mps_qos_null_get(%struct.sta_info*) #1

declare dso_local i32 @mps_dbg(i32, i8*, i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(i8*) #1

declare dso_local i32 @ieee80211_tx_skb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
