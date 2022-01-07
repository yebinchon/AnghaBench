; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_null_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_null_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hdr_3addr = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_null_func(%struct.ieee80211_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr_3addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = call %struct.sk_buff* @dev_alloc_skb(i32 16)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @skb_put(%struct.sk_buff* %13, i32 16)
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %15, %struct.ieee80211_hdr_3addr** %7, align 8
  %16 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32 %18, i32 %22, i32 %23)
  %25 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32 %27, i32 %32, i32 %33)
  %35 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %37, i32 %41, i32 %42)
  %44 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %45 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %48 = or i32 %46, %47
  %49 = load i16, i16* %5, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %12
  %53 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  br label %55

54:                                               ; preds = %12
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %48, %56
  %58 = call i32 @cpu_to_le16(i32 %57)
  %59 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %3, align 8
  br label %62

62:                                               ; preds = %55, %11
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %63
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
