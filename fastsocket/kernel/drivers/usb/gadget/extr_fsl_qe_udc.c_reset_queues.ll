; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_reset_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_reset_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@USB_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*)* @reset_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_queues(%struct.qe_udc* %0) #0 {
  %2 = alloca %struct.qe_udc*, align 8
  %3 = alloca i64, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @USB_MAX_ENDPOINTS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @udc_reset_ep_queue(%struct.qe_udc* %9, i64 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %3, align 8
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %17 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %20 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %25 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %24, i32 0, i32 1
  %26 = call i32 %23(i32* %25)
  %27 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %28 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  ret i32 0
}

declare dso_local i32 @udc_reset_ep_queue(%struct.qe_udc*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
