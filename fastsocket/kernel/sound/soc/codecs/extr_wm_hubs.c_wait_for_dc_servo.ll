; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_wait_for_dc_servo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_wait_for_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Waiting for DC servo...\0A\00", align 1
@WM8993_DC_SERVO_READBACK_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DC servo status: %x\0A\00", align 1
@WM8993_DCS_CAL_COMPLETE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Timed out waiting for DC Servo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @wait_for_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_dc_servo(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %6 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i32, i8*, ...) @dev_dbg(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = call i32 @msleep(i32 1)
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = load i32, i32* @WM8993_DC_SERVO_READBACK_0, align 4
  %15 = call i32 @snd_soc_read(%struct.snd_soc_codec* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @WM8993_DCS_CAL_COMPLETE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @WM8993_DCS_CAL_COMPLETE_MASK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 1000
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ false, %21 ], [ %29, %27 ]
  br i1 %31, label %9, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @WM8993_DCS_CAL_COMPLETE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @WM8993_DCS_CAL_COMPLETE_MASK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
