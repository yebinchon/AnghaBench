; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_i_usX2Y_urb_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_i_usX2Y_urb_complete.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @i_usX2Y_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i_usX2Y_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  store %struct.snd_usX2Y_substream* %9, %struct.snd_usX2Y_substream** %3, align 8
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %10, i32 0, i32 3
  %12 = load %struct.usX2Ydev*, %struct.usX2Ydev** %11, align 8
  store %struct.usX2Ydev* %12, %struct.usX2Ydev** %4, align 8
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i64, i64* @state_PREPARED, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %23 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_get_current_frame_number(i32 %24)
  %26 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @usb_pipein(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i8* %35, i32 %38, i32 %41)
  br label %131

43:                                               ; preds = %1
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %51 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = call i32 @usX2Y_error_urb_status(%struct.usX2Ydev* %50, %struct.snd_usX2Y_substream* %51, %struct.urb* %52)
  br label %131

54:                                               ; preds = %43
  %55 = load %struct.urb*, %struct.urb** %2, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 65535
  %59 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %60 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load %struct.urb*, %struct.urb** %2, align 8
  %69 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %69, i32 0, i32 1
  store %struct.urb* %68, %struct.urb** %70, align 8
  br label %76

71:                                               ; preds = %54
  %72 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %73 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %74 = load %struct.urb*, %struct.urb** %2, align 8
  %75 = call i32 @usX2Y_error_sequence(%struct.usX2Ydev* %72, %struct.snd_usX2Y_substream* %73, %struct.urb* %74)
  br label %131

76:                                               ; preds = %67
  %77 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %78 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %77, i32 0, i32 1
  %79 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %78, align 8
  %80 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %81 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %79, i64 %80
  %82 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %81, align 8
  store %struct.snd_usX2Y_substream* %82, %struct.snd_usX2Y_substream** %5, align 8
  %83 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %84 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %83, i32 0, i32 1
  %85 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %84, align 8
  %86 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %87 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %85, i64 %86
  %88 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %87, align 8
  store %struct.snd_usX2Y_substream* %88, %struct.snd_usX2Y_substream** %6, align 8
  %89 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %90 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %89, i32 0, i32 1
  %91 = load %struct.urb*, %struct.urb** %90, align 8
  %92 = icmp ne %struct.urb* %91, null
  br i1 %92, label %93, label %131

93:                                               ; preds = %76
  %94 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %95 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %94, i32 0, i32 0
  %96 = call i64 @atomic_read(i32* %95)
  %97 = load i64, i64* @state_PREPARED, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %93
  %100 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %101 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %100, i32 0, i32 1
  %102 = load %struct.urb*, %struct.urb** %101, align 8
  %103 = icmp ne %struct.urb* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %106 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %105, i32 0, i32 0
  %107 = call i64 @atomic_read(i32* %106)
  %108 = load i64, i64* @state_PREPARED, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %104, %99
  %111 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %112 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %113 = load %struct.urb*, %struct.urb** %2, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @usX2Y_usbframe_complete(%struct.snd_usX2Y_substream* %111, %struct.snd_usX2Y_substream* %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %110
  %119 = call i64 (...) @nr_of_packs()
  %120 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %121 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  br label %130

126:                                              ; preds = %110
  %127 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %129 = call i32 @usX2Y_clients_stop(%struct.usX2Ydev* %128)
  br label %130

130:                                              ; preds = %126, %118
  br label %131

131:                                              ; preds = %21, %49, %71, %130, %104, %93, %76
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

declare dso_local i32 @usX2Y_usbframe_complete(%struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, i32) #1

declare dso_local i64 @nr_of_packs(...) #1

declare dso_local i32 @usX2Y_clients_stop(%struct.usX2Ydev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
