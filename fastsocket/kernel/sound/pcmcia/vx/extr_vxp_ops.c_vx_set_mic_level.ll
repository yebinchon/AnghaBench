; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vx_set_mic_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vx_set_mic_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32 }
%struct.snd_vxpocket = type { i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@VXP_CDSP_MIC_SEL_MASK = common dso_local global i32 0, align 4
@MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_set_mic_level(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vxpocket*, align 8
  %6 = alloca i64, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %8 = bitcast %struct.vx_core* %7 to %struct.snd_vxpocket*
  store %struct.snd_vxpocket* %8, %struct.snd_vxpocket** %5, align 8
  %9 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %10 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %18 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %22 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VXP_CDSP_MIC_SEL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @vx_compute_mic_level(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %31 = load i32, i32* @MICRO, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vx_outb(%struct.vx_core* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %16
  %35 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %36 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %35, i32 0, i32 1
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vx_compute_mic_level(i32) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
