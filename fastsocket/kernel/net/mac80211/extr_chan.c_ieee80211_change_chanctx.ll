; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_change_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_change_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.cfg80211_chan_def, i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_chanctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cfg80211_chan_def }

@IEEE80211_CHANCTX_CHANGE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*)* @ieee80211_change_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_change_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_chanctx*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %7 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %8 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %11 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %9, %struct.cfg80211_chan_def* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %46

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %19 = call i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def* %17, %struct.cfg80211_chan_def* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %28 = bitcast %struct.cfg80211_chan_def* %26 to i8*
  %29 = bitcast %struct.cfg80211_chan_def* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %31 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %32 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_WIDTH, align 4
  %33 = call i32 @drv_change_chanctx(%struct.ieee80211_local* %30, %struct.ieee80211_chanctx* %31, i32 %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %14
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %39, i32 0, i32 0
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %42 = bitcast %struct.cfg80211_chan_def* %40 to i8*
  %43 = bitcast %struct.cfg80211_chan_def* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %45 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %44, i32 0)
  br label %46

46:                                               ; preds = %13, %38, %14
  ret void
}

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @drv_change_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
