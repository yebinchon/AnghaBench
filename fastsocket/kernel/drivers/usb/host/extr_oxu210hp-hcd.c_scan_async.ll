; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_scan_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_scan_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.ehci_qh* }

@TIMER_IO_WATCHDOG = common dso_local global i32 0, align 4
@TIMER_ASYNC_SHRINK = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @scan_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_async(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca %struct.ehci_qh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %6 = load i32, i32* @TIMER_IO_WATCHDOG, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %19 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  %20 = call i32 @timer_action_done(%struct.oxu_hcd* %18, i32 %19)
  br label %21

21:                                               ; preds = %62, %17
  %22 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %26, align 8
  store %struct.ehci_qh* %27, %struct.ehci_qh** %3, align 8
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %29 = icmp ne %struct.ehci_qh* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %101, %33
  %35 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %36 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %35, i32 0, i32 3
  %37 = call i64 @list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %34
  %40 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %41 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %44 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %49 = call %struct.ehci_qh* @qh_get(%struct.ehci_qh* %48)
  store %struct.ehci_qh* %49, %struct.ehci_qh** %3, align 8
  %50 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %54 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %56 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %57 = call i32 @qh_completions(%struct.oxu_hcd* %55, %struct.ehci_qh* %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %59 = call i32 @qh_put(%struct.ehci_qh* %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %21

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %39, %34
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %66 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %65, i32 0, i32 3
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  %70 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %71 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  store i32 %78, i32* %4, align 4
  br label %95

79:                                               ; preds = %69
  %80 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %81 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %86 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @QH_STATE_LINKED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %92 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %93 = call i32 @start_unlink_async(%struct.oxu_hcd* %91, %struct.ehci_qh* %92)
  br label %94

94:                                               ; preds = %90, %84, %79
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %98 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.ehci_qh*, %struct.ehci_qh** %99, align 8
  store %struct.ehci_qh* %100, %struct.ehci_qh** %3, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %103 = icmp ne %struct.ehci_qh* %102, null
  br i1 %103, label %34, label %104

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %21
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %111 = load i32, i32* @TIMER_ASYNC_SHRINK, align 4
  %112 = call i32 @timer_action(%struct.oxu_hcd* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  ret void
}

declare dso_local i32 @timer_action_done(%struct.oxu_hcd*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.ehci_qh* @qh_get(%struct.ehci_qh*) #1

declare dso_local i32 @qh_completions(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i32 @start_unlink_async(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @timer_action(%struct.oxu_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
