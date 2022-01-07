; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8766_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8766_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_2 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_160 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_LO = common dso_local global i32 0, align 4
@WM8766_LDA1 = common dso_local global i32 0, align 4
@WM8766_RDA1 = common dso_local global i32 0, align 4
@WM8766_LDA2 = common dso_local global i32 0, align 4
@WM8766_MASTDA = common dso_local global i32 0, align 4
@WM8766_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32)* @wm8766_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8766_write(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %9, align 8
  store %struct.xonar_wm87x6* %10, %struct.xonar_wm87x6** %7, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %12 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %13 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OXYGEN_SPI_CLOCK_160, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %18 = shl i32 0, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_LO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 9
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @oxygen_write_spi(%struct.oxygen* %11, i32 %21, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %29 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @WM8766_LDA1, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @WM8766_RDA1, align 4
  %40 = icmp ule i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @WM8766_LDA2, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @WM8766_MASTDA, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %37
  %50 = load i32, i32* @WM8766_UPDATE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %45, %41
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %57 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %3
  ret void
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
