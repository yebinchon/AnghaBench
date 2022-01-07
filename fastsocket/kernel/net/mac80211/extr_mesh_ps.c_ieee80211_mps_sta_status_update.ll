; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_sta_status_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_sta_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i64, i64, i32, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_UNKNOWN = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_ACTIVE = common dso_local global i32 0, align 4
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"start PS buffering frames towards %pM\0A\00", align 1
@WLAN_STA_MPSP_OWNER = common dso_local global i32 0, align 4
@WLAN_STA_MPSP_RECIPIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_sta_status_update(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_MESH_POWER_UNKNOWN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %10, %1
  %22 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @NL80211_MESH_POWER_ACTIVE, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %31 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %32 = call i32 @test_sta_flag(%struct.sta_info* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %83

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %41 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %42 = call i32 @set_sta_flag(%struct.sta_info* %40, i32 %41)
  %43 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @atomic_inc(i32* %49)
  %51 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mps_dbg(%struct.TYPE_10__* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %62

59:                                               ; preds = %36
  %60 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %61 = call i32 @ieee80211_sta_ps_deliver_wakeup(%struct.sta_info* %60)
  br label %62

62:                                               ; preds = %59, %39
  %63 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %70 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %71 = call i32 @clear_sta_flag(%struct.sta_info* %69, i32 %70)
  %72 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %73 = load i32, i32* @WLAN_STA_MPSP_RECIPIENT, align 4
  %74 = call i32 @clear_sta_flag(%struct.sta_info* %72, i32 %73)
  br label %83

75:                                               ; preds = %62
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %80 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %81 = call i32 @clear_sta_flag(%struct.sta_info* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %35, %82, %68
  ret void
}

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mps_dbg(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @ieee80211_sta_ps_deliver_wakeup(%struct.sta_info*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
