; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_usb_stream_next_packet_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_usb_stream_next_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { i32, i32, i32, %struct.usb_stream* }
%struct.usb_stream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stream_kernel*)* @usb_stream_next_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stream_next_packet_size(%struct.usb_stream_kernel* %0) #0 {
  %2 = alloca %struct.usb_stream_kernel*, align 8
  %3 = alloca %struct.usb_stream*, align 8
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %2, align 8
  %4 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %5 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %4, i32 0, i32 3
  %6 = load %struct.usb_stream*, %struct.usb_stream** %5, align 8
  store %struct.usb_stream* %6, %struct.usb_stream** %3, align 8
  %7 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %8 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 65535
  %11 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %12 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %10, %13
  %15 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %16 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %18 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 16
  %21 = load %struct.usb_stream*, %struct.usb_stream** %3, align 8
  %22 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %20, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
