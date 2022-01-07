; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_fill_out_urb_mode_0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_fill_out_urb_mode_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i64*, %struct.TYPE_2__, i32*, %struct.snd_pcm_substream** }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i32 }
%struct.urb = type { i8* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@BYTES_PER_SAMPLE_USB = common dso_local global i32 0, align 4
@CHANNELS_PER_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @fill_out_urb_mode_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_out_urb_mode_0(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
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
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %158, %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %25 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %159

28:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %111, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %32 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %29
  %36 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %37 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %36, i32 0, i32 4
  %38 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %38, i64 %40
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %41, align 8
  store %struct.snd_pcm_substream* %42, %struct.snd_pcm_substream** %8, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %44 = icmp ne %struct.snd_pcm_substream* %43, null
  br i1 %44, label %45, label %105

45:                                               ; preds = %35
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %47, align 8
  store %struct.snd_pcm_runtime* %48, %struct.snd_pcm_runtime** %11, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %12, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %52, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %59 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %57, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %72 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %80 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %88 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %45
  %98 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %99 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %45
  br label %110

105:                                              ; preds = %35
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %105, %104
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %29

116:                                              ; preds = %29
  %117 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %118 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %158

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %125 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BYTES_PER_SAMPLE_USB, align 4
  %128 = mul nsw i32 %126, %127
  %129 = srem i32 %123, %128
  %130 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %131 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CHANNELS_PER_STREAM, align 4
  %134 = mul nsw i32 %132, %133
  %135 = icmp eq i32 %129, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %122
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %152, %136
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %140 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %137
  %144 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call zeroext i8 @MAKE_CHECKBYTE(%struct.snd_usb_caiaqdev* %144, i32 %145, i32 %146)
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  store i8 %147, i8* %151, align 1
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %137

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %122, %116
  br label %22

159:                                              ; preds = %22
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local zeroext i8 @MAKE_CHECKBYTE(%struct.snd_usb_caiaqdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
