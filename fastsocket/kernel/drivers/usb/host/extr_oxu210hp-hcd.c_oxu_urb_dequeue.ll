; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i64, i32 }
%struct.oxu_hcd = type { i32 }
%struct.ehci_qh = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"bogus qh %p state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"can't reschedule qh %p, err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @oxu_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.oxu_hcd*, align 8
  %9 = alloca %struct.ehci_qh*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %13 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %12)
  store %struct.oxu_hcd* %13, %struct.oxu_hcd** %8, align 8
  %14 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %15 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %14, i32 0, i32 0
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_pipetype(i32 %20)
  switch i32 %21, label %23 [
    i32 131, label %22
    i32 132, label %22
    i32 130, label %35
  ]

22:                                               ; preds = %3, %3
  br label %23

23:                                               ; preds = %3, %22
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ehci_qh*
  store %struct.ehci_qh* %27, %struct.ehci_qh** %9, align 8
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %29 = icmp ne %struct.ehci_qh* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %90

31:                                               ; preds = %23
  %32 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %33 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %34 = call i32 @unlink_async(%struct.oxu_hcd* %32, %struct.ehci_qh* %33)
  br label %90

35:                                               ; preds = %3
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ehci_qh*
  store %struct.ehci_qh* %39, %struct.ehci_qh** %9, align 8
  %40 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %41 = icmp ne %struct.ehci_qh* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %90

43:                                               ; preds = %35
  %44 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %45 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %55 [
    i32 128, label %47
    i32 129, label %51
  ]

47:                                               ; preds = %43
  %48 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %50 = call i32 @intr_deschedule(%struct.oxu_hcd* %48, %struct.ehci_qh* %49)
  br label %51

51:                                               ; preds = %43, %47
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %53 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %54 = call i32 @qh_completions(%struct.oxu_hcd* %52, %struct.ehci_qh* %53)
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %57 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %58 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %59 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @oxu_dbg(%struct.oxu_hcd* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ehci_qh* %57, i32 %60)
  br label %91

62:                                               ; preds = %51
  %63 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %64 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %63, i32 0, i32 0
  %65 = call i32 @list_empty(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %62
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %69 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @HC_IS_RUNNING(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %75 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %76 = call i32 @qh_schedule(%struct.oxu_hcd* %74, %struct.ehci_qh* %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %78 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %77, i32 0, i32 0
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.ehci_qh* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %73
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %96

89:                                               ; preds = %67, %62
  br label %90

90:                                               ; preds = %89, %42, %31, %30
  br label %91

91:                                               ; preds = %90, %55
  %92 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %93 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %92, i32 0, i32 0
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @unlink_async(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @intr_deschedule(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, %struct.ehci_qh*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @qh_schedule(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @err(i8*, %struct.ehci_qh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
