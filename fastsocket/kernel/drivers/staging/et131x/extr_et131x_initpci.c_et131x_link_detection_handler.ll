; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_link_detection_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_link_detection_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, i32, i32, i32 }

@NETIF_STATUS_MEDIA_DISCONNECT = common dso_local global i64 0, align 8
@fMP_ADAPTER_LINK_DETECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_link_detection_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.et131x_adapter*
  store %struct.et131x_adapter* %6, %struct.et131x_adapter** %3, align 8
  %7 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i64, i64* @NETIF_STATUS_MEDIA_DISCONNECT, align 8
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @fMP_ADAPTER_LINK_DETECTION, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %25, i32 0, i32 2
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_carrier_off(i32 %31)
  br label %33

33:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
