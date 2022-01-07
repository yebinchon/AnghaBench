; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_sta_rc_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_sta_rc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_sta*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.ieee80211_sta = type { i32 }

@IEEE80211_RC_SUPP_RATES_CHANGED = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, i32)* @drv_sta_rc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_sta_rc_update(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %10 = call %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data* %9)
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %6, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %12 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %11)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @IEEE80211_RC_SUPP_RATES_CHANGED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %30 = icmp ne i64 %28, %29
  br label %31

31:                                               ; preds = %24, %17
  %32 = phi i1 [ false, %17 ], [ %30, %24 ]
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i1 [ false, %4 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @trace_drv_sta_rc_update(%struct.ieee80211_local* %37, %struct.ieee80211_sub_if_data* %38, %struct.ieee80211_sta* %39, i32 %40)
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_sta*, i32)*, i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_sta*, i32)** %45, align 8
  %47 = icmp ne i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_sta*, i32)* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %33
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_sta*, i32)*, i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_sta*, i32)** %52, align 8
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %53(i32* %55, %struct.TYPE_4__* %57, %struct.ieee80211_sta* %58, i32 %59)
  br label %61

61:                                               ; preds = %48, %33
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %63 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %62)
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_drv_sta_rc_update(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
