; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_in_urb_mode0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_in_urb_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32*, i32*, %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i32 }
%struct.urb = type { i8* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @read_in_urb_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_in_urb_mode0(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.usb_iso_packet_descriptor* %2, %struct.usb_iso_packet_descriptor** %6, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %18 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %7, align 8
  %22 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %23 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %22, i32 0, i32 3
  %24 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %23, align 8
  %25 = call i64 @all_substreams_zero(%struct.snd_pcm_substream** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %112

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %111, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %32 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %112

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %106, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %39 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %36
  %43 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %44 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %43, i32 0, i32 3
  %45 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %45, i64 %47
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %48, align 8
  store %struct.snd_pcm_substream* %49, %struct.snd_pcm_substream** %8, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %51 = icmp ne %struct.snd_pcm_substream* %50, null
  br i1 %51, label %52, label %105

52:                                               ; preds = %42
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %54, align 8
  store %struct.snd_pcm_runtime* %55, %struct.snd_pcm_runtime** %11, align 8
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %12, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %59, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %71 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %69, i64 %78
  store i8 %68, i8* %79, align 1
  %80 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %81 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %89 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %52
  %98 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %99 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %52
  br label %105

105:                                              ; preds = %104, %42
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %36

111:                                              ; preds = %36
  br label %29

112:                                              ; preds = %27, %29
  ret void
}

declare dso_local i64 @all_substreams_zero(%struct.snd_pcm_substream**) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
