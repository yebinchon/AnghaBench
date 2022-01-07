; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i32, i32, i32*, %struct.usb_device*, %struct.usb_iso_packet_descriptor*, i8* }
%struct.usb_device = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32 }
%struct.snd_usb_caiaqdev = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_device* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@ENDPOINT_PLAYBACK = common dso_local global i32 0, align 4
@ENDPOINT_CAPTURE = common dso_local global i32 0, align 4
@N_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to kmalloc() urbs, OOM!?\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FRAMES_PER_URB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to usb_alloc_urb(), OOM!?\0A\00", align 1
@BYTES_PER_FRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"unable to kmalloc() transfer buffer, OOM!?\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@read_completed = common dso_local global i32 0, align 4
@write_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb** (%struct.snd_usb_caiaqdev*, i32, i32*)* @alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb** @alloc_urbs(%struct.snd_usb_caiaqdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.urb**, align 8
  %5 = alloca %struct.snd_usb_caiaqdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb**, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %15 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %23 = load i32, i32* @ENDPOINT_PLAYBACK, align 4
  %24 = call i32 @usb_sndisocpipe(%struct.usb_device* %22, i32 %23)
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %27 = load i32, i32* @ENDPOINT_CAPTURE, align 4
  %28 = call i32 @usb_rcvisocpipe(%struct.usb_device* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @N_URBS, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.urb**
  store %struct.urb** %37, %struct.urb*** %10, align 8
  %38 = load %struct.urb**, %struct.urb*** %10, align 8
  %39 = icmp ne %struct.urb** %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = call i32 @log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store %struct.urb** null, %struct.urb*** %4, align 8
  br label %200

45:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %194, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @N_URBS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %197

50:                                               ; preds = %46
  %51 = load i32, i32* @FRAMES_PER_URB, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.urb* @usb_alloc_urb(i32 %51, i32 %52)
  %54 = load %struct.urb**, %struct.urb*** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.urb*, %struct.urb** %54, i64 %56
  store %struct.urb* %53, %struct.urb** %57, align 8
  %58 = load %struct.urb**, %struct.urb*** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.urb*, %struct.urb** %58, i64 %60
  %62 = load %struct.urb*, %struct.urb** %61, align 8
  %63 = icmp ne %struct.urb* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %50
  %65 = call i32 @log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.urb**, %struct.urb*** %10, align 8
  store %struct.urb** %69, %struct.urb*** %4, align 8
  br label %200

70:                                               ; preds = %50
  %71 = load i32, i32* @FRAMES_PER_URB, align 4
  %72 = load i32, i32* @BYTES_PER_FRAME, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kmalloc(i32 %73, i32 %74)
  %76 = load %struct.urb**, %struct.urb*** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.urb*, %struct.urb** %76, i64 %78
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 9
  store i8* %75, i8** %81, align 8
  %82 = load %struct.urb**, %struct.urb*** %10, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.urb*, %struct.urb** %82, i64 %84
  %86 = load %struct.urb*, %struct.urb** %85, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 9
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %70
  %91 = call i32 @log(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.urb**, %struct.urb*** %10, align 8
  store %struct.urb** %95, %struct.urb*** %4, align 8
  br label %200

96:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %120, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @FRAMES_PER_URB, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load %struct.urb**, %struct.urb*** %10, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.urb*, %struct.urb** %102, i64 %104
  %106 = load %struct.urb*, %struct.urb** %105, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 8
  %108 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %108, i64 %110
  store %struct.usb_iso_packet_descriptor* %111, %struct.usb_iso_packet_descriptor** %13, align 8
  %112 = load i32, i32* @BYTES_PER_FRAME, align 4
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %116 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @BYTES_PER_FRAME, align 4
  %118 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %119 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %101
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %97

123:                                              ; preds = %97
  %124 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %125 = load %struct.urb**, %struct.urb*** %10, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.urb*, %struct.urb** %125, i64 %127
  %129 = load %struct.urb*, %struct.urb** %128, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 7
  store %struct.usb_device* %124, %struct.usb_device** %130, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.urb**, %struct.urb*** %10, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.urb*, %struct.urb** %132, i64 %134
  %136 = load %struct.urb*, %struct.urb** %135, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 0
  store i32 %131, i32* %137, align 8
  %138 = load i32, i32* @FRAMES_PER_URB, align 4
  %139 = load i32, i32* @BYTES_PER_FRAME, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load %struct.urb**, %struct.urb*** %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.urb*, %struct.urb** %141, i64 %143
  %145 = load %struct.urb*, %struct.urb** %144, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 1
  store i32 %140, i32* %146, align 4
  %147 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %148 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load %struct.urb**, %struct.urb*** %10, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.urb*, %struct.urb** %153, i64 %155
  %157 = load %struct.urb*, %struct.urb** %156, align 8
  %158 = getelementptr inbounds %struct.urb, %struct.urb* %157, i32 0, i32 6
  store i32* %152, i32** %158, align 8
  %159 = load %struct.urb**, %struct.urb*** %10, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.urb*, %struct.urb** %159, i64 %161
  %163 = load %struct.urb*, %struct.urb** %162, align 8
  %164 = getelementptr inbounds %struct.urb, %struct.urb* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load i32, i32* @URB_ISO_ASAP, align 4
  %166 = load %struct.urb**, %struct.urb*** %10, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.urb*, %struct.urb** %166, i64 %168
  %170 = load %struct.urb*, %struct.urb** %169, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 5
  store i32 %165, i32* %171, align 4
  %172 = load i32, i32* @FRAMES_PER_URB, align 4
  %173 = load %struct.urb**, %struct.urb*** %10, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.urb*, %struct.urb** %173, i64 %175
  %177 = load %struct.urb*, %struct.urb** %176, align 8
  %178 = getelementptr inbounds %struct.urb, %struct.urb* %177, i32 0, i32 3
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %123
  %183 = load i32, i32* @read_completed, align 4
  br label %186

184:                                              ; preds = %123
  %185 = load i32, i32* @write_completed, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = load %struct.urb**, %struct.urb*** %10, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.urb*, %struct.urb** %188, i64 %190
  %192 = load %struct.urb*, %struct.urb** %191, align 8
  %193 = getelementptr inbounds %struct.urb, %struct.urb* %192, i32 0, i32 4
  store i32 %187, i32* %193, align 8
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %46

197:                                              ; preds = %46
  %198 = load i32*, i32** %7, align 8
  store i32 0, i32* %198, align 4
  %199 = load %struct.urb**, %struct.urb*** %10, align 8
  store %struct.urb** %199, %struct.urb*** %4, align 8
  br label %200

200:                                              ; preds = %197, %90, %64, %40
  %201 = load %struct.urb**, %struct.urb*** %4, align 8
  ret %struct.urb** %201
}

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @log(i8*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
