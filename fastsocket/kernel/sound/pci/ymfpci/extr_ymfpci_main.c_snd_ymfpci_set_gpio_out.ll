; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_set_gpio_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_set_gpio_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32 }

@YDSXGR_GPIOFUNCENABLE = common dso_local global i32 0, align 4
@YDSXGR_GPIOOUTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*, i32, i32)* @snd_ymfpci_set_gpio_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_set_gpio_out(%struct.snd_ymfpci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %14 = load i32, i32* @YDSXGR_GPIOFUNCENABLE, align 4
  %15 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 8
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %28 = load i32, i32* @YDSXGR_GPIOFUNCENABLE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %27, i32 %28, i32 %29)
  %31 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %32 = load i32, i32* @YDSXGR_GPIOOUTCTRL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %31, i32 %32, i32 %35)
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %38 = load i32, i32* @YDSXGR_GPIOFUNCENABLE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 8
  %42 = shl i32 1, %41
  %43 = or i32 %39, %42
  %44 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %37, i32 %38, i32 %43)
  %45 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret i32 0
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
