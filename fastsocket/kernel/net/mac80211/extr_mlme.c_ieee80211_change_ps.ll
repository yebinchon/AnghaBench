; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_change_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_change_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*)* @ieee80211_change_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_change_ps(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  %3 = alloca %struct.ieee80211_conf*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %4 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.ieee80211_conf* %6, %struct.ieee80211_conf** %3, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ieee80211_enable_ps(%struct.ieee80211_local* %12, i64 %15)
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %32 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %33 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %31, i32 %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 1
  %36 = call i32 @del_timer_sync(i32* %35)
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 0
  %39 = call i32 @cancel_work_sync(i32* %38)
  br label %40

40:                                               ; preds = %24, %17
  br label %41

41:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @ieee80211_enable_ps(%struct.ieee80211_local*, i64) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
