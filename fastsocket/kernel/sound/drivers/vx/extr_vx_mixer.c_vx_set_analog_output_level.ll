; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_set_analog_output_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_set_analog_output_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.vx_core*, i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@XX_CODEC_LEVEL_LEFT_REGISTER = common dso_local global i32 0, align 4
@XX_CODEC_LEVEL_RIGHT_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32, i32, i32)* @vx_set_analog_output_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_set_analog_output_level(%struct.vx_core* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %10 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %17 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %24 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.vx_core*, i32, i32)* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %4
  %30 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %31 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %33, align 8
  %35 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %36 = load i32, i32* @XX_CODEC_LEVEL_LEFT_REGISTER, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 %34(%struct.vx_core* %35, i32 %36, i32 %37)
  %39 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %40 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %42, align 8
  %44 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %45 = load i32, i32* @XX_CODEC_LEVEL_RIGHT_REGISTER, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %43(%struct.vx_core* %44, i32 %45, i32 %46)
  br label %59

48:                                               ; preds = %4
  %49 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @XX_CODEC_LEVEL_LEFT_REGISTER, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @vx_set_codec_reg(%struct.vx_core* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @XX_CODEC_LEVEL_RIGHT_REGISTER, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @vx_set_codec_reg(%struct.vx_core* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %29
  ret void
}

declare dso_local i32 @vx_set_codec_reg(%struct.vx_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
