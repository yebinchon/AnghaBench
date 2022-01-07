; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_isr.c_et131x_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_isr.c_et131x_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.et131x_adapter = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@TxOnly = common dso_local global i64 0, align 8
@Both = common dso_local global i64 0, align 8
@INT_MASK_ENABLE = common dso_local global i32 0, align 4
@INT_MASK_ENABLE_NO_FLOW = common dso_local global i32 0, align 4
@ET_INTR_WATCHDOG = common dso_local global i32 0, align 4
@ET_INTR_TXDMA_ISR = common dso_local global i32 0, align 4
@ET_INTR_RXDMA_XFR_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.et131x_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  store %struct.et131x_adapter* null, %struct.et131x_adapter** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i32 @netif_device_present(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.et131x_adapter* %18, %struct.et131x_adapter** %7, align 8
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %20 = call i32 @et131x_disable_interrupts(%struct.et131x_adapter* %19)
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = call i32 @readl(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TxOnly, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %16
  %33 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @Both, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %16
  %39 = load i32, i32* @INT_MASK_ENABLE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @INT_MASK_ENABLE_NO_FLOW, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %53 = call i32 @et131x_enable_interrupts(%struct.et131x_adapter* %52)
  br label %117

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ET_INTR_WATCHDOG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %9, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @ET_INTR_TXDMA_ISR, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @ET_INTR_RXDMA_XFR_DONE, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %98

87:                                               ; preds = %77
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = icmp eq %struct.TYPE_12__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %92 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %91, i32 0, i32 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = call i32 @writel(i32 0, i32* %95)
  br label %97

97:                                               ; preds = %90, %87
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i32, i32* @ET_INTR_WATCHDOG, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %98, %54
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %108 = call i32 @et131x_enable_interrupts(%struct.et131x_adapter* %107)
  br label %117

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %112 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %115 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %114, i32 0, i32 1
  %116 = call i32 @schedule_work(i32* %115)
  br label %117

117:                                              ; preds = %109, %106, %51, %15
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @IRQ_RETVAL(i32 %118)
  ret i32 %119
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @et131x_disable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @et131x_enable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
