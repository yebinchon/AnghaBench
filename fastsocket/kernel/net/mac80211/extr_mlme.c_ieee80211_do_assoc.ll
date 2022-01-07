; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_do_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_do_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.ieee80211_local* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.ieee80211_mgd_assoc_data* }
%struct.ieee80211_mgd_assoc_data = type { i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IEEE80211_ASSOC_MAX_TRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"association with %pM timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"associate with %pM (try %d/%d)\0A\00", align 1
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_ASSOC_TIMEOUT = common dso_local global i64 0, align 8
@IEEE80211_ASSOC_TIMEOUT_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @ieee80211_do_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_do_assoc(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  store %struct.ieee80211_mgd_assoc_data* %10, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_ASSOC_MAX_TRIES, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %1
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %30 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @cfg80211_unlink_bss(i32 %39, %struct.TYPE_8__* %42)
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %99

46:                                               ; preds = %1
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %48 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IEEE80211_ASSOC_MAX_TRIES, align 8
  %57 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55, i64 %56)
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %59 = call i32 @ieee80211_send_assoc(%struct.ieee80211_sub_if_data* %58)
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %46
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i64, i64* @IEEE80211_ASSOC_TIMEOUT, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @run_again(%struct.TYPE_7__* %77, i64 %80)
  br label %98

82:                                               ; preds = %46
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i64, i64* @IEEE80211_ASSOC_TIMEOUT_LONG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i64 @round_jiffies_up(i64 %85)
  %87 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @run_again(%struct.TYPE_7__* %93, i64 %96)
  br label %98

98:                                               ; preds = %82, %67
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %28
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i32 @cfg80211_unlink_bss(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ieee80211_send_assoc(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @run_again(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
