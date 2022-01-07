; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c___ieee80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c___ieee80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32 }

@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY = common dso_local global i32 0, align 4
@IEEE80211_STA_CSA_RECEIVED = common dso_local global i32 0, align 4
@IEEE80211_MAX_QUEUE_MAP = common dso_local global i32 0, align 4
@IEEE80211_QUEUE_STOP_REASON_CSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @__ieee80211_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_disconnect(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ieee80211_if_managed* %9, %struct.ieee80211_if_managed** %3, align 8
  %10 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 1, i32* %6, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %28 = load i32, i32* @WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY, align 4
  %29 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %26, i32 %27, i32 %28, i32 1, i32* %13)
  %30 = load i32, i32* @IEEE80211_STA_CSA_RECEIVED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* @IEEE80211_MAX_QUEUE_MAP, align 4
  %41 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_CSA, align 4
  %42 = call i32 @ieee80211_wake_queues_by_reason(i32* %39, i32 %40, i32 %41)
  %43 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %50 = call i32 @cfg80211_send_deauth(i32 %48, i32* %13, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %25, %21
  %52 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %55 [
    i32 0, label %54
    i32 1, label %54
  ]

54:                                               ; preds = %51, %51
  ret void

55:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

declare dso_local i32 @ieee80211_wake_queues_by_reason(i32*, i32, i32) #2

declare dso_local i32 @cfg80211_send_deauth(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
