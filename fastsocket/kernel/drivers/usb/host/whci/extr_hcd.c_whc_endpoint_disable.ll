; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { i32, %struct.whc_qset* }
%struct.whc_qset = type { i32 }
%struct.wusbhc = type { i32 }
%struct.whc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @whc_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whc_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca %struct.whc*, align 8
  %7 = alloca %struct.whc_qset*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %8)
  store %struct.wusbhc* %9, %struct.wusbhc** %5, align 8
  %10 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %11 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %10)
  store %struct.whc* %11, %struct.whc** %6, align 8
  %12 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %13 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %12, i32 0, i32 1
  %14 = load %struct.whc_qset*, %struct.whc_qset** %13, align 8
  store %struct.whc_qset* %14, %struct.whc_qset** %7, align 8
  %15 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %16 = icmp ne %struct.whc_qset* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %19 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %18, i32 0, i32 1
  store %struct.whc_qset* null, %struct.whc_qset** %19, align 8
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %20, i32 0, i32 0
  %22 = call i64 @usb_endpoint_xfer_bulk(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %25, i32 0, i32 0
  %27 = call i64 @usb_endpoint_xfer_control(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %17
  %30 = load %struct.whc*, %struct.whc** %6, align 8
  %31 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %32 = call i32 @asl_qset_delete(%struct.whc* %30, %struct.whc_qset* %31)
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.whc*, %struct.whc** %6, align 8
  %35 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %36 = call i32 @pzl_qset_delete(%struct.whc* %34, %struct.whc_qset* %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @asl_qset_delete(%struct.whc*, %struct.whc_qset*) #1

declare dso_local i32 @pzl_qset_delete(%struct.whc*, %struct.whc_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
