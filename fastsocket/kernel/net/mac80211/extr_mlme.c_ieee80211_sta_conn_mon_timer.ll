; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_sta_conn_mon_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_sta_conn_mon_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_2__ }
%struct.ieee80211_local = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ieee80211_sta_conn_mon_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_conn_mon_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_if_managed*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ieee80211_sub_if_data*
  store %struct.ieee80211_sub_if_data* %7, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ieee80211_if_managed* %10, %struct.ieee80211_if_managed** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %5, align 8
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %22, i32 0, i32 0
  %24 = call i32 @ieee80211_queue_work(i32* %21, i32* %23)
  br label %25

25:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
