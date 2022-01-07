; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_epc_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_epc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_wireless_ep_comp_descriptor = type { i32 }
%struct.device = type { i32 }
%struct.usb_host_endpoint = type { i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_descriptor_header = type { i64, i64 }

@epc0 = common dso_local global %struct.usb_wireless_ep_comp_descriptor zeroinitializer, align 4
@.str = private unnamed_addr constant [73 x i8] c"HW Bug? ep 0x%02x: extra descriptors at offset %zu: only %zu bytes left\0A\00", align 1
@USB_DT_WIRELESS_ENDPOINT_COMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [99 x i8] c"HW Bug? ep 0x%02x: extra descriptor at offset %zu (type 0x%02x) length %d but only %zu bytes left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_wireless_ep_comp_descriptor* (%struct.device*, %struct.usb_host_endpoint*)* @rpipe_epc_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_wireless_ep_comp_descriptor* @rpipe_epc_find(%struct.device* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_descriptor_header*, align 8
  %8 = alloca %struct.usb_wireless_ep_comp_descriptor*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.usb_wireless_ep_comp_descriptor* @epc0, %struct.usb_wireless_ep_comp_descriptor** %8, align 8
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  store %struct.usb_wireless_ep_comp_descriptor* null, %struct.usb_wireless_ep_comp_descriptor** %8, align 8
  br label %22

22:                                               ; preds = %83, %15
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %36 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %34 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %6, align 8
  %43 = call i32 (%struct.device*, i8*, i64, i32, i64, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %41, i64 %42)
  br label %94

44:                                               ; preds = %25
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to %struct.usb_descriptor_header*
  store %struct.usb_descriptor_header* %46, %struct.usb_descriptor_header** %7, align 8
  %47 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %7, align 8
  %48 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_DT_WIRELESS_ENDPOINT_COMP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = bitcast i8* %53 to %struct.usb_wireless_ep_comp_descriptor*
  store %struct.usb_wireless_ep_comp_descriptor* %54, %struct.usb_wireless_ep_comp_descriptor** %8, align 8
  br label %94

55:                                               ; preds = %44
  %56 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %7, align 8
  %57 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %64 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %69 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %7, align 8
  %76 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %7, align 8
  %79 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (%struct.device*, i8*, i64, i32, i64, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %74, i64 %77, i64 %80, i64 %81)
  br label %94

83:                                               ; preds = %55
  %84 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %7, align 8
  %85 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr i8, i8* %87, i64 %86
  store i8* %88, i8** %5, align 8
  %89 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %7, align 8
  %90 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %22

94:                                               ; preds = %61, %52, %28, %22
  br label %95

95:                                               ; preds = %94, %14
  %96 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %8, align 8
  ret %struct.usb_wireless_ep_comp_descriptor* %96
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
