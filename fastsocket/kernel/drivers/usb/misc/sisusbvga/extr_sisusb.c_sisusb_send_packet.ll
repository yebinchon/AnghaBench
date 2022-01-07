; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i64 }

@SISUSB_EP_GFX_OUT = common dso_local global i32 0, align 4
@SISUSB_EP_GFX_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*)* @sisusb_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_send_packet(%struct.sisusb_usb_data* %0, i32 %1, %struct.sisusb_packet* %2) #0 {
  %4 = alloca %struct.sisusb_usb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sisusb_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sisusb_packet* %2, %struct.sisusb_packet** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.sisusb_packet*, %struct.sisusb_packet** %6, align 8
  %14 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.sisusb_packet*, %struct.sisusb_packet** %6, align 8
  %17 = call i32 @SISUSB_CORRECT_ENDIANNESS_PACKET(%struct.sisusb_packet* %16)
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %19 = load i32, i32* @SISUSB_EP_GFX_OUT, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sisusb_packet*, %struct.sisusb_packet** %6, align 8
  %22 = bitcast %struct.sisusb_packet* %21 to i8*
  %23 = call i32 @sisusb_send_bulk_msg(%struct.sisusb_usb_data* %18, i32 %19, i32 %20, i8* %22, i32* null, i32 0, i32* %8, i32 0, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %31 = load i32, i32* @SISUSB_EP_GFX_IN, align 4
  %32 = bitcast i32* %9 to i8*
  %33 = call i32 @sisusb_recv_bulk_msg(%struct.sisusb_usb_data* %30, i32 %31, i32 4, i8* %32, i32* null, i32* %8, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = load %struct.sisusb_packet*, %struct.sisusb_packet** %6, align 8
  %37 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %26, %15
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @SISUSB_CORRECT_ENDIANNESS_PACKET(%struct.sisusb_packet*) #1

declare dso_local i32 @sisusb_send_bulk_msg(%struct.sisusb_usb_data*, i32, i32, i8*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sisusb_recv_bulk_msg(%struct.sisusb_usb_data*, i32, i32, i8*, i32*, i32*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
