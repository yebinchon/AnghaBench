; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_prepare_inurb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_prepare_inurb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.urb*)* @prepare_inurb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_inurb(i32 %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  store %struct.usb_iso_packet_descriptor* %12, %struct.usb_iso_packet_descriptor** %5, align 8
  %13 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %23, i64 %25
  %27 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %29, i64 %31
  %33 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %28, %35
  %37 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %37, i64 %40
  %42 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %41, i32 0, i32 1
  store i64 %36, i64* %42, align 8
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %48 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %47, i64 0
  %49 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.urb*, %struct.urb** %4, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.urb*, %struct.urb** %4, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
