; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_end_unlink_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_end_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.ehci_qh*, %struct.TYPE_7__*, i64 }
%struct.ehci_qh = type { i32, %struct.ehci_qh*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@TIMER_IAA_WATCHDOG = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i32 0, align 4
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @end_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_unlink_async(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca %struct.ehci_qh*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %5 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %5, i32 0, i32 0
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  store %struct.ehci_qh* %7, %struct.ehci_qh** %3, align 8
  %8 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %9 = load i32, i32* @TIMER_IAA_WATCHDOG, align 4
  %10 = call i32 @timer_action_done(%struct.oxu_hcd* %8, i32 %9)
  %11 = load i32, i32* @QH_STATE_IDLE, align 4
  %12 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %13 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %15 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %18 = call i32 @qh_put(%struct.ehci_qh* %17)
  %19 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %20 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %19, i32 0, i32 1
  %21 = load %struct.ehci_qh*, %struct.ehci_qh** %20, align 8
  store %struct.ehci_qh* %21, %struct.ehci_qh** %4, align 8
  %22 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %23 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %23, i32 0, i32 0
  store %struct.ehci_qh* %22, %struct.ehci_qh** %24, align 8
  %25 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %28 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %27, i32 0, i32 1
  store %struct.ehci_qh* null, %struct.ehci_qh** %28, align 8
  %29 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %31 = call i32 @qh_completions(%struct.oxu_hcd* %29, %struct.ehci_qh* %30)
  %32 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %33 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %32, i32 0, i32 0
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %1
  %37 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %38 = call %struct.TYPE_8__* @oxu_to_hcd(%struct.oxu_hcd* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @HC_IS_RUNNING(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %45 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %46 = call i32 @qh_link_async(%struct.oxu_hcd* %44, %struct.ehci_qh* %45)
  br label %69

47:                                               ; preds = %36, %1
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %49 = call i32 @qh_put(%struct.ehci_qh* %48)
  %50 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %51 = call %struct.TYPE_8__* @oxu_to_hcd(%struct.oxu_hcd* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @HC_IS_RUNNING(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %58 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %66 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %67 = call i32 @timer_action(%struct.oxu_hcd* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %56, %47
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %71 = icmp ne %struct.ehci_qh* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 0
  store %struct.ehci_qh* null, %struct.ehci_qh** %74, align 8
  %75 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %76 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %77 = call i32 @start_unlink_async(%struct.oxu_hcd* %75, %struct.ehci_qh* %76)
  br label %78

78:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @timer_action_done(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_8__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @qh_link_async(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @timer_action(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @start_unlink_async(%struct.oxu_hcd*, %struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
