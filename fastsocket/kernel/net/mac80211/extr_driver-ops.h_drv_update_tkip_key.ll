; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.sta_info = type { %struct.ieee80211_sta }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_key_conf*, %struct.sta_info*, i32, i32*)* @drv_update_tkip_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_update_tkip_key(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_key_conf* %2, %struct.sta_info* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.sta_info* %3, %struct.sta_info** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %13, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %15 = icmp ne %struct.sta_info* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %13, align 8
  br label %19

19:                                               ; preds = %16, %6
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %21 = call %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data* %20)
  store %struct.ieee80211_sub_if_data* %21, %struct.ieee80211_sub_if_data** %8, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %23 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %22)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @trace_drv_update_tkip_key(%struct.ieee80211_local* %24, %struct.ieee80211_sub_if_data* %25, %struct.ieee80211_key_conf* %26, %struct.ieee80211_sta* %27, i32 %28)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32*, i32*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)*, i32 (i32*, i32*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)** %33, align 8
  %35 = icmp ne i32 (i32*, i32*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %19
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i32*, i32*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)*, i32 (i32*, i32*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)** %40, align 8
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 0
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %44, i32 0, i32 0
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 %41(i32* %43, i32* %45, %struct.ieee80211_key_conf* %46, %struct.ieee80211_sta* %47, i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %36, %19
  %52 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %53 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %52)
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_update_tkip_key(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
