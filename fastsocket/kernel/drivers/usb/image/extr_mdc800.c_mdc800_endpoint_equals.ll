; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_endpoint_equals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_endpoint_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*)* @mdc800_endpoint_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc800_endpoint_equals(%struct.usb_endpoint_descriptor* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.usb_endpoint_descriptor*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %0, %struct.usb_endpoint_descriptor** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %5 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %9 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %14 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %25 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br label %28

28:                                               ; preds = %20, %12, %2
  %29 = phi i1 [ false, %12 ], [ false, %2 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
