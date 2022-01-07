; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_stream_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_runtime = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i32, i64, i64 }

@STREAM_DISABLED = common dso_local global i64 0, align 8
@STREAM_STARTING = common dso_local global i64 0, align 8
@PCM_N_URBS = common dso_local global i32 0, align 4
@PCM_N_PACKETS_PER_URB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@STREAM_RUNNING = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_runtime*)* @usb6fire_pcm_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_stream_start(%struct.pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.pcm_runtime* %0, %struct.pcm_runtime** %3, align 8
  %8 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STREAM_DISABLED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %102

13:                                               ; preds = %1
  %14 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load i64, i64* @STREAM_STARTING, align 8
  %17 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %76, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PCM_N_URBS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %36, i64 %38
  store %struct.usb_iso_packet_descriptor* %39, %struct.usb_iso_packet_descriptor** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %42 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %46 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %48 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %51 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %53 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %55 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %28
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %61 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i32 @usb_submit_urb(i32* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %73 = call i32 @usb6fire_pcm_stream_stop(%struct.pcm_runtime* %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %103

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %19

79:                                               ; preds = %19
  %80 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %81 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %84 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @HZ, align 4
  %87 = call i32 @wait_event_timeout(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %89 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load i64, i64* @STREAM_RUNNING, align 8
  %94 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %95 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %101

96:                                               ; preds = %79
  %97 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %98 = call i32 @usb6fire_pcm_stream_stop(%struct.pcm_runtime* %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %103

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %1
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %96, %71
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @usb6fire_pcm_stream_stop(%struct.pcm_runtime*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
