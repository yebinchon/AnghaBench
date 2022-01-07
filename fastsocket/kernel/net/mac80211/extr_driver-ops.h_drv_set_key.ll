; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i32*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @drv_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_set_key(%struct.ieee80211_local* %0, i32 %1, %struct.ieee80211_sub_if_data* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_sub_if_data* %2, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %10, align 8
  %12 = call i32 (...) @might_sleep()
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %14 = call %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data* %13)
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %8, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %16 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %21 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %22 = call i32 @trace_drv_set_key(%struct.ieee80211_local* %17, i32 %18, %struct.ieee80211_sub_if_data* %19, %struct.ieee80211_sta* %20, %struct.ieee80211_key_conf* %21)
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32*, i32, i32*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)*, i32 (i32*, i32, i32*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)** %26, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %34 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %35 = call i32 %27(i32* %29, i32 %30, i32* %32, %struct.ieee80211_sta* %33, %struct.ieee80211_key_conf* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  ret i32 %39
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_set_key(%struct.ieee80211_local*, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
