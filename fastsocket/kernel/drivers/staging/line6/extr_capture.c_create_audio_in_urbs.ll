; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_capture.c_create_audio_in_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_capture.c_create_audio_in_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i32, %struct.TYPE_2__*, %struct.urb** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.urb = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@LINE6_ISO_BUFFERS = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@LINE6_ISO_INTERVAL = common dso_local global i32 0, align 4
@audio_in_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_audio_in_urbs(%struct.snd_line6_pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %68, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  %11 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.urb* @usb_alloc_urb(i32 %11, i32 %12)
  %14 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %15 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %14, i32 0, i32 2
  %16 = load %struct.urb**, %struct.urb*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.urb*, %struct.urb** %16, i64 %18
  store %struct.urb* %13, %struct.urb** %19, align 8
  store %struct.urb* %13, %struct.urb** %5, align 8
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = icmp eq %struct.urb* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %10
  %32 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %33 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %40 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %45 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @usb_rcvisocpipe(i32 %43, i32 %48)
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @URB_ISO_ASAP, align 4
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @LINE6_ISO_INTERVAL, align 4
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @audio_in_callback, align 4
  %66 = load %struct.urb*, %struct.urb** %5, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %31
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %6

71:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
