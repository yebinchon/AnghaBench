; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_disable_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.plat_vlynq_ops* }
%struct.plat_vlynq_ops = type { i32 (%struct.vlynq_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlynq_disable_device(%struct.vlynq_device* %0) #0 {
  %2 = alloca %struct.vlynq_device*, align 8
  %3 = alloca %struct.plat_vlynq_ops*, align 8
  store %struct.vlynq_device* %0, %struct.vlynq_device** %2, align 8
  %4 = load %struct.vlynq_device*, %struct.vlynq_device** %2, align 8
  %5 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.plat_vlynq_ops*, %struct.plat_vlynq_ops** %6, align 8
  store %struct.plat_vlynq_ops* %7, %struct.plat_vlynq_ops** %3, align 8
  %8 = load %struct.vlynq_device*, %struct.vlynq_device** %2, align 8
  %9 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.vlynq_device*, %struct.vlynq_device** %2, align 8
  %11 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vlynq_device*, %struct.vlynq_device** %2, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.vlynq_device* %13)
  %15 = load %struct.plat_vlynq_ops*, %struct.plat_vlynq_ops** %3, align 8
  %16 = getelementptr inbounds %struct.plat_vlynq_ops, %struct.plat_vlynq_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.vlynq_device*)*, i32 (%struct.vlynq_device*)** %16, align 8
  %18 = load %struct.vlynq_device*, %struct.vlynq_device** %2, align 8
  %19 = call i32 %17(%struct.vlynq_device* %18)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.vlynq_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
