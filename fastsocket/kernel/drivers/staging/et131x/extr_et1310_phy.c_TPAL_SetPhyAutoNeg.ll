; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_TPAL_SetPhyAutoNeg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_TPAL_SetPhyAutoNeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRUEPHY_ADV_DUPLEX_BOTH = common dso_local global i32 0, align 4
@ET131X_PCI_DEVICE_ID_FAST = common dso_local global i64 0, align 8
@TRUEPHY_ADV_DUPLEX_FULL = common dso_local global i32 0, align 4
@TRUEPHY_ADV_DUPLEX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TPAL_SetPhyAutoNeg(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %3 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %4 = call i32 @ET1310_PhyPowerDown(%struct.et131x_adapter* %3, i32 1)
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = load i32, i32* @TRUEPHY_ADV_DUPLEX_BOTH, align 4
  %7 = call i32 @ET1310_PhyAdvertise10BaseT(%struct.et131x_adapter* %5, i32 %6)
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %9 = load i32, i32* @TRUEPHY_ADV_DUPLEX_BOTH, align 4
  %10 = call i32 @ET1310_PhyAdvertise100BaseT(%struct.et131x_adapter* %8, i32 %9)
  %11 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ET131X_PCI_DEVICE_ID_FAST, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %20 = load i32, i32* @TRUEPHY_ADV_DUPLEX_FULL, align 4
  %21 = call i32 @ET1310_PhyAdvertise1000BaseT(%struct.et131x_adapter* %19, i32 %20)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %24 = load i32, i32* @TRUEPHY_ADV_DUPLEX_NONE, align 4
  %25 = call i32 @ET1310_PhyAdvertise1000BaseT(%struct.et131x_adapter* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %28 = call i32 @ET1310_PhyAutoNeg(%struct.et131x_adapter* %27, i32 1)
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %30 = call i32 @ET1310_PhyPowerDown(%struct.et131x_adapter* %29, i32 0)
  ret void
}

declare dso_local i32 @ET1310_PhyPowerDown(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @ET1310_PhyAdvertise10BaseT(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @ET1310_PhyAdvertise100BaseT(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @ET1310_PhyAdvertise1000BaseT(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @ET1310_PhyAutoNeg(%struct.et131x_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
