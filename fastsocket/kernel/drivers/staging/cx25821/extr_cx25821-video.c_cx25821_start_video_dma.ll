; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_start_video_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_start_video_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.cx25821_dmaqueue = type { i32 }
%struct.cx25821_buffer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sram_channel = type { i32, i32, i32, i32 }

@PCI_INT_MSK = common dso_local global i32 0, align 4
@VID_CH_MODE_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_start_video_dma(%struct.cx25821_dev* %0, %struct.cx25821_dmaqueue* %1, %struct.cx25821_buffer* %2, %struct.sram_channel* %3) #0 {
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca %struct.cx25821_dmaqueue*, align 8
  %7 = alloca %struct.cx25821_buffer*, align 8
  %8 = alloca %struct.sram_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store %struct.cx25821_dmaqueue* %1, %struct.cx25821_dmaqueue** %6, align 8
  store %struct.cx25821_buffer* %2, %struct.cx25821_buffer** %7, align 8
  store %struct.sram_channel* %3, %struct.sram_channel** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %11 = load %struct.sram_channel*, %struct.sram_channel** %8, align 8
  %12 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cx25821_sram_channel_setup(%struct.cx25821_dev* %10, %struct.sram_channel* %11, i32 %14, i32 %18)
  %20 = load %struct.sram_channel*, %struct.sram_channel** %8, align 8
  %21 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cx_write(i32 %22, i32 3)
  %24 = load %struct.cx25821_dmaqueue*, %struct.cx25821_dmaqueue** %6, align 8
  %25 = getelementptr inbounds %struct.cx25821_dmaqueue, %struct.cx25821_dmaqueue* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @PCI_INT_MSK, align 4
  %27 = load i32, i32* @PCI_INT_MSK, align 4
  %28 = call i32 @cx_read(i32 %27)
  %29 = load %struct.sram_channel*, %struct.sram_channel** %8, align 8
  %30 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %28, %32
  %34 = call i32 @cx_set(i32 %26, i32 %33)
  %35 = load %struct.sram_channel*, %struct.sram_channel** %8, align 8
  %36 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cx_set(i32 %37, i32 17)
  %39 = load %struct.sram_channel*, %struct.sram_channel** %8, align 8
  %40 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cx_write(i32 %41, i32 17)
  %43 = load i32, i32* @VID_CH_MODE_SEL, align 4
  %44 = call i32 @cx_read(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @VID_CH_MODE_SEL, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, -512
  %48 = call i32 @cx_write(i32 %45, i32 %47)
  ret i32 0
}

declare dso_local i32 @cx25821_sram_channel_setup(%struct.cx25821_dev*, %struct.sram_channel*, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
