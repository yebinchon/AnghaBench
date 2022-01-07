; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_vif_use_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_vif_use_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, i64, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_chanctx = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_chanctx*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %7, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @netif_carrier_ok(i64 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi i1 [ false, %3 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %31 = call i32 @__ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %30)
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %33 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.ieee80211_chanctx* @ieee80211_find_chanctx(%struct.ieee80211_local* %32, %struct.cfg80211_chan_def* %33, i32 %34)
  store %struct.ieee80211_chanctx* %35, %struct.ieee80211_chanctx** %8, align 8
  %36 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %37 = icmp ne %struct.ieee80211_chanctx* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %23
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.ieee80211_chanctx* @ieee80211_new_chanctx(%struct.ieee80211_local* %39, %struct.cfg80211_chan_def* %40, i32 %41)
  store %struct.ieee80211_chanctx* %42, %struct.ieee80211_chanctx** %8, align 8
  br label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %45 = call i64 @IS_ERR(%struct.ieee80211_chanctx* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.ieee80211_chanctx* %48)
  store i32 %49, i32* %9, align 4
  br label %80

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %56 = bitcast %struct.cfg80211_chan_def* %54 to i8*
  %57 = bitcast %struct.cfg80211_chan_def* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %59 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %60 = call i32 @ieee80211_assign_vif_chanctx(%struct.ieee80211_sub_if_data* %58, %struct.ieee80211_chanctx* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %50
  %64 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %70 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %71 = call i32 @ieee80211_free_chanctx(%struct.ieee80211_local* %69, %struct.ieee80211_chanctx* %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %80

73:                                               ; preds = %50
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %75 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %76 = call i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local* %74, %struct.ieee80211_chanctx* %75)
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %78 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %79 = call i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local* %77, %struct.ieee80211_chanctx* %78)
  br label %80

80:                                               ; preds = %73, %72, %47
  %81 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @netif_carrier_ok(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_find_chanctx(%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_new_chanctx(%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_chanctx*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_chanctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_assign_vif_chanctx(%struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_free_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
