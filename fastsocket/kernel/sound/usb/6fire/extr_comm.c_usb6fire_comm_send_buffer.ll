; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_comm.c_usb6fire_comm_send_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_comm.c_usb6fire_comm_send_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@COMM_EP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.usb_device*)* @usb6fire_comm_send_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_comm_send_buffer(i32* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %10 = load i32, i32* @COMM_EP, align 4
  %11 = call i32 @usb_sndintpipe(%struct.usb_device* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 2
  %17 = load i32, i32* @HZ, align 4
  %18 = call i32 @usb_interrupt_msg(%struct.usb_device* %8, i32 %11, i32* %12, i32 %16, i32* %7, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
