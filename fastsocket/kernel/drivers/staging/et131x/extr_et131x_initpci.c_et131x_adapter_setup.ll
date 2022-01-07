; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_adapter_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_adapter_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ET_MMC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not find the xcvr\0A\00", align 1
@ET131X_PCI_DEVICE_ID_FAST = common dso_local global i64 0, align 8
@TRUEPHY_ADV_DUPLEX_FULL = common dso_local global i32 0, align 4
@TRUEPHY_ADV_DUPLEX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %5 = call i32 @ConfigGlobalRegs(%struct.et131x_adapter* %4)
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %7 = call i32 @ConfigMACRegs1(%struct.et131x_adapter* %6)
  %8 = load i32, i32* @ET_MMC_ENABLE, align 4
  %9 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @writel(i32 %8, i32* %13)
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %16 = call i32 @ConfigRxMacRegs(%struct.et131x_adapter* %15)
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %18 = call i32 @ConfigTxMacRegs(%struct.et131x_adapter* %17)
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %20 = call i32 @ConfigRxDmaRegs(%struct.et131x_adapter* %19)
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %22 = call i32 @ConfigTxDmaRegs(%struct.et131x_adapter* %21)
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %24 = call i32 @ConfigMacStatRegs(%struct.et131x_adapter* %23)
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %26 = call i32 @et131x_xcvr_find(%struct.et131x_adapter* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %37 = call i32 @ET1310_PhyInit(%struct.et131x_adapter* %36)
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %39 = call i32 @ET1310_PhyReset(%struct.et131x_adapter* %38)
  %40 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %41 = call i32 @ET1310_PhyPowerDown(%struct.et131x_adapter* %40, i32 1)
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ET131X_PCI_DEVICE_ID_FAST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %51 = load i32, i32* @TRUEPHY_ADV_DUPLEX_FULL, align 4
  %52 = call i32 @ET1310_PhyAdvertise1000BaseT(%struct.et131x_adapter* %50, i32 %51)
  br label %57

53:                                               ; preds = %35
  %54 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %55 = load i32, i32* @TRUEPHY_ADV_DUPLEX_NONE, align 4
  %56 = call i32 @ET1310_PhyAdvertise1000BaseT(%struct.et131x_adapter* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %59 = call i32 @ET1310_PhyPowerDown(%struct.et131x_adapter* %58, i32 0)
  %60 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %61 = call i32 @et131x_setphy_normal(%struct.et131x_adapter* %60)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ConfigGlobalRegs(%struct.et131x_adapter*) #1

declare dso_local i32 @ConfigMACRegs1(%struct.et131x_adapter*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ConfigRxMacRegs(%struct.et131x_adapter*) #1

declare dso_local i32 @ConfigTxMacRegs(%struct.et131x_adapter*) #1

declare dso_local i32 @ConfigRxDmaRegs(%struct.et131x_adapter*) #1

declare dso_local i32 @ConfigTxDmaRegs(%struct.et131x_adapter*) #1

declare dso_local i32 @ConfigMacStatRegs(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_xcvr_find(%struct.et131x_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ET1310_PhyInit(%struct.et131x_adapter*) #1

declare dso_local i32 @ET1310_PhyReset(%struct.et131x_adapter*) #1

declare dso_local i32 @ET1310_PhyPowerDown(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @ET1310_PhyAdvertise1000BaseT(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @et131x_setphy_normal(%struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
