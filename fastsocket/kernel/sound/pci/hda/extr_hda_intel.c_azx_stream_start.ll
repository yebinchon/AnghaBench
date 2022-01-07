; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_stream_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { i32, i32 }

@INTCTL = common dso_local global i32 0, align 4
@SD_CTL = common dso_local global i32 0, align 4
@SD_CTL_DMA_START = common dso_local global i32 0, align 4
@SD_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*, %struct.azx_dev*)* @azx_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_stream_start(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca %struct.azx_dev*, align 8
  store %struct.azx* %0, %struct.azx** %3, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %4, align 8
  %5 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %6 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.azx*, %struct.azx** %3, align 8
  %8 = load i32, i32* @INTCTL, align 4
  %9 = load %struct.azx*, %struct.azx** %3, align 8
  %10 = load i32, i32* @INTCTL, align 4
  %11 = call i32 @azx_readl(%struct.azx* %9, i32 %10)
  %12 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %13 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %11, %15
  %17 = call i32 @azx_writel(%struct.azx* %7, i32 %8, i32 %16)
  %18 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %19 = load i32, i32* @SD_CTL, align 4
  %20 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %21 = load i32, i32* @SD_CTL, align 4
  %22 = call i32 @azx_sd_readb(%struct.azx_dev* %20, i32 %21)
  %23 = load i32, i32* @SD_CTL_DMA_START, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SD_INT_MASK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @azx_sd_writeb(%struct.azx_dev* %18, i32 %19, i32 %26)
  ret void
}

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

declare dso_local i32 @azx_sd_writeb(%struct.azx_dev*, i32, i32) #1

declare dso_local i32 @azx_sd_readb(%struct.azx_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
