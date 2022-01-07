; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_read_qos_param_element.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_read_qos_param_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_qos_parameter_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ieee80211_info_element = type { i64, i64, i32 }

@QOS_ELEMENT_ID = common dso_local global i64 0, align 8
@QOS_OUI_PARAM_SUB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_qos_parameter_info*, %struct.ieee80211_info_element*)* @ieee80211_read_qos_param_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_read_qos_param_element(%struct.ieee80211_qos_parameter_info* %0, %struct.ieee80211_info_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_qos_parameter_info*, align 8
  %5 = alloca %struct.ieee80211_info_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_qos_parameter_info* %0, %struct.ieee80211_qos_parameter_info** %4, align 8
  store %struct.ieee80211_info_element* %1, %struct.ieee80211_info_element** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 22, i64* %7, align 8
  %8 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %9 = icmp eq %struct.ieee80211_info_element* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %4, align 8
  %12 = icmp eq %struct.ieee80211_qos_parameter_info* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %61

14:                                               ; preds = %10
  %15 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QOS_ELEMENT_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, %struct.ieee80211_qos_parameter_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i32 %30, i32 %33, i64 %36)
  %38 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, %struct.ieee80211_qos_parameter_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.ieee80211_info_element*, %struct.ieee80211_info_element** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_info_element, %struct.ieee80211_info_element* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, %struct.ieee80211_qos_parameter_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %51

50:                                               ; preds = %20, %14
  store i32 -1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, %struct.ieee80211_qos_parameter_info* %55, i32 0, i32 0
  %57 = load i32, i32* @QOS_OUI_PARAM_SUB_TYPE, align 4
  %58 = call i32 @ieee80211_verify_qos_info(%struct.TYPE_2__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ieee80211_verify_qos_info(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
