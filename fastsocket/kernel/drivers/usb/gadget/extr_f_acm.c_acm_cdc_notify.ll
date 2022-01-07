; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_cdc_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_cdc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_acm = type { i32, i32, %struct.usb_request*, i32, %struct.TYPE_6__, i32, %struct.usb_ep* }
%struct.usb_request = type { i32, %struct.usb_cdc_notification* }
%struct.usb_cdc_notification = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_ep = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"acm ttyGS%d can't notify serial state, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_acm*, i32, i32, i8*, i32)* @acm_cdc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_cdc_notify(%struct.f_acm* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.f_acm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_ep*, align 8
  %12 = alloca %struct.usb_request*, align 8
  %13 = alloca %struct.usb_cdc_notification*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.f_acm* %0, %struct.f_acm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %18 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %17, i32 0, i32 6
  %19 = load %struct.usb_ep*, %struct.usb_ep** %18, align 8
  store %struct.usb_ep* %19, %struct.usb_ep** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 40, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %25 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %24, i32 0, i32 2
  %26 = load %struct.usb_request*, %struct.usb_request** %25, align 8
  store %struct.usb_request* %26, %struct.usb_request** %12, align 8
  %27 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %28 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %27, i32 0, i32 2
  store %struct.usb_request* null, %struct.usb_request** %28, align 8
  %29 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %30 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 1
  %36 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %35, align 8
  store %struct.usb_cdc_notification* %36, %struct.usb_cdc_notification** %13, align 8
  %37 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %13, align 8
  %38 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %37, i64 1
  %39 = bitcast %struct.usb_cdc_notification* %38 to i8*
  store i8* %39, i8** %15, align 8
  %40 = load i32, i32* @USB_DIR_IN, align 4
  %41 = load i32, i32* @USB_TYPE_CLASS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %13, align 8
  %46 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %13, align 8
  %49 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %13, align 8
  %53 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %55 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %13, align 8
  %59 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %13, align 8
  %63 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @memcpy(i8* %64, i8* %65, i32 %66)
  %68 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %69 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %68, i32 0, i32 5
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.usb_ep*, %struct.usb_ep** %11, align 8
  %72 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_ep_queue(%struct.usb_ep* %71, %struct.usb_request* %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %76 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %75, i32 0, i32 5
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %5
  %81 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %82 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %89 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @ERROR(i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %94 = load %struct.f_acm*, %struct.f_acm** %6, align 8
  %95 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %94, i32 0, i32 2
  store %struct.usb_request* %93, %struct.usb_request** %95, align 8
  br label %96

96:                                               ; preds = %80, %5
  %97 = load i32, i32* %16, align 4
  ret i32 %97
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
