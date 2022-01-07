; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_tweak_clear_halt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_tweak_clear_halt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"clear_halt error: devnum %d endp %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"clear_halt done: devnum %d endp %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @tweak_clear_halt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tweak_clear_halt_cmd(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_ctrlrequest*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %11, %struct.usb_ctrlrequest** %3, align 8
  %12 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = and i32 %15, 15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = and i32 %20, 128
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @usb_rcvctrlpipe(%struct.TYPE_4__* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @usb_sndctrlpipe(%struct.TYPE_4__* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @usb_clear_halt(%struct.TYPE_4__* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, i32, i32, ...) @usbip_uinfo(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  br label %61

53:                                               ; preds = %36
  %54 = load %struct.urb*, %struct.urb** %2, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i32, i32, ...) @usbip_uinfo(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %44
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usbip_uinfo(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
