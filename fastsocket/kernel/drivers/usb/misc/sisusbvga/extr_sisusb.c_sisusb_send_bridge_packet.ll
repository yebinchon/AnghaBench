; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_send_bridge_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_send_bridge_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i64 }

@SISUSB_EP_BRIDGE_OUT = common dso_local global i32 0, align 4
@SISUSB_EP_BRIDGE_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*, i32)* @sisusb_send_bridge_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %0, i32 %1, %struct.sisusb_packet* %2, i32 %3) #0 {
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sisusb_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sisusb_packet* %2, %struct.sisusb_packet** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.sisusb_packet*, %struct.sisusb_packet** %7, align 8
  %16 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.sisusb_packet*, %struct.sisusb_packet** %7, align 8
  %19 = call i32 @SISUSB_CORRECT_ENDIANNESS_PACKET(%struct.sisusb_packet* %18)
  %20 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %21 = load i32, i32* @SISUSB_EP_BRIDGE_OUT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.sisusb_packet*, %struct.sisusb_packet** %7, align 8
  %24 = bitcast %struct.sisusb_packet* %23 to i8*
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @sisusb_send_bulk_msg(%struct.sisusb_usb_data* %20, i32 %21, i32 %22, i8* %24, i32* null, i32 0, i32* %10, i32 %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %34 = load i32, i32* @SISUSB_EP_BRIDGE_IN, align 4
  %35 = bitcast i32* %11 to i8*
  %36 = call i32 @sisusb_recv_bulk_msg(%struct.sisusb_usb_data* %33, i32 %34, i32 4, i8* %35, i32* null, i32* %10, i32 0)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = load %struct.sisusb_packet*, %struct.sisusb_packet** %7, align 8
  %40 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %29, %17
  %42 = load i32, i32* %9, align 4
  ret i32 %42
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
