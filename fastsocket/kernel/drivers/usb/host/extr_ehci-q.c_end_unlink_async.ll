; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_end_unlink_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_end_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.ehci_qh*, %struct.TYPE_7__* }
%struct.ehci_qh = type { i32, %struct.ehci_qh*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@QH_STATE_IDLE = common dso_local global i32 0, align 4
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @end_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_unlink_async(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca %struct.ehci_qh*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %5 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %5, i32 0, i32 0
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  store %struct.ehci_qh* %7, %struct.ehci_qh** %3, align 8
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %9 = call i32 @iaa_watchdog_done(%struct.ehci_hcd* %8)
  %10 = load i32, i32* @QH_STATE_IDLE, align 4
  %11 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %12 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %14 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %17 = call i32 @qh_put(%struct.ehci_qh* %16)
  %18 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %19 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %18, i32 0, i32 1
  %20 = load %struct.ehci_qh*, %struct.ehci_qh** %19, align 8
  store %struct.ehci_qh* %20, %struct.ehci_qh** %4, align 8
  %21 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 0
  store %struct.ehci_qh* %21, %struct.ehci_qh** %23, align 8
  %24 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %25 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %24, i32 0, i32 1
  store %struct.ehci_qh* null, %struct.ehci_qh** %25, align 8
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %28 = call i32 @qh_completions(%struct.ehci_hcd* %26, %struct.ehci_qh* %27)
  %29 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %30 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %29, i32 0, i32 0
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %1
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %35 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @HC_IS_RUNNING(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %43 = call i32 @qh_link_async(%struct.ehci_hcd* %41, %struct.ehci_qh* %42)
  br label %64

44:                                               ; preds = %33, %1
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %46 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @HC_IS_RUNNING(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %61 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %62 = call i32 @timer_action(%struct.ehci_hcd* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %51, %44
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %66 = call i32 @qh_put(%struct.ehci_qh* %65)
  %67 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %68 = icmp ne %struct.ehci_qh* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %71 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %70, i32 0, i32 0
  store %struct.ehci_qh* null, %struct.ehci_qh** %71, align 8
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %73 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %74 = call i32 @start_unlink_async(%struct.ehci_hcd* %72, %struct.ehci_qh* %73)
  br label %75

75:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @iaa_watchdog_done(%struct.ehci_hcd*) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @qh_link_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @timer_action(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
