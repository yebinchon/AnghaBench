; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_stop_mesh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_stop_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_6__, i32, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_local = type { i32, i32, i32 }
%struct.beacon_data = type { i32 }

@SDATA_STATE_OFFCHANNEL_BEACON_STOPPED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_mesh(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_if_mesh*, align 8
  %5 = alloca %struct.beacon_data*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 5
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_local* %8, %struct.ieee80211_local** %3, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %11, %struct.ieee80211_if_mesh** %4, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_carrier_off(i32 %14)
  %16 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @SDATA_STATE_OFFCHANNEL_BEACON_STOPPED, align 4
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 2
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %28 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %26, i32 %27)
  %29 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %29, i32 0, i32 4
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %35, i32 0, i32 4
  %37 = call i32 @lockdep_is_held(i32* %36)
  %38 = call %struct.beacon_data* @rcu_dereference_protected(i32 %34, i32 %37)
  store %struct.beacon_data* %38, %struct.beacon_data** %5, align 8
  %39 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rcu_assign_pointer(i32 %41, i32* null)
  %43 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %44 = load i32, i32* @rcu_head, align 4
  %45 = call i32 @kfree_rcu(%struct.beacon_data* %43, i32 %44)
  %46 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %46, i32 0, i32 4
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %50 = call i32 @sta_info_flush(%struct.ieee80211_sub_if_data* %49)
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %52 = call i32 @mesh_path_flush_by_iface(%struct.ieee80211_sub_if_data* %51)
  %53 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i64 @skb_queue_len(i32* %55)
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @skb_queue_purge(i32* %65)
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %69, i32 0, i32 2
  %71 = call i32 @del_timer_sync(i32* %70)
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %74, i32 0, i32 1
  %76 = call i32 @del_timer_sync(i32* %75)
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %79, i32 0, i32 0
  %81 = call i32 @del_timer_sync(i32* %80)
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 0
  %84 = call i32 @cancel_work_sync(i32* %83)
  %85 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %89, i32 0, i32 0
  %91 = call i32 @atomic_dec(i32* %90)
  %92 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %93 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %92)
  ret void
}

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.beacon_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.beacon_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sta_info_flush(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_path_flush_by_iface(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
