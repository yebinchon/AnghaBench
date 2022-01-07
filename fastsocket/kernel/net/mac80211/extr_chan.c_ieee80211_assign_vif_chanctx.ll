; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_assign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_assign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_chanctx = type { i32, i32 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@BSS_CHANGED_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*)* @ieee80211_assign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_assign_vif_chanctx(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_chanctx*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %5, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %6, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %17 = call i32 @drv_assign_vif_chanctx(%struct.ieee80211_local* %14, %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_chanctx* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %27, i32 0, i32 1
  %29 = call i32 @rcu_assign_pointer(i32 %26, i32* %28)
  %30 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %35 = call i32 @ieee80211_recalc_txpower(%struct.ieee80211_sub_if_data* %34)
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %22
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %55 = load i32, i32* @BSS_CHANGED_IDLE, align 4
  %56 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %46, %22
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @drv_assign_vif_chanctx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @ieee80211_recalc_txpower(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
