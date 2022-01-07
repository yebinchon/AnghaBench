; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_fill_qh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_fill_qh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc_qset = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i64 }
%struct.urb = type { i32, %struct.TYPE_6__*, %struct.usb_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_wireless_ep_comp_descriptor = type { i32, i32 }

@QH_INFO1_DIR_OUT = common dso_local global i32 0, align 4
@QH_INFO1_DIR_IN = common dso_local global i32 0, align 4
@QH_INFO3_TX_RATE_53_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc_qset*, %struct.urb*)* @qset_fill_qh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qset_fill_qh(%struct.whc_qset* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.whc_qset*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_wireless_ep_comp_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.whc_qset* %0, %struct.whc_qset** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = load %struct.urb*, %struct.urb** %4, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_pipeout(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %23 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %25 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.usb_wireless_ep_comp_descriptor*
  store %struct.usb_wireless_ep_comp_descriptor* %29, %struct.usb_wireless_ep_comp_descriptor** %6, align 8
  %30 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %6, align 8
  %31 = icmp ne %struct.usb_wireless_ep_comp_descriptor* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %6, align 8
  %34 = getelementptr inbounds %struct.usb_wireless_ep_comp_descriptor, %struct.usb_wireless_ep_comp_descriptor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %37 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %6, align 8
  %39 = getelementptr inbounds %struct.usb_wireless_ep_comp_descriptor, %struct.usb_wireless_ep_comp_descriptor* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %42 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %48

43:                                               ; preds = %2
  %44 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %45 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %47 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.urb*, %struct.urb** %4, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_pipeendpoint(i32 %51)
  %53 = call i32 @QH_INFO1_EP(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @QH_INFO1_DIR_OUT, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @QH_INFO1_DIR_IN, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = or i32 %53, %61
  %63 = load %struct.urb*, %struct.urb** %4, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @usb_pipe_to_qh_type(i32 %65)
  %67 = or i32 %62, %66
  %68 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wusb_port_no_to_idx(i32 %70)
  %72 = call i32 @QH_INFO1_DEV_INFO_IDX(i32 %71)
  %73 = or i32 %67, %72
  %74 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %75 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @QH_INFO1_MAX_PKT_LEN(i32 %76)
  %78 = or i32 %73, %77
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %81 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %84 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @QH_INFO2_BURST(i32 %85)
  %87 = call i32 @QH_INFO2_DBP(i32 0)
  %88 = or i32 %86, %87
  %89 = call i32 @QH_INFO2_MAX_COUNT(i32 3)
  %90 = or i32 %88, %89
  %91 = call i32 @QH_INFO2_MAX_RETRY(i32 3)
  %92 = or i32 %90, %91
  %93 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %94 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @QH_INFO2_MAX_SEQ(i32 %96)
  %98 = or i32 %92, %97
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %101 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* @QH_INFO3_TX_RATE_53_3, align 4
  %104 = call i32 @QH_INFO3_TX_PWR(i32 0)
  %105 = or i32 %103, %104
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %108 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %111 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %113, 1
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.whc_qset*, %struct.whc_qset** %3, align 8
  %117 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  ret void
}

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QH_INFO1_EP(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_pipe_to_qh_type(i32) #1

declare dso_local i32 @QH_INFO1_DEV_INFO_IDX(i32) #1

declare dso_local i32 @wusb_port_no_to_idx(i32) #1

declare dso_local i32 @QH_INFO1_MAX_PKT_LEN(i32) #1

declare dso_local i32 @QH_INFO2_BURST(i32) #1

declare dso_local i32 @QH_INFO2_DBP(i32) #1

declare dso_local i32 @QH_INFO2_MAX_COUNT(i32) #1

declare dso_local i32 @QH_INFO2_MAX_RETRY(i32) #1

declare dso_local i32 @QH_INFO2_MAX_SEQ(i32) #1

declare dso_local i32 @QH_INFO3_TX_PWR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
