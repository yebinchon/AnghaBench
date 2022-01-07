; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_hwdep = type { i32, %struct.TYPE_4__, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SND_USB_STREAM_ID = common dso_local global i32 0, align 4
@SNDRV_HWDEP_IFACE_USB_STREAM = common dso_local global i32 0, align 4
@usb_stream_hwdep_open = common dso_local global i32 0, align 4
@usb_stream_hwdep_release = common dso_local global i32 0, align 4
@usb_stream_hwdep_ioctl = common dso_local global i8* null, align 8
@usb_stream_hwdep_mmap = common dso_local global i32 0, align 4
@usb_stream_hwdep_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"/proc/bus/usb/%03d/%03d/hwdeppcm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @usb_stream_hwdep_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stream_hwdep_new(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  %6 = alloca %struct.usb_device*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = call %struct.TYPE_6__* @US122L(%struct.snd_card* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %12 = load i32, i32* @SND_USB_STREAM_ID, align 4
  %13 = call i32 @snd_hwdep_new(%struct.snd_card* %11, i32 %12, i32 0, %struct.snd_hwdep** %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load i32, i32* @SNDRV_HWDEP_IFACE_USB_STREAM, align 4
  %20 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %21 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %23 = call %struct.TYPE_6__* @US122L(%struct.snd_card* %22)
  %24 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %25 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %24, i32 0, i32 2
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %25, align 8
  %26 = load i32, i32* @usb_stream_hwdep_open, align 4
  %27 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %28 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @usb_stream_hwdep_release, align 4
  %31 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %32 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i8*, i8** @usb_stream_hwdep_ioctl, align 8
  %35 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %36 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @usb_stream_hwdep_ioctl, align 8
  %39 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %40 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* @usb_stream_hwdep_mmap, align 4
  %43 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %44 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @usb_stream_hwdep_poll, align 4
  %47 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %48 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %51 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sprintf(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %18, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @US122L(%struct.snd_card*) #1

declare dso_local i32 @snd_hwdep_new(%struct.snd_card*, i32, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
