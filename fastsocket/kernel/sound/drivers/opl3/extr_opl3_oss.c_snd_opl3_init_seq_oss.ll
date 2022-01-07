; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_init_seq_oss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_init_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32, %struct.snd_seq_device* }
%struct.snd_seq_device = type { i32 }
%struct.snd_seq_oss_reg = type { %struct.snd_opl3*, i32, i32, i32, i32 }

@SNDRV_SEQ_DEV_ID_OSS = common dso_local global i32 0, align 4
@SYNTH_TYPE_FM = common dso_local global i32 0, align 4
@OPL3_HW_OPL3 = common dso_local global i64 0, align 8
@FM_TYPE_ADLIB = common dso_local global i32 0, align 4
@MAX_OPL2_VOICES = common dso_local global i32 0, align 4
@FM_TYPE_OPL3 = common dso_local global i32 0, align 4
@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@oss_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_init_seq_oss(%struct.snd_opl3* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_oss_reg*, align 8
  %6 = alloca %struct.snd_seq_device*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %8 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SNDRV_SEQ_DEV_ID_OSS, align 4
  %11 = call i64 @snd_seq_device_new(i32 %9, i32 0, i32 %10, i32 24, %struct.snd_seq_device** %6)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.snd_seq_device*, %struct.snd_seq_device** %6, align 8
  %16 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %17 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %16, i32 0, i32 2
  store %struct.snd_seq_device* %15, %struct.snd_seq_device** %17, align 8
  %18 = load %struct.snd_seq_device*, %struct.snd_seq_device** %6, align 8
  %19 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlcpy(i32 %20, i8* %21, i32 4)
  %23 = load %struct.snd_seq_device*, %struct.snd_seq_device** %6, align 8
  %24 = call %struct.snd_seq_oss_reg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %23)
  store %struct.snd_seq_oss_reg* %24, %struct.snd_seq_oss_reg** %5, align 8
  %25 = load i32, i32* @SYNTH_TYPE_FM, align 4
  %26 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %27 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %29 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OPL3_HW_OPL3, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %14
  %34 = load i32, i32* @FM_TYPE_ADLIB, align 4
  %35 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %36 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %38 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %39 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %47

40:                                               ; preds = %14
  %41 = load i32, i32* @FM_TYPE_OPL3, align 4
  %42 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %43 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @MAX_OPL3_VOICES, align 4
  %45 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %46 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* @oss_callback, align 4
  %49 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %50 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %52 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %5, align 8
  %53 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %52, i32 0, i32 0
  store %struct.snd_opl3* %51, %struct.snd_opl3** %53, align 8
  %54 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %55 = call i64 @snd_opl3_oss_create_port(%struct.snd_opl3* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %59 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_seq_device*, %struct.snd_seq_device** %6, align 8
  %62 = call i32 @snd_device_register(i32 %60, %struct.snd_seq_device* %61)
  br label %63

63:                                               ; preds = %13, %57, %47
  ret void
}

declare dso_local i64 @snd_seq_device_new(i32, i32, i32, i32, %struct.snd_seq_device**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.snd_seq_oss_reg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i64 @snd_opl3_oss_create_port(%struct.snd_opl3*) #1

declare dso_local i32 @snd_device_register(i32, %struct.snd_seq_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
