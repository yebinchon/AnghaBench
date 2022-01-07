; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_txq_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_txq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_txq_params = type { i64, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_tx_queue_params* }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"failed to set TX queue parameters for AC %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.ieee80211_txq_params*)* @ieee80211_set_txq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_txq_params(%struct.wiphy* %0, %struct.net_device* %1, %struct.ieee80211_txq_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee80211_txq_params*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_tx_queue_params, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.ieee80211_txq_params* %2, %struct.ieee80211_txq_params** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %11)
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %13)
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %9, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %84

34:                                               ; preds = %24
  %35 = call i32 @memset(%struct.ieee80211_tx_queue_params* %10, i32 0, i32 20)
  %36 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %54, align 8
  %56 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %55, i64 %58
  %60 = bitcast %struct.ieee80211_tx_queue_params* %59 to i8*
  %61 = bitcast %struct.ieee80211_tx_queue_params* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 20, i1 false)
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %64 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @drv_conf_tx(%struct.ieee80211_local* %62, %struct.ieee80211_sub_if_data* %63, i64 %66, %struct.ieee80211_tx_queue_params* %10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %34
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @wiphy_debug(i32 %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %34
  %81 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %82 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %83 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %69, %31, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_queue_params*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @drv_conf_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64, %struct.ieee80211_tx_queue_params*) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i64) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
