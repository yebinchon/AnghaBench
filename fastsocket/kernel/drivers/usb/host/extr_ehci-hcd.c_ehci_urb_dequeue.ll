; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i64, i32 }
%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"bogus qh %p state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @ehci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_hcd*, align 8
  %8 = alloca %struct.ehci_qh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %11)
  store %struct.ehci_hcd* %12, %struct.ehci_hcd** %7, align 8
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %17, %struct.urb* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_pipetype(i32 %27)
  switch i32 %28, label %29 [
    i32 134, label %51
    i32 133, label %79
  ]

29:                                               ; preds = %24
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ehci_qh*
  store %struct.ehci_qh* %33, %struct.ehci_qh** %8, align 8
  %34 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %35 = icmp ne %struct.ehci_qh* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %80

37:                                               ; preds = %29
  %38 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %39 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %50 [
    i32 130, label %41
    i32 132, label %41
    i32 129, label %45
    i32 128, label %45
    i32 131, label %46
  ]

41:                                               ; preds = %37, %37
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %43 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %44 = call i32 @unlink_async(%struct.ehci_hcd* %42, %struct.ehci_qh* %43)
  br label %50

45:                                               ; preds = %37, %37
  br label %50

46:                                               ; preds = %37
  %47 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %49 = call i32 @qh_completions(%struct.ehci_hcd* %47, %struct.ehci_qh* %48)
  br label %50

50:                                               ; preds = %37, %46, %45, %41
  br label %80

51:                                               ; preds = %24
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ehci_qh*
  store %struct.ehci_qh* %55, %struct.ehci_qh** %8, align 8
  %56 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %57 = icmp ne %struct.ehci_qh* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %80

59:                                               ; preds = %51
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %61 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %71 [
    i32 130, label %63
    i32 132, label %63
    i32 131, label %67
  ]

63:                                               ; preds = %59, %59
  %64 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %66 = call i32 @intr_deschedule(%struct.ehci_hcd* %64, %struct.ehci_qh* %65)
  br label %78

67:                                               ; preds = %59
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %69 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %70 = call i32 @qh_completions(%struct.ehci_hcd* %68, %struct.ehci_qh* %69)
  br label %78

71:                                               ; preds = %59
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %73 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %74 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %75 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ehci_dbg(%struct.ehci_hcd* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ehci_qh* %73, i32 %76)
  br label %81

78:                                               ; preds = %67, %63
  br label %80

79:                                               ; preds = %24
  br label %80

80:                                               ; preds = %79, %78, %58, %50, %36
  br label %81

81:                                               ; preds = %80, %71, %23
  %82 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %83 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @intr_deschedule(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, %struct.ehci_qh*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
