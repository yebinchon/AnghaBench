; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_bss_conf*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.ieee80211_bss_conf = type { i32 }

@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_bss_conf*, i32)* @drv_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_bss_info_changed(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 (...) @might_sleep()
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %12 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %36 = icmp ne i64 %34, %35
  br label %37

37:                                               ; preds = %30, %23, %16, %4
  %38 = phi i1 [ false, %23 ], [ false, %16 ], [ false, %4 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %93

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %50, %43
  %58 = phi i1 [ true, %43 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON_ONCE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %93

63:                                               ; preds = %57
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %65 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %64)
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %68 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @trace_drv_bss_info_changed(%struct.ieee80211_local* %66, %struct.ieee80211_sub_if_data* %67, %struct.ieee80211_bss_conf* %68, i32 %69)
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_bss_conf*, i32)*, i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_bss_conf*, i32)** %74, align 8
  %76 = icmp ne i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_bss_conf*, i32)* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %63
  %78 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_bss_conf*, i32)*, i32 (i32*, %struct.TYPE_4__*, %struct.ieee80211_bss_conf*, i32)** %81, align 8
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %83, i32 0, i32 0
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %85, i32 0, i32 0
  %87 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 %82(i32* %84, %struct.TYPE_4__* %86, %struct.ieee80211_bss_conf* %87, i32 %88)
  br label %90

90:                                               ; preds = %77, %63
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %92 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %91)
  br label %93

93:                                               ; preds = %90, %62, %42
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_bss_info_changed(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
