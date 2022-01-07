; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usX2Yhwdep.c_usX2Y_hwdep_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usX2Yhwdep.c_usX2Y_hwdep_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_hwdep = type { i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SND_USX2Y_LOADER_ID = common dso_local global i32 0, align 4
@SNDRV_HWDEP_IFACE_USX2Y = common dso_local global i32 0, align 4
@snd_usX2Y_hwdep_dsp_status = common dso_local global i32 0, align 4
@snd_usX2Y_hwdep_dsp_load = common dso_local global i32 0, align 4
@snd_us428ctls_mmap = common dso_local global i32 0, align 4
@snd_us428ctls_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"/proc/bus/usb/%03d/%03d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usX2Y_hwdep_new(%struct.snd_card* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_hwdep*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = load i32, i32* @SND_USX2Y_LOADER_ID, align 4
  %10 = call i32 @snd_hwdep_new(%struct.snd_card* %8, i32 %9, i32 0, %struct.snd_hwdep** %7)
  store i32 %10, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* @SNDRV_HWDEP_IFACE_USX2Y, align 4
  %16 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %17 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %19 = call i32 @usX2Y(%struct.snd_card* %18)
  %20 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %21 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @snd_usX2Y_hwdep_dsp_status, align 4
  %23 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %24 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @snd_usX2Y_hwdep_dsp_load, align 4
  %27 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %28 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @snd_us428ctls_mmap, align 4
  %31 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %32 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @snd_us428ctls_poll, align 4
  %35 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %36 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %39 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %41 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %14, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @snd_hwdep_new(%struct.snd_card*, i32, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @usX2Y(%struct.snd_card*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
