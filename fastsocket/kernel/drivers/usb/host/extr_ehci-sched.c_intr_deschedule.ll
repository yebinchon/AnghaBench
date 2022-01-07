; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_intr_deschedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_intr_deschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i64, i32, i32, %struct.ehci_qh_hw* }
%struct.ehci_qh_hw = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_COMPLETING = common dso_local global i64 0, align 8
@QH_CMASK = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"can't reschedule qh %p, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*)* @intr_deschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_deschedule(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_qh_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %8 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %9 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %8, i32 0, i32 3
  %10 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %9, align 8
  store %struct.ehci_qh_hw* %10, %struct.ehci_qh_hw** %6, align 8
  %11 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %12 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QH_STATE_LINKED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %18 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QH_STATE_COMPLETING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %24 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %16
  br label %82

26:                                               ; preds = %2
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %29 = call i32 @qh_unlink_periodic(%struct.ehci_hcd* %27, %struct.ehci_qh* %28)
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %30, i32 0, i32 2
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %36 = load i32, i32* @QH_CMASK, align 4
  %37 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %35, i32 %36)
  %38 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %6, align 8
  %39 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %26
  store i32 2, i32* %5, align 4
  br label %45

44:                                               ; preds = %34
  store i32 55, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @udelay(i32 %46)
  %48 = load i64, i64* @QH_STATE_IDLE, align 8
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %50 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %52 = call i32 @EHCI_LIST_END(%struct.ehci_hcd* %51)
  %53 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %6, align 8
  %54 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @wmb()
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %57 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %58 = call i32 @qh_completions(%struct.ehci_hcd* %56, %struct.ehci_qh* %57)
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %60 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %59, i32 0, i32 2
  %61 = call i64 @list_empty(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %45
  %64 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %65 = call %struct.TYPE_2__* @ehci_to_hcd(%struct.ehci_hcd* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @HC_IS_RUNNING(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %72 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %73 = call i32 @qh_schedule(%struct.ehci_hcd* %71, %struct.ehci_qh* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %78 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ehci_err(%struct.ehci_hcd* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.ehci_qh* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %25, %81, %63, %45
  ret void
}

declare dso_local i32 @qh_unlink_periodic(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qh_completions(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_2__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @qh_schedule(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @ehci_err(%struct.ehci_hcd*, i8*, %struct.ehci_qh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
