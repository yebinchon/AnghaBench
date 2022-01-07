; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_free(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %3 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %3, i32 0, i32 0
  %5 = call i32 @down(i32* %4)
  %6 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %6, i32 0, i32 5
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %9, i32 0, i32 4
  %11 = call i32 @cancel_delayed_work(i32* %10)
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 3
  %14 = call i32 @cancel_delayed_work(i32* %13)
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @destroy_workqueue(i32 %17)
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* null, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 0
  %31 = call i32 @up(i32* %30)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
