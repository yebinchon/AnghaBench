; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_extract_country_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_extract_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.ieee80211_info_element = type { i64, i32 }
%struct.ieee80211_network = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.ieee80211_info_element*, %struct.ieee80211_network*, i32*)* @ieee80211_extract_country_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_extract_country_ie(%struct.ieee80211_device* %0, %struct.ieee80211_info_element* %1, %struct.ieee80211_network* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.ieee80211_info_element*, align 8
  %7 = alloca %struct.ieee80211_network*, align 8
  %8 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.ieee80211_info_element* %1, %struct.ieee80211_info_element** %6, align 8
  store %struct.ieee80211_network* %2, %struct.ieee80211_network** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %10 = call i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %4
  %13 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load %struct.ieee80211_network*, %struct.ieee80211_network** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i32 %20, i32 %23, i64 %26)
  %28 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ieee80211_network*, %struct.ieee80211_network** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %34 = call i32 @IS_COUNTRY_IE_VALID(%struct.ieee80211_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %17
  %37 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @Dot11d_UpdateCountryIe(%struct.ieee80211_device* %37, i32* %38, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %36, %17
  br label %47

47:                                               ; preds = %46, %12
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @IS_EQUAL_CIE_SRC(%struct.ieee80211_device* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %54 = call i32 @UPDATE_CIE_WATCHDOG(%struct.ieee80211_device* %53)
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %4
  ret void
}

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @IS_COUNTRY_IE_VALID(%struct.ieee80211_device*) #1

declare dso_local i32 @Dot11d_UpdateCountryIe(%struct.ieee80211_device*, i32*, i64, i32) #1

declare dso_local i64 @IS_EQUAL_CIE_SRC(%struct.ieee80211_device*, i32*) #1

declare dso_local i32 @UPDATE_CIE_WATCHDOG(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
