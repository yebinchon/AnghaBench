; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_device.c_snd_usb_caiaq_set_audio_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_device.c_snd_usb_caiaq_set_audio_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32, i32 }

@SAMPLERATE_44100 = common dso_local global i8 0, align 1
@SAMPLERATE_48000 = common dso_local global i8 0, align 1
@SAMPLERATE_88200 = common dso_local global i8 0, align 1
@SAMPLERATE_96000 = common dso_local global i8 0, align 1
@SAMPLERATE_192000 = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@DEPTH_16 = common dso_local global i8 0, align 1
@DEPTH_24 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [46 x i8] c"setting audio params: %d Hz, %d bits, %d bpp\0A\00", align 1
@EP1_CMD_AUDIO_PARAMS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to set the device's audio params\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_caiaq_set_audio_params(%struct.snd_usb_caiaqdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_caiaqdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %28 [
    i32 44100, label %13
    i32 48000, label %16
    i32 88200, label %19
    i32 96000, label %22
    i32 192000, label %25
  ]

13:                                               ; preds = %4
  %14 = load i8, i8* @SAMPLERATE_44100, align 1
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  br label %31

16:                                               ; preds = %4
  %17 = load i8, i8* @SAMPLERATE_48000, align 1
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  br label %31

19:                                               ; preds = %4
  %20 = load i8, i8* @SAMPLERATE_88200, align 1
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %20, i8* %21, align 1
  br label %31

22:                                               ; preds = %4
  %23 = load i8, i8* @SAMPLERATE_96000, align 1
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  br label %31

25:                                               ; preds = %4
  %26 = load i8, i8* @SAMPLERATE_192000, align 1
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %103

31:                                               ; preds = %25, %22, %19, %16, %13
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %39 [
    i32 16, label %33
    i32 24, label %36
  ]

33:                                               ; preds = %31
  %34 = load i8, i8* @DEPTH_16, align 1
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  store i8 %34, i8* %35, align 1
  br label %42

36:                                               ; preds = %31
  %37 = load i8, i8* @DEPTH_24, align 1
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  br label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %103

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 2
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 3
  store i8 %49, i8* %50, align 1
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 4
  store i8 1, i8* %51, align 1
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %57 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 4
  %58 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %59 = load i32, i32* @EP1_CMD_AUDIO_PARAMS, align 4
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %61 = call i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev* %58, i32 %59, i8* %60, i32 5)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %42
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %103

66:                                               ; preds = %42
  %67 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %68 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %71 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* @HZ, align 4
  %76 = call i32 @wait_event_timeout(i32 %69, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @EPIPE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %103

81:                                               ; preds = %66
  %82 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %83 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %91 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %86
  %93 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %6, align 8
  %94 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  br label %101

101:                                              ; preds = %98, %97
  %102 = phi i32 [ 0, %97 ], [ %100, %98 ]
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %78, %64, %39, %28
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @snd_usb_caiaq_send_command(%struct.snd_usb_caiaqdev*, i32, i8*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
