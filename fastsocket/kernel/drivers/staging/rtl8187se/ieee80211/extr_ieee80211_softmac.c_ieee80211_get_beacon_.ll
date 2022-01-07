; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_get_beacon_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_get_beacon_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_device = type { i32 }
%struct.ieee80211_probe_response = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.ieee80211_get_beacon_.broadcast_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@IEEE80211_STYPE_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_get_beacon_(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_probe_response*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  %7 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([6 x i32]* @__const.ieee80211_get_beacon_.broadcast_addr to i8*), i64 24, i1 false)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %10 = call %struct.sk_buff* @ieee80211_probe_resp(%struct.ieee80211_device* %8, i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ieee80211_probe_response*
  store %struct.ieee80211_probe_response* %18, %struct.ieee80211_probe_response** %6, align 8
  %19 = load i32, i32* @IEEE80211_STYPE_BEACON, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %2, align 8
  br label %25

25:                                               ; preds = %14, %13
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @ieee80211_probe_resp(%struct.ieee80211_device*, i32*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
