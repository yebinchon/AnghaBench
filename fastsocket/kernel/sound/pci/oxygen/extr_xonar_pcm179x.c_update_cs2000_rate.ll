; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_update_cs2000_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_update_cs2000_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i64 }

@OXYGEN_RATE_32000 = common dso_local global i32 0, align 4
@OXYGEN_RATE_44100 = common dso_local global i32 0, align 4
@OXYGEN_RATE_48000 = common dso_local global i32 0, align 4
@MCLK_256 = common dso_local global i32 0, align 4
@CS2000_REF_CLK_DIV_1 = common dso_local global i32 0, align 4
@MCLK_512 = common dso_local global i32 0, align 4
@CS2000_REF_CLK_DIV_2 = common dso_local global i32 0, align 4
@OXYGEN_I2S_A_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_I2S_RATE_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_MCLK_MASK = common dso_local global i32 0, align 4
@CS2000_FUN_CFG_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32)* @update_cs2000_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cs2000_rate(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xonar_pcm179x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %9, align 8
  store %struct.xonar_pcm179x* %10, %struct.xonar_pcm179x** %5, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %16 [
    i32 32000, label %12
    i32 64000, label %12
    i32 44100, label %14
    i32 88200, label %14
    i32 176400, label %14
    i32 48000, label %17
    i32 96000, label %17
    i32 192000, label %17
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @OXYGEN_RATE_32000, align 4
  store i32 %13, i32* %6, align 4
  br label %19

14:                                               ; preds = %2, %2, %2
  %15 = load i32, i32* @OXYGEN_RATE_44100, align 4
  store i32 %15, i32* %6, align 4
  br label %19

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %2, %2, %2, %16
  %18 = load i32, i32* @OXYGEN_RATE_48000, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %14, %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ule i32 %20, 96000
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ugt i32 %23, 48000
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  %27 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %22
  %31 = load i32, i32* @MCLK_256, align 4
  %32 = call i32 @OXYGEN_I2S_MCLK(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @CS2000_REF_CLK_DIV_1, align 4
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %25, %19
  %37 = load i32, i32* @MCLK_512, align 4
  %38 = call i32 @OXYGEN_I2S_MCLK(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @CS2000_REF_CLK_DIV_2, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %44 = load i32, i32* @OXYGEN_I2S_A_FORMAT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @OXYGEN_I2S_RATE_MASK, align 4
  %47 = load i32, i32* @OXYGEN_I2S_MCLK_MASK, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @oxygen_write16_masked(%struct.oxygen* %43, i32 %44, i32 %45, i32 %48)
  %50 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %51 = load i32, i32* @CS2000_FUN_CFG_1, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @cs2000_write_cached(%struct.oxygen* %50, i32 %51, i32 %52)
  %54 = call i32 @msleep(i32 3)
  ret void
}

declare dso_local i32 @OXYGEN_I2S_MCLK(i32) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @cs2000_write_cached(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
