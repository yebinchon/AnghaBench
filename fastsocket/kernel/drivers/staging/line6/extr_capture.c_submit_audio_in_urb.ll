; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_capture.c_submit_audio_in_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_capture.c_submit_audio_in_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_line6_pcm = type { i32, i32, i32, i64, %struct.urb** }
%struct.urb = type { i32, %struct.snd_pcm_substream*, i64, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@LINE6_ISO_BUFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no free URB found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"URB in #%d submission failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @submit_audio_in_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_audio_in_urb(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_line6_pcm* %12, %struct.snd_line6_pcm** %6, align 8
  %13 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %14 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %17, i32 0, i32 2
  %19 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  %20 = call i32 @find_first_zero_bit(i32* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = call i32 @s2m(%struct.snd_pcm_substream* %29)
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %109

34:                                               ; preds = %1
  %35 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %35, i32 0, i32 4
  %37 = load %struct.urb**, %struct.urb*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.urb*, %struct.urb** %37, i64 %39
  %41 = load %struct.urb*, %struct.urb** %40, align 8
  store %struct.urb* %41, %struct.urb** %9, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %66, %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load %struct.urb*, %struct.urb** %9, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 3
  %49 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %49, i64 %51
  store %struct.usb_iso_packet_descriptor* %52, %struct.usb_iso_packet_descriptor** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %55 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %57 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %60 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %62 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %42

69:                                               ; preds = %42
  %70 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %71 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %75 = mul i32 %73, %74
  %76 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %77 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul i32 %75, %78
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %72, %80
  %82 = load %struct.urb*, %struct.urb** %9, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.urb*, %struct.urb** %9, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %88 = load %struct.urb*, %struct.urb** %9, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  store %struct.snd_pcm_substream* %87, %struct.snd_pcm_substream** %89, align 8
  %90 = load %struct.urb*, %struct.urb** %9, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call i64 @usb_submit_urb(%struct.urb* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %69
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %97 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %96, i32 0, i32 2
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  br label %104

99:                                               ; preds = %69
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %101 = call i32 @s2m(%struct.snd_pcm_substream* %100)
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %106 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %105, i32 0, i32 1
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %24
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @s2m(%struct.snd_pcm_substream*) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
