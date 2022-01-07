; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_scan_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_request = type { i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.cfg80211_scan_request* }

@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_scan_done(%struct.cfg80211_scan_request* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg80211_scan_request*, align 8
  %4 = alloca i32, align 4
  store %struct.cfg80211_scan_request* %0, %struct.cfg80211_scan_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @trace_cfg80211_scan_done(%struct.cfg80211_scan_request* %5, i32 %6)
  %8 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %9 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @wiphy_to_dev(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %13, align 8
  %15 = icmp ne %struct.cfg80211_scan_request* %8, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %20 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @cfg80211_wq, align 4
  %22 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %23 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @wiphy_to_dev(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @queue_work(i32 %21, i32* %26)
  ret void
}

declare dso_local i32 @trace_cfg80211_scan_done(%struct.cfg80211_scan_request*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @wiphy_to_dev(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
