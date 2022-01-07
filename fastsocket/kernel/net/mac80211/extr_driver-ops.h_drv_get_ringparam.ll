; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i32*, i32*, i32*, i32*)* @drv_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_get_ringparam(%struct.ieee80211_local* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = call i32 (...) @might_sleep()
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @trace_drv_get_ringparam(%struct.ieee80211_local* %12, i32* %13, i32* %14, i32* %15, i32* %16)
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*)** %21, align 8
  %23 = icmp ne i32 (i32*, i32*, i32*, i32*, i32*)* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %5
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*)** %28, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 %29(i32* %31, i32* %32, i32* %33, i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %24, %5
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %39 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %38)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @trace_drv_get_ringparam(%struct.ieee80211_local*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
