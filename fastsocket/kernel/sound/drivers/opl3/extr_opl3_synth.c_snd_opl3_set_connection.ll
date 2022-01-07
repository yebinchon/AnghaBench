; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32 (%struct.snd_opl3*, i32, i8)* }

@SNDRV_DM_FM_MODE_OPL3 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OPL3_RIGHT_4OP_0 = common dso_local global i32 0, align 4
@OPL3_RIGHT_4OP_1 = common dso_local global i32 0, align 4
@OPL3_RIGHT_4OP_2 = common dso_local global i32 0, align 4
@OPL3_LEFT_4OP_0 = common dso_local global i32 0, align 4
@OPL3_LEFT_4OP_1 = common dso_local global i32 0, align 4
@OPL3_LEFT_4OP_2 = common dso_local global i32 0, align 4
@OPL3_RIGHT = common dso_local global i32 0, align 4
@OPL3_REG_CONNECTION_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, i32)* @snd_opl3_set_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_set_connection(%struct.snd_opl3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.snd_opl3* %0, %struct.snd_opl3** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %8 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_DM_FM_MODE_OPL3, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OPL3_RIGHT_4OP_0, align 4
  %18 = load i32, i32* @OPL3_RIGHT_4OP_1, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @OPL3_RIGHT_4OP_2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @OPL3_LEFT_4OP_0, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @OPL3_LEFT_4OP_1, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @OPL3_LEFT_4OP_2, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %16, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  %30 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %31 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %30, i32 0, i32 1
  %32 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %31, align 8
  %33 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %34 = load i32, i32* @OPL3_RIGHT, align 4
  %35 = load i32, i32* @OPL3_REG_CONNECTION_SELECT, align 4
  %36 = or i32 %34, %35
  %37 = load i8, i8* %6, align 1
  %38 = call i32 %32(%struct.snd_opl3* %33, i32 %36, i8 zeroext %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %15, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
