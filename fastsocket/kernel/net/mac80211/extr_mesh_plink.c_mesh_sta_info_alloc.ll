; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c_mesh_sta_info_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c_mesh_sta_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ieee802_11_elems = type { i32, i32 }

@IEEE80211_MESH_SEC_AUTHED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sta_info* (%struct.ieee80211_sub_if_data*, i32*, %struct.ieee802_11_elems*)* @mesh_sta_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sta_info* @mesh_sta_info_alloc(%struct.ieee80211_sub_if_data* %0, i32* %1, %struct.ieee802_11_elems* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee802_11_elems*, align 8
  %7 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_MESH_SEC_AUTHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %14, %3
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %29 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %32 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @cfg80211_notify_new_peer_candidate(i32 %26, i32* %27, i32 %30, i32 %33, i32 %34)
  br label %40

36:                                               ; preds = %14
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.sta_info* @__mesh_sta_info_alloc(%struct.ieee80211_sub_if_data* %37, i32* %38)
  store %struct.sta_info* %39, %struct.sta_info** %7, align 8
  br label %40

40:                                               ; preds = %36, %23
  %41 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  ret %struct.sta_info* %41
}

declare dso_local i32 @cfg80211_notify_new_peer_candidate(i32, i32*, i32, i32, i32) #1

declare dso_local %struct.sta_info* @__mesh_sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
