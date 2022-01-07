; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_unlink_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i64, i32, %struct.ehci_qh* }
%struct.TYPE_2__ = type { i32 }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_COMPLETING = common dso_local global i64 0, align 8
@QH_STATE_UNLINK_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*)* @unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_async(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca %struct.ehci_qh*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %7 = call %struct.TYPE_2__* @ehci_to_hcd(%struct.ehci_hcd* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @HC_IS_RUNNING(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 0
  %15 = load %struct.ehci_qh*, %struct.ehci_qh** %14, align 8
  %16 = icmp ne %struct.ehci_qh* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = call i32 @end_unlink_async(%struct.ehci_hcd* %18)
  br label %20

20:                                               ; preds = %17, %12, %2
  %21 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %22 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QH_STATE_LINKED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %28 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QH_STATE_COMPLETING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %34 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  br label %66

36:                                               ; preds = %20
  %37 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %37, i32 0, i32 0
  %39 = load %struct.ehci_qh*, %struct.ehci_qh** %38, align 8
  %40 = icmp ne %struct.ehci_qh* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %42, i32 0, i32 0
  %44 = load %struct.ehci_qh*, %struct.ehci_qh** %43, align 8
  store %struct.ehci_qh* %44, %struct.ehci_qh** %5, align 8
  br label %45

45:                                               ; preds = %51, %41
  %46 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %47 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %46, i32 0, i32 2
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %47, align 8
  %49 = icmp ne %struct.ehci_qh* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %53 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %52, i32 0, i32 2
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %53, align 8
  store %struct.ehci_qh* %54, %struct.ehci_qh** %5, align 8
  br label %45

55:                                               ; preds = %45
  %56 = load i64, i64* @QH_STATE_UNLINK_WAIT, align 8
  %57 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %58 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %61 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %60, i32 0, i32 2
  store %struct.ehci_qh* %59, %struct.ehci_qh** %61, align 8
  br label %66

62:                                               ; preds = %36
  %63 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %64 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %65 = call i32 @start_unlink_async(%struct.ehci_hcd* %63, %struct.ehci_qh* %64)
  br label %66

66:                                               ; preds = %35, %62, %55
  ret void
}

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_2__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @end_unlink_async(%struct.ehci_hcd*) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
