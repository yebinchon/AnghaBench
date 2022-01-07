; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.h_cfg80211_rdev_free_wowlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.h_cfg80211_rdev_free_wowlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__*, i64, %struct.TYPE_2__*, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*)* @cfg80211_rdev_free_wowlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg80211_rdev_free_wowlan(%struct.cfg80211_registered_device* %0) #0 {
  %2 = alloca %struct.cfg80211_registered_device*, align 8
  %3 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %2, align 8
  %4 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %5 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %75

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @kfree(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @kfree(%struct.TYPE_2__* %38)
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %33
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %48 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sock_release(i64 %62)
  br label %64

64:                                               ; preds = %55, %46, %33
  %65 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %66 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_2__* %69)
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %72 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @kfree(%struct.TYPE_2__* %73)
  br label %75

75:                                               ; preds = %64, %8
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @sock_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
