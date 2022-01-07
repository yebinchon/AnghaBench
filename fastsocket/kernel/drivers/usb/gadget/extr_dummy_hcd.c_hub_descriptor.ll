; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub_descriptor = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub_descriptor*)* @hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_descriptor(%struct.usb_hub_descriptor* %0) #0 {
  %2 = alloca %struct.usb_hub_descriptor*, align 8
  store %struct.usb_hub_descriptor* %0, %struct.usb_hub_descriptor** %2, align 8
  %3 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %4 = call i32 @memset(%struct.usb_hub_descriptor* %3, i32 0, i32 32)
  %5 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %6 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %5, i32 0, i32 0
  store i32 41, i32* %6, align 8
  %7 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %7, i32 0, i32 1
  store i32 9, i32* %8, align 4
  %9 = call i32 @cpu_to_le16(i32 1)
  %10 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %12, i32 0, i32 2
  store i32 1, i32* %13, align 8
  %14 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %15 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 255, i32* %19, align 4
  %20 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %21 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 255, i32* %25, align 4
  ret void
}

declare dso_local i32 @memset(%struct.usb_hub_descriptor*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
