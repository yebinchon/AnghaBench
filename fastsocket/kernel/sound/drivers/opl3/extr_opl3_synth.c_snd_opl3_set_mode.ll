; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32, i32 (%struct.snd_opl3*, i32, i32)* }

@SNDRV_DM_FM_MODE_OPL3 = common dso_local global i32 0, align 4
@OPL3_HW_OPL3 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OPL3_RIGHT = common dso_local global i32 0, align 4
@OPL3_REG_CONNECTION_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, i32)* @snd_opl3_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_set_mode(%struct.snd_opl3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SNDRV_DM_FM_MODE_OPL3, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %11 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OPL3_HW_OPL3, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %21 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %23 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OPL3_HW_OPL3, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %29 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %28, i32 0, i32 2
  %30 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %29, align 8
  %31 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %32 = load i32, i32* @OPL3_RIGHT, align 4
  %33 = load i32, i32* @OPL3_REG_CONNECTION_SELECT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 %30(%struct.snd_opl3* %31, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %27, %18
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
