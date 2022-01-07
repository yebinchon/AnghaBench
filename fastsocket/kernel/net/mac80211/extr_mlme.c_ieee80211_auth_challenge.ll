; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_8__ }
%struct.ieee80211_local = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_mgd_auth_data* }
%struct.ieee80211_mgd_auth_data = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.ieee802_11_elems = type { i64, i64 }

@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_auth_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_auth_challenge(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_mgd_auth_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee802_11_elems, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %7, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %18, align 8
  store %struct.ieee80211_mgd_auth_data* %19, %struct.ieee80211_mgd_auth_data** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %29 = bitcast %struct.ieee80211_mgmt* %28 to i32*
  %30 = ptrtoint i32* %27 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = sub i64 %26, %33
  %35 = call i32 @ieee802_11_parse_elems(i32* %25, i64 %34, i32 0, %struct.ieee802_11_elems* %10)
  %36 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  br label %91

40:                                               ; preds = %3
  %41 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %44, align 8
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %47 = call i32 @drv_mgd_prepare_tx(%struct.ieee80211_local* %45, %struct.ieee80211_sub_if_data* %46)
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %57 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %40
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %61 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 2
  %67 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  %70 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %75, i32 0, i32 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ieee80211_send_auth(%struct.ieee80211_sub_if_data* %60, i32 3, i32 %63, i32 0, i64 %66, i64 %69, i32 %74, i32 %79, i32 %82, i32 %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %59, %39
  ret void
}

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, i32, %struct.ieee802_11_elems*) #1

declare dso_local i32 @drv_mgd_prepare_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_send_auth(%struct.ieee80211_sub_if_data*, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
