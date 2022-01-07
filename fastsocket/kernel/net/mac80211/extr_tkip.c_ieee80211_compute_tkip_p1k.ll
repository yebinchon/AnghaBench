; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_ieee80211_compute_tkip_p1k.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_ieee80211_compute_tkip_p1k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.TYPE_8__, %struct.TYPE_5__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.tkip_ctx }
%struct.tkip_ctx = type { i64, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NL80211_TKIP_DATA_OFFSET_ENCR_KEY = common dso_local global i64 0, align 8
@TKIP_STATE_NOT_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*, i32)* @ieee80211_compute_tkip_p1k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_compute_tkip_p1k(%struct.ieee80211_key* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.tkip_ctx*, align 8
  %7 = alloca i32*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store %struct.tkip_ctx* %14, %struct.tkip_ctx** %6, align 8
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @NL80211_TKIP_DATA_OFFSET_ENCR_KEY, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %7, align 8
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.tkip_ctx*, %struct.tkip_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.tkip_ctx, %struct.tkip_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.tkip_ctx*, %struct.tkip_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.tkip_ctx, %struct.tkip_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TKIP_STATE_NOT_INIT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31, %2
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.tkip_ctx*, %struct.tkip_ctx** %6, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @tkip_mixing_phase1(i32* %38, %struct.tkip_ctx* %39, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @tkip_mixing_phase1(i32*, %struct.tkip_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
