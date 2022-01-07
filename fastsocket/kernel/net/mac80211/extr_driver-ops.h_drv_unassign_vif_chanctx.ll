; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_chanctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*)* @drv_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_unassign_vif_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_chanctx* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_chanctx* %2, %struct.ieee80211_chanctx** %6, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %8 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %7)
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %12 = call i32 @trace_drv_unassign_vif_chanctx(%struct.ieee80211_local* %9, %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_chanctx* %11)
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (i32*, i32*, i32*)* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %30, align 8
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %36, i32 0, i32 0
  %38 = call i32 %31(i32* %33, i32* %35, i32* %37)
  br label %39

39:                                               ; preds = %19, %3
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %41 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %40)
  ret void
}

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_unassign_vif_chanctx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
