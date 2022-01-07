; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_proc_dump_ep_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_proc_dump_ep_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32 }
%struct.snd_usb_endpoint = type { i32, i32, i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"    Packet Size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"    Momentary freq = %u Hz (%#x.%04x)\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"    Feedback Format = %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.snd_usb_endpoint*, %struct.snd_info_buffer*)* @proc_dump_ep_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_dump_ep_status(%struct.snd_usb_substream* %0, %struct.snd_usb_endpoint* %1, %struct.snd_info_buffer* %2) #0 {
  %4 = alloca %struct.snd_usb_substream*, align 8
  %5 = alloca %struct.snd_usb_endpoint*, align 8
  %6 = alloca %struct.snd_info_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %4, align 8
  store %struct.snd_usb_endpoint* %1, %struct.snd_usb_endpoint** %5, align 8
  store %struct.snd_info_buffer* %2, %struct.snd_info_buffer** %6, align 8
  %8 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %9 = icmp ne %struct.snd_usb_endpoint* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %66

11:                                               ; preds = %3
  %12 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %6, align 8
  %13 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %6, align 8
  %18 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @snd_usb_get_speed(i32 %20)
  %22 = load i64, i64* @USB_SPEED_FULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %11
  %25 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_full_speed_hz(i32 %27)
  br label %34

29:                                               ; preds = %11
  %30 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %31 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_high_speed_hz(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i32 [ %28, %24 ], [ %33, %29 ]
  %36 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 16
  %40 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 65535
  %44 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39, i32 %43)
  %45 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %46 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INT_MIN, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %34
  %51 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %52 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 16, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %6, align 8
  %56 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 3
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 32, i32 24
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (%struct.snd_info_buffer*, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %10, %50, %34
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, ...) #1

declare dso_local i64 @snd_usb_get_speed(i32) #1

declare dso_local i32 @get_full_speed_hz(i32) #1

declare dso_local i32 @get_high_speed_hz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
