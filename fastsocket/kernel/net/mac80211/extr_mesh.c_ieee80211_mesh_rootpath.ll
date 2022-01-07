; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rootpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rootpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@IEEE80211_PROACTIVE_RANN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_mesh_rootpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_rootpath(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_mesh*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %7, %struct.ieee80211_if_mesh** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = call i32 @mesh_path_tx_root_frame(%struct.ieee80211_sub_if_data* %8)
  %10 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_PROACTIVE_RANN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TU_TO_EXP_TIME(i32 %29)
  %31 = call i32 @round_jiffies(i32 %30)
  %32 = call i32 @mod_timer(i32* %28, i32 %31)
  ret void
}

declare dso_local i32 @mesh_path_tx_root_frame(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i32) #1

declare dso_local i32 @TU_TO_EXP_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
