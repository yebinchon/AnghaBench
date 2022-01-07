; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_mixart_hwdep_dsp_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_mixart_hwdep_dsp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.mixart_mgr* }
%struct.mixart_mgr = type { i32 }
%struct.snd_hwdep_dsp_status = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"miXart\00", align 1
@MIXART_HARDW_FILES_MAX_INDEX = common dso_local global i32 0, align 4
@MIXART_MOTHERBOARD_ELF_INDEX = common dso_local global i32 0, align 4
@MIXART_DRIVER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.snd_hwdep_dsp_status*)* @mixart_hwdep_dsp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_hwdep_dsp_status(%struct.snd_hwdep* %0, %struct.snd_hwdep_dsp_status* %1) #0 {
  %3 = alloca %struct.snd_hwdep*, align 8
  %4 = alloca %struct.snd_hwdep_dsp_status*, align 8
  %5 = alloca %struct.mixart_mgr*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %3, align 8
  store %struct.snd_hwdep_dsp_status* %1, %struct.snd_hwdep_dsp_status** %4, align 8
  %6 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %7 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %6, i32 0, i32 0
  %8 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  store %struct.mixart_mgr* %8, %struct.mixart_mgr** %5, align 8
  %9 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %10 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @MIXART_HARDW_FILES_MAX_INDEX, align 4
  %14 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %15 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %17 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MIXART_MOTHERBOARD_ELF_INDEX, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %25 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* @MIXART_DRIVER_VERSION, align 4
  %28 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %29 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
