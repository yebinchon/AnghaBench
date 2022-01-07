; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_timer_ping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_timer_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sliccard = type { %struct.TYPE_2__, %struct.sliccard* }
%struct.TYPE_2__ = type { i64 }
%struct.adapter = type { %struct.TYPE_2__, %struct.adapter* }
%struct.net_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@PING_TIMER_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sliccard*)* @slic_timer_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_timer_ping(%struct.sliccard* %0) #0 {
  %2 = alloca %struct.sliccard*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sliccard*, align 8
  store %struct.sliccard* %0, %struct.sliccard** %2, align 8
  %5 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %6 = call i32 @ASSERT(%struct.sliccard* %5)
  %7 = load %struct.sliccard*, %struct.sliccard** %2, align 8
  %8 = bitcast %struct.sliccard* %7 to %struct.net_device*
  %9 = call %struct.sliccard* @netdev_priv(%struct.net_device* %8)
  %10 = bitcast %struct.sliccard* %9 to %struct.adapter*
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = bitcast %struct.adapter* %11 to %struct.sliccard*
  %13 = call i32 @ASSERT(%struct.sliccard* %12)
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  %17 = bitcast %struct.adapter* %16 to %struct.sliccard*
  store %struct.sliccard* %17, %struct.sliccard** %4, align 8
  %18 = load %struct.sliccard*, %struct.sliccard** %4, align 8
  %19 = call i32 @ASSERT(%struct.sliccard* %18)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @PING_TIMER_INTERVAL, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = call i32 @add_timer(%struct.TYPE_2__* %30)
  ret void
}

declare dso_local i32 @ASSERT(%struct.sliccard*) #1

declare dso_local %struct.sliccard* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
