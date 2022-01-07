; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@eRfOff = common dso_local global i32 0, align 4
@IEEE80211_NOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8180_down(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8180_priv* %6, %struct.r8180_priv** %4, align 8
  %7 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %8 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @ieee80211_softmac_stop_protocol(%struct.TYPE_2__* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netif_queue_stopped(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netif_stop_queue(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %12
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @rtl8180_rtx_disable(%struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @rtl8180_irq_disable(%struct.net_device* %28)
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 4
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 3
  %35 = call i32 @del_timer_sync(i32* %34)
  %36 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %37 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  %40 = call i32 @cancel_delayed_work(i32* %39)
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = call i32 @cancel_delayed_work(i32* %44)
  %46 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %47 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = call i32 @cancel_delayed_work(i32* %49)
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = call i32 @cancel_delayed_work(i32* %54)
  %56 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %57 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = call i32 @cancel_delayed_work(i32* %59)
  %61 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %62 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %61, i32 0, i32 2
  %63 = call i32 @del_timer_sync(i32* %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = load i32, i32* @eRfOff, align 4
  %66 = call i32 @SetZebraRFPowerState8185(%struct.net_device* %64, i32 %65)
  %67 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %68 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = call i32 @memset(i32* %70, i32 0, i32 4)
  %72 = load i32, i32* @IEEE80211_NOLINK, align 4
  %73 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %74 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %25, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @ieee80211_softmac_stop_protocol(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rtl8180_rtx_disable(%struct.net_device*) #1

declare dso_local i32 @rtl8180_irq_disable(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @SetZebraRFPowerState8185(%struct.net_device*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
