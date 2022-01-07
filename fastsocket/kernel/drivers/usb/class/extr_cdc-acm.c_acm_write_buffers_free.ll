; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_write_buffers_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_write_buffers_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, %struct.acm_wb*, i32 }
%struct.acm_wb = type { i32, i32 }
%struct.usb_device = type { i32 }

@ACM_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm*)* @acm_write_buffers_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_write_buffers_free(%struct.acm* %0) #0 {
  %2 = alloca %struct.acm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acm_wb*, align 8
  %5 = alloca %struct.usb_device*, align 8
  store %struct.acm* %0, %struct.acm** %2, align 8
  %6 = load %struct.acm*, %struct.acm** %2, align 8
  %7 = getelementptr inbounds %struct.acm, %struct.acm* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(i32 %8)
  store %struct.usb_device* %9, %struct.usb_device** %5, align 8
  %10 = load %struct.acm*, %struct.acm** %2, align 8
  %11 = getelementptr inbounds %struct.acm, %struct.acm* %10, i32 0, i32 1
  %12 = load %struct.acm_wb*, %struct.acm_wb** %11, align 8
  %13 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %12, i64 0
  store %struct.acm_wb* %13, %struct.acm_wb** %4, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ACM_NW, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %20 = load %struct.acm*, %struct.acm** %2, align 8
  %21 = getelementptr inbounds %struct.acm, %struct.acm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %24 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %27 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_buffer_free(%struct.usb_device* %19, i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %34 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %33, i32 1
  store %struct.acm_wb* %34, %struct.acm_wb** %4, align 8
  br label %14

35:                                               ; preds = %14
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
