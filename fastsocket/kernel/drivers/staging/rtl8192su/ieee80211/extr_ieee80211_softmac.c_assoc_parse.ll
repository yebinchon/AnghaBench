; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_assoc_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_assoc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_assoc_response_frame = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid len in auth resp: %d\0A\00", align 1
@WLAN_STATUS_ASSOC_DENIED_RATES = common dso_local global i32 0, align 4
@WLAN_STATUS_CAPS_UNSUPPORTED = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i64 0, align 8
@IEEE_N_24G = common dso_local global i64 0, align 8
@RT_ASOC_RETRY_LIMIT = common dso_local global i32 0, align 4
@HT_IOT_ACT_PURE_N_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.sk_buff*, i32*)* @assoc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_parse(%struct.ieee80211_device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_assoc_response_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 51966, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ieee80211_assoc_response_frame*
  store %struct.ieee80211_assoc_response_frame* %24, %struct.ieee80211_assoc_response_frame** %8, align 8
  %25 = load %struct.ieee80211_assoc_response_frame*, %struct.ieee80211_assoc_response_frame** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_assoc_response_frame, %struct.ieee80211_assoc_response_frame* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = and i32 %28, 16383
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ieee80211_assoc_response_frame*, %struct.ieee80211_assoc_response_frame** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_assoc_response_frame, %struct.ieee80211_assoc_response_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @WLAN_STATUS_ASSOC_DENIED_RATES, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @WLAN_STATUS_CAPS_UNSUPPORTED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38, %20
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IEEE_G, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IEEE_N_24G, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* @RT_ASOC_RETRY_LIMIT, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i32, i32* @HT_IOT_ACT_PURE_N_MODE, align 4
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %75

72:                                               ; preds = %55, %48, %42, %38
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %64
  %76 = load %struct.ieee80211_assoc_response_frame*, %struct.ieee80211_assoc_response_frame** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_assoc_response_frame, %struct.ieee80211_assoc_response_frame* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
