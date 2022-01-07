; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_in_urb_mode3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_in_urb_mode3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32, i32*, i32*, i64, %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i32 }
%struct.urb = type { i8* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@BYTES_PER_SAMPLE_USB = common dso_local global i32 0, align 4
@CHANNELS_PER_STREAM = common dso_local global i32 0, align 4
@BYTES_PER_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c" EXPECTED: %02x got %02x, c %d, stream %d, i %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @read_in_urb_mode3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_in_urb_mode3(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.usb_iso_packet_descriptor* %2, %struct.usb_iso_packet_descriptor** %6, align 8
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8* %23, i8** %7, align 8
  %24 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %25 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BYTES_PER_SAMPLE_USB, align 4
  %28 = load i32, i32* @CHANNELS_PER_STREAM, align 4
  %29 = mul nsw i32 %27, %28
  %30 = srem i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %199

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %188, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %37 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %189

40:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %185, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %44 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %188

47:                                               ; preds = %41
  %48 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %49 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %48, i32 0, i32 5
  %50 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %50, i64 %52
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %53, align 8
  store %struct.snd_pcm_substream* %54, %struct.snd_pcm_substream** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %56 = icmp ne %struct.snd_pcm_substream* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %47
  %58 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %59 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %64, align 8
  store %struct.snd_pcm_runtime* %65, %struct.snd_pcm_runtime** %15, align 8
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %69, i32 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %62, %57, %47
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %181, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @CHANNELS_PER_STREAM, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %184

79:                                               ; preds = %75
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %136

82:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %123, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %97 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %95, i64 %104
  store i8 %94, i8* %105, align 1
  %106 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %107 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %87
  %116 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %117 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %87
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %83

126:                                              ; preds = %83
  %127 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %128 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %129 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %127
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %126, %79
  %137 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i32, i32* %8, align 4
  %147 = shl i32 %146, 1
  %148 = load i32, i32* %12, align 4
  %149 = or i32 %147, %148
  %150 = icmp ne i32 %145, %149
  br i1 %150, label %151, label %178

151:                                              ; preds = %136
  %152 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %153 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %178, label %156

156:                                              ; preds = %151
  %157 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %158 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = shl i32 %162, 1
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %163, %164
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %165, i8 zeroext %170, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %161, %156
  %176 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %177 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %151, %136
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %75

184:                                              ; preds = %75
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %41

188:                                              ; preds = %41
  br label %34

189:                                              ; preds = %34
  %190 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %191 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %196 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %196, align 8
  br label %199

199:                                              ; preds = %32, %194, %189
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
