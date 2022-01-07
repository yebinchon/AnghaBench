; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_unlink_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i64, %struct.ehci_qh* }
%struct.TYPE_2__ = type { i32 }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_UNLINK_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qh*)* @unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_async(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca %struct.ehci_qh*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %6 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %7 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QH_STATE_LINKED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %12, i32 0, i32 0
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %13, align 8
  %15 = icmp ne %struct.ehci_qh* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %18 = call %struct.TYPE_2__* @oxu_to_hcd(%struct.oxu_hcd* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @HC_IS_RUNNING(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %24, i32 0, i32 0
  %26 = load %struct.ehci_qh*, %struct.ehci_qh** %25, align 8
  store %struct.ehci_qh* %26, %struct.ehci_qh** %5, align 8
  br label %27

27:                                               ; preds = %33, %23
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %29 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %28, i32 0, i32 1
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %29, align 8
  %31 = icmp ne %struct.ehci_qh* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %35 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %34, i32 0, i32 1
  %36 = load %struct.ehci_qh*, %struct.ehci_qh** %35, align 8
  store %struct.ehci_qh* %36, %struct.ehci_qh** %5, align 8
  br label %27

37:                                               ; preds = %27
  %38 = load i64, i64* @QH_STATE_UNLINK_WAIT, align 8
  %39 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %40 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %43 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %42, i32 0, i32 1
  store %struct.ehci_qh* %41, %struct.ehci_qh** %43, align 8
  br label %60

44:                                               ; preds = %16, %11, %2
  %45 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %46 = call %struct.TYPE_2__* @oxu_to_hcd(%struct.oxu_hcd* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @HC_IS_RUNNING(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 0
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %53, align 8
  %55 = icmp ne %struct.ehci_qh* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %58 = call i32 @end_unlink_async(%struct.oxu_hcd* %57)
  br label %59

59:                                               ; preds = %56, %51, %44
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %62 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QH_STATE_LINKED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %68 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %69 = call i32 @start_unlink_async(%struct.oxu_hcd* %67, %struct.ehci_qh* %68)
  br label %70

70:                                               ; preds = %66, %60
  ret void
}

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_2__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @end_unlink_async(%struct.oxu_hcd*) #1

declare dso_local i32 @start_unlink_async(%struct.oxu_hcd*, %struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
