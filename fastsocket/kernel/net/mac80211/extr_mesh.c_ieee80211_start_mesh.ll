; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_start_mesh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_start_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_8__, i32, %struct.ieee80211_local*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ieee80211_local = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_6__, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@MESH_WORK_HOUSEKEEPING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_start_mesh(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_if_mesh*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %10, %struct.ieee80211_if_mesh** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 3
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %5, align 8
  %14 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %15 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BSS_CHANGED_HT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %24 = call i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 1
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %33 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %32)
  %34 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ieee80211_mesh_sync_ops_get(i32 %40)
  %42 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @MESH_WORK_HOUSEKEEPING, align 4
  %49 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %53 = call i32 @ieee80211_mesh_root_setup(%struct.ieee80211_if_mesh* %52)
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 2
  %58 = call i32 @ieee80211_queue_work(i32* %55, i32* %57)
  %59 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ieee80211_mandatory_rates(%struct.ieee80211_local* %71, i32 %72)
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %79 = call i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data* %78)
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %83 = call i64 @ieee80211_mesh_build_beacon(%struct.ieee80211_if_mesh* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %1
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %87 = call i32 @ieee80211_stop_mesh(%struct.ieee80211_sub_if_data* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %1
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %91, i32 %92)
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netif_carrier_on(i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %85
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_mesh_sync_ops_get(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_mesh_root_setup(%struct.ieee80211_if_mesh*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i32 @ieee80211_mandatory_rates(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_mesh_build_beacon(%struct.ieee80211_if_mesh*) #1

declare dso_local i32 @ieee80211_stop_mesh(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
