; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_i_usX2Y_usbpcm_urb_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_i_usX2Y_usbpcm_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { i32, %struct.urb*, i32, %struct.usX2Ydev* }
%struct.usX2Ydev = type { i32, %struct.snd_usX2Y_substream**, i32 }

@state_PREPARED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"hcd_frame=%i ep=%i%s status=%i start_frame=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @i_usX2Y_usbpcm_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i_usX2Y_usbpcm_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  %7 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 3
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %9, align 8
  store %struct.snd_usX2Y_substream* %10, %struct.snd_usX2Y_substream** %3, align 8
  %11 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %11, i32 0, i32 3
  %13 = load %struct.usX2Ydev*, %struct.usX2Ydev** %12, align 8
  store %struct.usX2Ydev* %13, %struct.usX2Ydev** %4, align 8
  %14 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load i64, i64* @state_PREPARED, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %24 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_get_current_frame_number(i32 %25)
  %27 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @usb_pipein(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i8* %36, i32 %39, i32 %42)
  br label %148

44:                                               ; preds = %1
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %52 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = call i32 @usX2Y_error_urb_status(%struct.usX2Ydev* %51, %struct.snd_usX2Y_substream* %52, %struct.urb* %53)
  br label %148

55:                                               ; preds = %44
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 65535
  %60 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %61 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.urb*, %struct.urb** %2, align 8
  %70 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %71 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %70, i32 0, i32 1
  store %struct.urb* %69, %struct.urb** %71, align 8
  br label %77

72:                                               ; preds = %55
  %73 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %74 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %75 = load %struct.urb*, %struct.urb** %2, align 8
  %76 = call i32 @usX2Y_error_sequence(%struct.usX2Ydev* %73, %struct.snd_usX2Y_substream* %74, %struct.urb* %75)
  br label %148

77:                                               ; preds = %68
  %78 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %79 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %78, i32 0, i32 1
  %80 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %79, align 8
  %81 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %82 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %80, i64 %81
  %83 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %82, align 8
  store %struct.snd_usX2Y_substream* %83, %struct.snd_usX2Y_substream** %5, align 8
  %84 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %85 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %84, i32 0, i32 1
  %86 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %85, align 8
  %87 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %88 = add i64 %87, 2
  %89 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %86, i64 %88
  %90 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %89, align 8
  store %struct.snd_usX2Y_substream* %90, %struct.snd_usX2Y_substream** %6, align 8
  %91 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %92 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %91, i32 0, i32 1
  %93 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %92, align 8
  %94 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %95 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %93, i64 %94
  %96 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %95, align 8
  store %struct.snd_usX2Y_substream* %96, %struct.snd_usX2Y_substream** %7, align 8
  %97 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %98 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %97, i32 0, i32 1
  %99 = load %struct.urb*, %struct.urb** %98, align 8
  %100 = icmp ne %struct.urb* %99, null
  br i1 %100, label %101, label %148

101:                                              ; preds = %77
  %102 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %103 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %102, i32 0, i32 0
  %104 = call i64 @atomic_read(i32* %103)
  %105 = load i64, i64* @state_PREPARED, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %101
  %108 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %109 = icmp eq %struct.snd_usX2Y_substream* null, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %112 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %111, i32 0, i32 1
  %113 = load %struct.urb*, %struct.urb** %112, align 8
  %114 = icmp ne %struct.urb* %113, null
  br i1 %114, label %115, label %148

115:                                              ; preds = %110, %107
  %116 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %117 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %116, i32 0, i32 1
  %118 = load %struct.urb*, %struct.urb** %117, align 8
  %119 = icmp ne %struct.urb* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %122 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %121, i32 0, i32 0
  %123 = call i64 @atomic_read(i32* %122)
  %124 = load i64, i64* @state_PREPARED, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %120, %115
  %127 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %128 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %129 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %130 = load %struct.urb*, %struct.urb** %2, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @usX2Y_usbpcm_usbframe_complete(%struct.snd_usX2Y_substream* %127, %struct.snd_usX2Y_substream* %128, %struct.snd_usX2Y_substream* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %126
  %136 = call i64 (...) @nr_of_packs()
  %137 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %138 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  br label %147

143:                                              ; preds = %126
  %144 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %145 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %146 = call i32 @usX2Y_clients_stop(%struct.usX2Ydev* %145)
  br label %147

147:                                              ; preds = %143, %135
  br label %148

148:                                              ; preds = %22, %50, %72, %147, %120, %110, %101, %77
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @usb_get_current_frame_number(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usX2Y_error_urb_status(%struct.usX2Ydev*, %struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usX2Y_error_sequence(%struct.usX2Ydev*, %struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i32 @usX2Y_usbpcm_usbframe_complete(%struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, i32) #1

declare dso_local i64 @nr_of_packs(...) #1

declare dso_local i32 @usX2Y_clients_stop(%struct.usX2Ydev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
