; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_verify_qos_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_verify_qos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_qos_information_element = type { i32, i64, i64, i32 }

@qos_oui = common dso_local global i32 0, align 4
@QOS_OUI_LEN = common dso_local global i32 0, align 4
@QOS_OUI_TYPE = common dso_local global i64 0, align 8
@QOS_VERSION_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_qos_information_element*, i32)* @ieee80211_verify_qos_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_verify_qos_info(%struct.ieee80211_qos_information_element* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_qos_information_element*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_qos_information_element* %0, %struct.ieee80211_qos_information_element** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ieee80211_qos_information_element*, %struct.ieee80211_qos_information_element** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_qos_information_element, %struct.ieee80211_qos_information_element* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_qos_information_element*, %struct.ieee80211_qos_information_element** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_qos_information_element, %struct.ieee80211_qos_information_element* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @qos_oui, align 4
  %17 = load i32, i32* @QOS_OUI_LEN, align 4
  %18 = call i64 @memcmp(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %36

21:                                               ; preds = %12
  %22 = load %struct.ieee80211_qos_information_element*, %struct.ieee80211_qos_information_element** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_qos_information_element, %struct.ieee80211_qos_information_element* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QOS_OUI_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_qos_information_element*, %struct.ieee80211_qos_information_element** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_qos_information_element, %struct.ieee80211_qos_information_element* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QOS_VERSION_1, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %27, %20, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
