; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_st_init_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_st_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.TYPE_3__, %struct.xonar_pcm179x* }
%struct.TYPE_3__ = type { i32 }
%struct.xonar_pcm179x = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GPIO_ST_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_INPUT_ROUTE = common dso_local global i32 0, align 4
@GPIO_ST_HP_REAR = common dso_local global i32 0, align 4
@GPIO_ST_MAGIC = common dso_local global i32 0, align 4
@GPIO_ST_HP = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PCM1792A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CS5381\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_st_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_st_init_common(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load i32, i32* @GPIO_ST_OUTPUT_ENABLE, align 4
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %9 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %12 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 2
  %16 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %17 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %19 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %18, i32 0, i32 1
  store i32 -36, i32* %19, align 4
  %20 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %21 = call i32 @pcm1796_init(%struct.oxygen* %20)
  %22 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %23 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %24 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %25 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GPIO_ST_MAGIC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GPIO_ST_HP, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @oxygen_set_bits16(%struct.oxygen* %22, i32 %23, i32 %30)
  %32 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %33 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %34 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %35 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @GPIO_ST_HP, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @oxygen_clear_bits16(%struct.oxygen* %32, i32 %33, i32 %38)
  %40 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %41 = call i32 @xonar_init_cs53x1(%struct.oxygen* %40)
  %42 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %43 = call i32 @xonar_enable_output(%struct.oxygen* %42)
  %44 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %45 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @snd_component_add(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %49 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_component_add(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pcm1796_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @xonar_init_cs53x1(%struct.oxygen*) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
