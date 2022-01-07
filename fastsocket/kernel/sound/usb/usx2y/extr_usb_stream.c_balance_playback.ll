; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_balance_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_balance_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { i32 }
%struct.urb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stream_kernel*, %struct.urb*)* @balance_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_playback(%struct.usb_stream_kernel* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usb_stream_kernel*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %5 = load %struct.urb*, %struct.urb** %4, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %3, align 8
  %9 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %3, align 8
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = call i32 @balance_check(%struct.usb_stream_kernel* %14, %struct.urb* %15)
  ret i32 %16
}

declare dso_local i32 @balance_check(%struct.usb_stream_kernel*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
