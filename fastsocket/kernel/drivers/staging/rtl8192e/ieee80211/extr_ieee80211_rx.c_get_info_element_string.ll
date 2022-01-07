; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_get_info_element_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_get_info_element_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@CF_SET = common dso_local global i32 0, align 4
@CHALLENGE = common dso_local global i32 0, align 4
@COUNTRY = common dso_local global i32 0, align 4
@CSA = common dso_local global i32 0, align 4
@DS_SET = common dso_local global i32 0, align 4
@FH_SET = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@HOP_PARAMS = common dso_local global i32 0, align 4
@HOP_TABLE = common dso_local global i32 0, align 4
@IBSS_DFS = common dso_local global i32 0, align 4
@IBSS_SET = common dso_local global i32 0, align 4
@MEASURE_REPORT = common dso_local global i32 0, align 4
@MEASURE_REQUEST = common dso_local global i32 0, align 4
@POWER_CAPABILITY = common dso_local global i32 0, align 4
@POWER_CONSTRAINT = common dso_local global i32 0, align 4
@QOS_PARAMETER = common dso_local global i32 0, align 4
@QUIET = common dso_local global i32 0, align 4
@RATES = common dso_local global i32 0, align 4
@RATES_EX = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@RSN = common dso_local global i32 0, align 4
@SSID = common dso_local global i32 0, align 4
@SUPP_CHANNELS = common dso_local global i32 0, align 4
@TIM = common dso_local global i32 0, align 4
@TPC_REPORT = common dso_local global i32 0, align 4
@TPC_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_info_element_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_info_element_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
  ]

4:                                                ; preds = %1
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
