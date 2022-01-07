; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_scan_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_scan_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, %struct.ehci_qh*, %struct.TYPE_6__* }
%struct.ehci_qh = type { i64, i64, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ehci_qh* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ehci_qh* }
%struct.TYPE_8__ = type { i32 }

@TIMER_IO_WATCHDOG = common dso_local global i32 0, align 4
@TIMER_ASYNC_SHRINK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EHCI_SHRINK_JIFFIES = common dso_local global i64 0, align 8
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @scan_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_async(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %7 = load i32, i32* @TIMER_IO_WATCHDOG, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %9 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  %10 = call i32 @timer_action_done(%struct.ehci_hcd* %8, i32 %9)
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %12 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @HC_IS_RUNNING(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.ehci_qh*, %struct.ehci_qh** %23, align 8
  %25 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %25, i32 0, i32 1
  store %struct.ehci_qh* %24, %struct.ehci_qh** %26, align 8
  br label %27

27:                                               ; preds = %106, %1
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 1
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %29, align 8
  %31 = icmp ne %struct.ehci_qh* %30, null
  br i1 %31, label %32, label %107

32:                                               ; preds = %27
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 1
  %35 = load %struct.ehci_qh*, %struct.ehci_qh** %34, align 8
  store %struct.ehci_qh* %35, %struct.ehci_qh** %4, align 8
  %36 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %37 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.ehci_qh*, %struct.ehci_qh** %38, align 8
  %40 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %40, i32 0, i32 1
  store %struct.ehci_qh* %39, %struct.ehci_qh** %41, align 8
  br label %42

42:                                               ; preds = %71, %32
  %43 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %44 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %43, i32 0, i32 2
  %45 = call i64 @list_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %49 = call %struct.ehci_qh* @qh_get(%struct.ehci_qh* %48)
  store %struct.ehci_qh* %49, %struct.ehci_qh** %4, align 8
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %52 = call i32 @qh_completions(%struct.ehci_hcd* %50, %struct.ehci_qh* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %54 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %60 = call i32 @unlink_async(%struct.ehci_hcd* %58, %struct.ehci_qh* %59)
  br label %61

61:                                               ; preds = %57, %47
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* @EHCI_SHRINK_JIFFIES, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %66 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %68 = call i32 @qh_put(%struct.ehci_qh* %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %42

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %75 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %74, i32 0, i32 2
  %76 = call i64 @list_empty(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %73
  %79 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %80 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @QH_STATE_LINKED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %86 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %95 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @time_after_eq(i64 %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92, %89
  %100 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %101 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %102 = call i32 @start_unlink_async(%struct.ehci_hcd* %100, %struct.ehci_qh* %101)
  br label %105

103:                                              ; preds = %92, %84
  %104 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %78, %73
  br label %27

107:                                              ; preds = %27
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %113 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  %114 = call i32 @timer_action(%struct.ehci_hcd* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  ret void
}

declare dso_local i32 @timer_action_done(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.ehci_qh* @qh_get(%struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @timer_action(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
