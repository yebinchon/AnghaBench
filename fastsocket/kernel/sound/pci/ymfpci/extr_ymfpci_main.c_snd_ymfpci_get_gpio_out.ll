; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_get_gpio_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_get_gpio_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32 }

@YDSXGR_GPIOFUNCENABLE = common dso_local global i32 0, align 4
@YDSXGR_GPIOTYPECONFIG = common dso_local global i32 0, align 4
@YDSXGR_GPIOINSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*, i32)* @snd_ymfpci_get_gpio_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_get_gpio_out(%struct.snd_ymfpci* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %13 = load i32, i32* @YDSXGR_GPIOFUNCENABLE, align 4
  %14 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 8
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %26 = load i32, i32* @YDSXGR_GPIOFUNCENABLE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %25, i32 %26, i32 %27)
  %29 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %30 = load i32, i32* @YDSXGR_GPIOTYPECONFIG, align 4
  %31 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 2
  %34 = shl i32 3, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %39 = load i32, i32* @YDSXGR_GPIOTYPECONFIG, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %38, i32 %39, i32 %40)
  %42 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %43 = load i32, i32* @YDSXGR_GPIOFUNCENABLE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 8
  %47 = shl i32 1, %46
  %48 = or i32 %44, %47
  %49 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %42, i32 %43, i32 %48)
  %50 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %51 = load i32, i32* @YDSXGR_GPIOINSTATUS, align 4
  %52 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %54 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %53, i32 0, i32 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 1
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
