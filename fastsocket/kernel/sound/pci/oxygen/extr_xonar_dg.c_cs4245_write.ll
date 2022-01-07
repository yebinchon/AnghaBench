; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_cs4245_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_cs4245_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32* }

@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_3 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_1280 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_HI = common dso_local global i32 0, align 4
@CS4245_SPI_ADDRESS = common dso_local global i32 0, align 4
@CS4245_SPI_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32)* @cs4245_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4245_write(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.dg*, %struct.dg** %9, align 8
  store %struct.dg* %10, %struct.dg** %7, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %13 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_3, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OXYGEN_SPI_CLOCK_1280, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %18 = shl i32 0, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_HI, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CS4245_SPI_ADDRESS, align 4
  %23 = load i32, i32* @CS4245_SPI_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %24, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @oxygen_write_spi(%struct.oxygen* %11, i32 %21, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dg*, %struct.dg** %7, align 8
  %33 = getelementptr inbounds %struct.dg, %struct.dg* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  ret void
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
