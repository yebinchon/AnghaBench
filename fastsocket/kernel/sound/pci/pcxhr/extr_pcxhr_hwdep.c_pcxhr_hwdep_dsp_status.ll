; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_hwdep_dsp_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_hwdep_dsp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { i32, %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i32 }
%struct.snd_hwdep_dsp_status = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pcxhr%d\00", align 1
@PCXHR_FIRMWARE_FILES_MAX_INDEX = common dso_local global i32 0, align 4
@PCXHR_FIRMWARE_DSP_MAIN_INDEX = common dso_local global i32 0, align 4
@PCXHR_DRIVER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.snd_hwdep_dsp_status*)* @pcxhr_hwdep_dsp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_hwdep_dsp_status(%struct.snd_hwdep* %0, %struct.snd_hwdep_dsp_status* %1) #0 {
  %3 = alloca %struct.snd_hwdep*, align 8
  %4 = alloca %struct.snd_hwdep_dsp_status*, align 8
  %5 = alloca %struct.pcxhr_mgr*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %3, align 8
  store %struct.snd_hwdep_dsp_status* %1, %struct.snd_hwdep_dsp_status** %4, align 8
  %6 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %7 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %6, i32 0, i32 1
  %8 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %7, align 8
  store %struct.pcxhr_mgr* %8, %struct.pcxhr_mgr** %5, align 8
  %9 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %10 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sprintf(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @PCXHR_FIRMWARE_FILES_MAX_INDEX, align 4
  %17 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %18 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %20 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCXHR_FIRMWARE_DSP_MAIN_INDEX, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %28 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @PCXHR_DRIVER_VERSION, align 4
  %31 = load %struct.snd_hwdep_dsp_status*, %struct.snd_hwdep_dsp_status** %4, align 8
  %32 = getelementptr inbounds %struct.snd_hwdep_dsp_status, %struct.snd_hwdep_dsp_status* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
