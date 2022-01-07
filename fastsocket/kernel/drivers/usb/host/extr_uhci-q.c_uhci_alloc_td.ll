; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_alloc_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_alloc_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_td = type { i32, i32, i32, i32 }
%struct.uhci_hcd = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uhci_td* (%struct.uhci_hcd*)* @uhci_alloc_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_td*, align 8
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhci_td*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  %6 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.uhci_td* @dma_pool_alloc(i32 %8, i32 %9, i32* %4)
  store %struct.uhci_td* %10, %struct.uhci_td** %5, align 8
  %11 = load %struct.uhci_td*, %struct.uhci_td** %5, align 8
  %12 = icmp ne %struct.uhci_td* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.uhci_td* null, %struct.uhci_td** %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.uhci_td*, %struct.uhci_td** %5, align 8
  %17 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.uhci_td*, %struct.uhci_td** %5, align 8
  %19 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load %struct.uhci_td*, %struct.uhci_td** %5, align 8
  %21 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %20, i32 0, i32 2
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.uhci_td*, %struct.uhci_td** %5, align 8
  %24 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.uhci_td*, %struct.uhci_td** %5, align 8
  store %struct.uhci_td* %26, %struct.uhci_td** %2, align 8
  br label %27

27:                                               ; preds = %14, %13
  %28 = load %struct.uhci_td*, %struct.uhci_td** %2, align 8
  ret %struct.uhci_td* %28
}

declare dso_local %struct.uhci_td* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
