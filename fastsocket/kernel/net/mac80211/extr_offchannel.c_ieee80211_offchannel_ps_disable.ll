; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_offchannel.c_ieee80211_offchannel_ps_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_offchannel.c_ieee80211_offchannel_ps_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_offchannel_ps_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_offchannel_ps_disable(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 0
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_local* %6, %struct.ieee80211_local** %3, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %14 = call i32 @ieee80211_send_nullfunc(%struct.ieee80211_local* %12, %struct.ieee80211_sub_if_data* %13, i32 0)
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %29 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %30 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %28, i32 %29)
  br label %54

31:                                               ; preds = %15
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %41 = call i32 @ieee80211_send_nullfunc(%struct.ieee80211_local* %39, %struct.ieee80211_sub_if_data* %40, i32 0)
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 1
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @msecs_to_jiffies(i64 %49)
  %51 = add nsw i64 %44, %50
  %52 = call i32 @mod_timer(i32* %43, i64 %51)
  br label %53

53:                                               ; preds = %38, %31
  br label %54

54:                                               ; preds = %53, %20
  br label %55

55:                                               ; preds = %54, %11
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %57 = call i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data* %56)
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %59 = call i32 @ieee80211_sta_reset_conn_monitor(%struct.ieee80211_sub_if_data* %58)
  ret void
}

declare dso_local i32 @ieee80211_send_nullfunc(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_sta_reset_conn_monitor(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
