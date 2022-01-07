; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.u132_endp* }
%struct.u132_endp = type { i32 }
%struct.u132 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"u132 device %p(hcd=%p hep=%p) has been removed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @u132_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.u132*, align 8
  %6 = alloca %struct.u132_endp*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %7)
  store %struct.u132* %8, %struct.u132** %5, align 8
  %9 = load %struct.u132*, %struct.u132** %5, align 8
  %10 = getelementptr inbounds %struct.u132, %struct.u132* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.u132*, %struct.u132** %5, align 8
  %15 = getelementptr inbounds %struct.u132, %struct.u132* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.u132*, %struct.u132** %5, align 8
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %21 = load %struct.u132*, %struct.u132** %5, align 8
  %22 = getelementptr inbounds %struct.u132, %struct.u132* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.u132* %18, %struct.usb_hcd* %19, %struct.usb_host_endpoint* %20, i32 %23)
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %26, i32 0, i32 0
  %28 = load %struct.u132_endp*, %struct.u132_endp** %27, align 8
  store %struct.u132_endp* %28, %struct.u132_endp** %6, align 8
  %29 = load %struct.u132_endp*, %struct.u132_endp** %6, align 8
  %30 = icmp ne %struct.u132_endp* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.u132*, %struct.u132** %5, align 8
  %33 = load %struct.u132_endp*, %struct.u132_endp** %6, align 8
  %34 = call i32 @u132_endp_put_kref(%struct.u132* %32, %struct.u132_endp* %33)
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %13
  ret void
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.u132*, %struct.usb_hcd*, %struct.usb_host_endpoint*, i32) #1

declare dso_local i32 @u132_endp_put_kref(%struct.u132*, %struct.u132_endp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
