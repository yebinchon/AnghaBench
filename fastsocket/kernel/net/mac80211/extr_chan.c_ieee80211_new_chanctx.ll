; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_new_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_new_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_chanctx = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_local = type { i32, i32, %struct.cfg80211_chan_def, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_chanctx* (%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32)* @ieee80211_new_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_chanctx* @ieee80211_new_chanctx(%struct.ieee80211_local* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_chanctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 5
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 24, %17
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ieee80211_chanctx* @kzalloc(i64 %18, i32 %19)
  store %struct.ieee80211_chanctx* %20, %struct.ieee80211_chanctx** %8, align 8
  %21 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %22 = icmp ne %struct.ieee80211_chanctx* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ieee80211_chanctx* @ERR_PTR(i32 %25)
  store %struct.ieee80211_chanctx* %26, %struct.ieee80211_chanctx** %4, align 8
  br label %111

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %32 = bitcast %struct.cfg80211_chan_def* %30 to i8*
  %33 = bitcast %struct.cfg80211_chan_def* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %44 = call i32 @ieee80211_is_radar_required(%struct.ieee80211_local* %43)
  %45 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %27
  %53 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %27
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %66 = call i64 @ieee80211_idle_off(%struct.ieee80211_local* %65)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %70, i64 %71)
  br label %73

73:                                               ; preds = %69, %61
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %79, i32 0, i32 2
  %81 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %82 = bitcast %struct.cfg80211_chan_def* %80 to i8*
  %83 = bitcast %struct.cfg80211_chan_def* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %85 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %84, i64 0)
  br label %100

86:                                               ; preds = %73
  %87 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %88 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %89 = call i32 @drv_add_chanctx(%struct.ieee80211_local* %87, %struct.ieee80211_chanctx* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %94 = call i32 @kfree(%struct.ieee80211_chanctx* %93)
  %95 = load i32, i32* %10, align 4
  %96 = call %struct.ieee80211_chanctx* @ERR_PTR(i32 %95)
  store %struct.ieee80211_chanctx* %96, %struct.ieee80211_chanctx** %8, align 8
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %98 = call i32 @ieee80211_recalc_idle(%struct.ieee80211_local* %97)
  br label %106

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %101, i32 0, i32 1
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %103, i32 0, i32 1
  %105 = call i32 @list_add_rcu(i32* %102, i32* %104)
  br label %106

106:                                              ; preds = %100, %92
  %107 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  store %struct.ieee80211_chanctx* %110, %struct.ieee80211_chanctx** %4, align 8
  br label %111

111:                                              ; preds = %106, %23
  %112 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  ret %struct.ieee80211_chanctx* %112
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_chanctx* @kzalloc(i64, i32) #1

declare dso_local %struct.ieee80211_chanctx* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_is_radar_required(%struct.ieee80211_local*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ieee80211_idle_off(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i64) #1

declare dso_local i32 @drv_add_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @kfree(%struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_idle(%struct.ieee80211_local*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
