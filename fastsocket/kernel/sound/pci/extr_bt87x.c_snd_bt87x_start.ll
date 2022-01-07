; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bt87x = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@CTL_FIFO_ENABLE = common dso_local global i32 0, align 4
@CTL_RISC_ENABLE = common dso_local global i32 0, align 4
@CTL_ACAP_EN = common dso_local global i32 0, align 4
@REG_RISC_STRT_ADD = common dso_local global i32 0, align 4
@REG_PACKET_LEN = common dso_local global i32 0, align 4
@REG_INT_MASK = common dso_local global i32 0, align 4
@REG_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bt87x*)* @snd_bt87x_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_start(%struct.snd_bt87x* %0) #0 {
  %2 = alloca %struct.snd_bt87x*, align 8
  store %struct.snd_bt87x* %0, %struct.snd_bt87x** %2, align 8
  %3 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %4 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %3, i32 0, i32 4
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %7 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @CTL_FIFO_ENABLE, align 4
  %9 = load i32, i32* @CTL_RISC_ENABLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CTL_ACAP_EN, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %14 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %18 = load i32, i32* @REG_RISC_STRT_ADD, align 4
  %19 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %20 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %17, i32 %18, i32 %22)
  %24 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %25 = load i32, i32* @REG_PACKET_LEN, align 4
  %26 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %27 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %30 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 16
  %33 = or i32 %28, %32
  %34 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %24, i32 %25, i32 %33)
  %35 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %36 = load i32, i32* @REG_INT_MASK, align 4
  %37 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %38 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %35, i32 %36, i32 %39)
  %41 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %42 = load i32, i32* @REG_GPIO_DMA_CTL, align 4
  %43 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %44 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %41, i32 %42, i32 %45)
  %47 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %48 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %47, i32 0, i32 4
  %49 = call i32 @spin_unlock(i32* %48)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_bt87x_writel(%struct.snd_bt87x*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
