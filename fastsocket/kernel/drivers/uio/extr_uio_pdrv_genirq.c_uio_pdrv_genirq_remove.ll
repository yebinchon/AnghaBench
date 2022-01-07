; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uio_pdrv_genirq_platdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uio_pdrv_genirq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_pdrv_genirq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uio_pdrv_genirq_platdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.uio_pdrv_genirq_platdata* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.uio_pdrv_genirq_platdata* %5, %struct.uio_pdrv_genirq_platdata** %3, align 8
  %6 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %3, align 8
  %7 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @uio_unregister_device(i32 %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_disable(i32* %11)
  %13 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %3, align 8
  %14 = call i32 @kfree(%struct.uio_pdrv_genirq_platdata* %13)
  ret i32 0
}

declare dso_local %struct.uio_pdrv_genirq_platdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uio_unregister_device(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @kfree(%struct.uio_pdrv_genirq_platdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
