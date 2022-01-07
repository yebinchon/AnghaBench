; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_st_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_st_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.TYPE_3__, %struct.xonar_pcm179x* }
%struct.TYPE_3__ = type { i32 }
%struct.xonar_pcm179x = type { i32, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CS2000_REF_CLK_DIV_1 = common dso_local global i32 0, align 4
@CS2000_FUN_CFG_1 = common dso_local global i64 0, align 8
@OXYGEN_I2S_A_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_RATE_48000 = common dso_local global i32 0, align 4
@OXYGEN_I2S_FORMAT_I2S = common dso_local global i32 0, align 4
@MCLK_256 = common dso_local global i32 0, align 4
@MCLK_512 = common dso_local global i32 0, align 4
@OXYGEN_I2S_BITS_16 = common dso_local global i32 0, align 4
@OXYGEN_I2S_MASTER = common dso_local global i32 0, align 4
@OXYGEN_I2S_BCLK_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CS2000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_st_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_st_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %8 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 100, i32* %9, align 8
  %10 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %11 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %17 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %19 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @CS2000_REF_CLK_DIV_1, align 4
  %21 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %22 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @CS2000_FUN_CFG_1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %27 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = load i32, i32* @OXYGEN_I2S_A_FORMAT, align 4
  %30 = load i32, i32* @OXYGEN_RATE_48000, align 4
  %31 = load i32, i32* @OXYGEN_I2S_FORMAT_I2S, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %34 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @MCLK_256, align 4
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @MCLK_512, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @OXYGEN_I2S_MCLK(i32 %42)
  %44 = or i32 %32, %43
  %45 = load i32, i32* @OXYGEN_I2S_BITS_16, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @OXYGEN_I2S_BCLK_64, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @oxygen_write16(%struct.oxygen* %28, i32 %29, i32 %50)
  %52 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %53 = call i32 @xonar_st_init_i2c(%struct.oxygen* %52)
  %54 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %55 = call i32 @cs2000_registers_init(%struct.oxygen* %54)
  %56 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %57 = call i32 @xonar_st_init_common(%struct.oxygen* %56)
  %58 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %59 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_component_add(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @OXYGEN_I2S_MCLK(i32) #1

declare dso_local i32 @xonar_st_init_i2c(%struct.oxygen*) #1

declare dso_local i32 @cs2000_registers_init(%struct.oxygen*) #1

declare dso_local i32 @xonar_st_init_common(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
