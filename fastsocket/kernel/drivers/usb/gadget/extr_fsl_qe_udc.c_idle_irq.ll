; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_idle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_idle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_IDLE_STATUS_MASK = common dso_local global i32 0, align 4
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qe_udc*)* @idle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idle_irq(%struct.qe_udc* %0) #0 {
  %2 = alloca %struct.qe_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.qe_udc* %0, %struct.qe_udc** %2, align 8
  %4 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %5 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @in_8(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @USB_IDLE_STATUS_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %15 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %21 = call i32 @suspend_irq(%struct.qe_udc* %20)
  br label %22

22:                                               ; preds = %19, %13
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %25 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.qe_udc*, %struct.qe_udc** %2, align 8
  %31 = call i32 @resume_irq(%struct.qe_udc* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %22
  ret void
}

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @suspend_irq(%struct.qe_udc*) #1

declare dso_local i32 @resume_irq(%struct.qe_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
