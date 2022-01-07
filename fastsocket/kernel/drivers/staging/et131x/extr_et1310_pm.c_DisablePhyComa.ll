; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_pm.c_DisablePhyComa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_pm.c_DisablePhyComa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ET_PMCSR_INIT = common dso_local global i32 0, align 4
@ET_PM_PHY_SW_COMA = common dso_local global i32 0, align 4
@fMP_ADAPTER_LOWER_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisablePhyComa(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %4 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %4, i32 0, i32 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = call i32 @readl(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @ET_PMCSR_INIT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @ET_PM_PHY_SW_COMA, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @writel(i32 %17, i32* %22)
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %37 = call i32 @et131x_init_send(%struct.et131x_adapter* %36)
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %39 = call i32 @et131x_reset_recv(%struct.et131x_adapter* %38)
  %40 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %41 = call i32 @et131x_soft_reset(%struct.et131x_adapter* %40)
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %43 = call i32 @et131x_adapter_setup(%struct.et131x_adapter* %42)
  %44 = load i32, i32* @fMP_ADAPTER_LOWER_POWER, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %51 = call i32 @et131x_rx_dma_enable(%struct.et131x_adapter* %50)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @et131x_init_send(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_reset_recv(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_soft_reset(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_rx_dma_enable(%struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
