; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_hwdep.c_snd_vx_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_hwdep.c_snd_vx_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { %struct.TYPE_5__*, %struct.snd_hwdep* }
%struct.TYPE_5__ = type { i8* }
%struct.snd_hwdep = type { i32, i32, %struct.TYPE_4__, %struct.vx_core*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SND_VX_HWDEP_ID = common dso_local global i32 0, align 4
@SNDRV_HWDEP_IFACE_VX = common dso_local global i32 0, align 4
@vx_hwdep_dsp_status = common dso_local global i32 0, align 4
@vx_hwdep_dsp_load = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"VX Loader (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_vx_setup_firmware(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i32, i32* @SND_VX_HWDEP_ID, align 4
  %10 = call i32 @snd_hwdep_new(%struct.TYPE_5__* %8, i32 %9, i32 0, %struct.snd_hwdep** %5)
  store i32 %10, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load i32, i32* @SNDRV_HWDEP_IFACE_VX, align 4
  %16 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %17 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %19 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %20 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %19, i32 0, i32 3
  store %struct.vx_core* %18, %struct.vx_core** %20, align 8
  %21 = load i32, i32* @vx_hwdep_dsp_status, align 4
  %22 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %23 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @vx_hwdep_dsp_load, align 4
  %26 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %27 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %30 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %32 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %35 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sprintf(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %41 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %42 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %41, i32 0, i32 1
  store %struct.snd_hwdep* %40, %struct.snd_hwdep** %42, align 8
  %43 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %44 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @snd_card_register(%struct.TYPE_5__* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %14, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_hwdep_new(%struct.TYPE_5__*, i32, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @snd_card_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
