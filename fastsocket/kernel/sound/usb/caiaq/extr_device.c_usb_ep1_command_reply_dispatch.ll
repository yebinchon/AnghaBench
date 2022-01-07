; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_device.c_usb_ep1_command_reply_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_device.c_usb_ep1_command_reply_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, i64, %struct.snd_usb_caiaqdev* }
%struct.snd_usb_caiaqdev = type { i8, %struct.TYPE_5__, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"received EP1 urb->status = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"device spec (firmware %d): audio: %d in, %d out, MIDI: %d in, %d out, data alignment %d\0A\00", align 1
@USB_VID_NATIVEINSTRUMENTS = common dso_local global i32 0, align 4
@USB_PID_AUDIO8DJ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to submit urb. OOM!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_ep1_command_reply_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_ep1_command_reply_dispatch(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  store %struct.snd_usb_caiaqdev* %8, %struct.snd_usb_caiaqdev** %4, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %18 = icmp ne %struct.snd_usb_caiaqdev* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %139

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  switch i32 %28, label %127 [
    i32 132, label %29
    i32 133, label %75
    i32 131, label %84
    i32 128, label %95
  ]

29:                                               ; preds = %24
  %30 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %31 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %30, i32 0, i32 6
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @memcpy(%struct.TYPE_6__* %31, i8* %33, i32 4)
  %35 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %36 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %41 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 4
  %43 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %44 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %48 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %52 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %56 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %60 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %64 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @debug(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66)
  %68 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %69 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %73 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %72, i32 0, i32 2
  %74 = call i32 @wake_up(i32* %73)
  br label %127

75:                                               ; preds = %24
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %80 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %79, i32 0, i32 0
  store i8 %78, i8* %80, align 8
  %81 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %82 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %81, i32 0, i32 2
  %83 = call i32 @wake_up(i32* %82)
  br label %127

84:                                               ; preds = %24
  %85 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @snd_usb_caiaq_midi_handle_input(%struct.snd_usb_caiaqdev* %85, i8 zeroext %88, i8* %90, i8 zeroext %93)
  br label %127

95:                                               ; preds = %24
  %96 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %97 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @USB_VID_NATIVEINSTRUMENTS, align 4
  %101 = load i32, i32* @USB_PID_AUDIO8DJ, align 4
  %102 = call i32 @USB_ID(i32 %100, i32 %101)
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %95
  %105 = load %struct.urb*, %struct.urb** %2, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = icmp ugt i64 %108, 8
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.urb*, %struct.urb** %2, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  store i32 8, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %115 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %114, i32 0, i32 3
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load %struct.urb*, %struct.urb** %2, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memcpy(%struct.TYPE_6__* %116, i8* %118, i32 %121)
  %123 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %124 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %123, i32 0, i32 2
  %125 = call i32 @wake_up(i32* %124)
  br label %127

126:                                              ; preds = %95
  br label %127

127:                                              ; preds = %24, %126, %113, %84, %75, %29
  %128 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %129 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %132 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %131, i32 0, i32 1
  %133 = load i32, i32* @GFP_ATOMIC, align 4
  %134 = call i32 @usb_submit_urb(%struct.TYPE_5__* %132, i32 %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = call i32 (i8*, ...) @log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %19, %137, %127
  ret void
}

declare dso_local i32 @log(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_usb_caiaq_midi_handle_input(%struct.snd_usb_caiaqdev*, i8 zeroext, i8*, i8 zeroext) #1

declare dso_local i32 @USB_ID(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
