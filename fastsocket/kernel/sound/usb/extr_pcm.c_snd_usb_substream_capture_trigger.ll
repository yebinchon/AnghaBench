; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_substream_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_substream_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@retire_capture_urb = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_usb_substream_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_substream_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %11, align 8
  store %struct.snd_usb_substream* %12, %struct.snd_usb_substream** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %51 [
    i32 129, label %14
    i32 128, label %30
    i32 131, label %35
    i32 130, label %42
  ]

14:                                               ; preds = %2
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %16 = call i32 @start_endpoints(%struct.snd_usb_substream* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %14
  %22 = load i8*, i8** @retire_capture_urb, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32* %23, i32** %27, align 8
  %28 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %29 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %54

30:                                               ; preds = %2
  %31 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %32 = call i32 @stop_endpoints(%struct.snd_usb_substream* %31, i32 0, i32 0, i32 0)
  %33 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %34 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %54

35:                                               ; preds = %2
  %36 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %37 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %41 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %54

42:                                               ; preds = %2
  %43 = load i8*, i8** @retire_capture_urb, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %46 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* %44, i32** %48, align 8
  %49 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %50 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 0, i32* %3, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %42, %35, %30, %21, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @start_endpoints(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
