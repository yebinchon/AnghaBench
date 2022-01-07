; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_qh_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_qh_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_qh = type { i32, i32, i64, %struct.TYPE_2__, i32, %struct.ehci_hcd* }
%struct.TYPE_2__ = type { i64 }
%struct.ehci_hcd = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unused qh not empty!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_qh*)* @qh_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qh_destroy(%struct.ehci_qh* %0) #0 {
  %2 = alloca %struct.ehci_qh*, align 8
  %3 = alloca %struct.ehci_hcd*, align 8
  store %struct.ehci_qh* %0, %struct.ehci_qh** %2, align 8
  %4 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %5 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %4, i32 0, i32 5
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  store %struct.ehci_hcd* %6, %struct.ehci_hcd** %3, align 8
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %8 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %7, i32 0, i32 4
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %13 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11, %1
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = call i32 @ehci_dbg(%struct.ehci_hcd* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %23 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %29 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ehci_qtd_free(%struct.ehci_hcd* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %37 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %40 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_pool_free(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  %44 = call i32 @kfree(%struct.ehci_qh* %43)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ehci_qtd_free(%struct.ehci_hcd*, i64) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
