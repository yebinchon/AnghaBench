; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_toggle_dac_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_toggle_dac_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.vx_core*, i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@XX_CODEC_DAC_CONTROL_REGISTER = common dso_local global i32 0, align 4
@DAC_ATTEN_MAX = common dso_local global i32 0, align 4
@DAC_ATTEN_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_toggle_dac_mute(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %45, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %9 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %6
  %15 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %16 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.vx_core*, i32, i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %23 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.vx_core*, i32, i32)*, i32 (%struct.vx_core*, i32, i32)** %25, align 8
  %27 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %28 = load i32, i32* @XX_CODEC_DAC_CONTROL_REGISTER, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %26(%struct.vx_core* %27, i32 %28, i32 %29)
  br label %44

31:                                               ; preds = %14
  %32 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @XX_CODEC_DAC_CONTROL_REGISTER, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @DAC_ATTEN_MAX, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @DAC_ATTEN_MIN, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @vx_set_codec_reg(%struct.vx_core* %32, i32 %33, i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %41, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local i32 @vx_set_codec_reg(%struct.vx_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
