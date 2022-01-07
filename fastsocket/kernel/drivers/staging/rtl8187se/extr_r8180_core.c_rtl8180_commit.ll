; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_commit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8180_priv* %5, %struct.r8180_priv** %3, align 8
  %6 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 4
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 3
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = call i32 @cancel_delayed_work(i32* %21)
  %23 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = call i32 @cancel_delayed_work(i32* %26)
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = call i32 @cancel_delayed_work(i32* %31)
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @cancel_delayed_work(i32* %36)
  %38 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @cancel_delayed_work(i32* %41)
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 2
  %45 = call i32 @del_timer_sync(i32* %44)
  %46 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @ieee80211_softmac_stop_protocol(%struct.TYPE_2__* %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @rtl8180_irq_disable(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @rtl8180_rtx_disable(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @_rtl8180_up(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ieee80211_softmac_stop_protocol(%struct.TYPE_2__*) #1

declare dso_local i32 @rtl8180_irq_disable(%struct.net_device*) #1

declare dso_local i32 @rtl8180_rtx_disable(%struct.net_device*) #1

declare dso_local i32 @_rtl8180_up(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
