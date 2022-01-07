; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_get_largest_overhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_get_largest_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_interval_bw = type { i64* }

@LS_OVERHEAD_TYPE = common dso_local global i64 0, align 8
@LS_OVERHEAD = common dso_local global i32 0, align 4
@FS_OVERHEAD_TYPE = common dso_local global i64 0, align 8
@FS_OVERHEAD = common dso_local global i32 0, align 4
@HS_OVERHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_interval_bw*)* @xhci_get_largest_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_largest_overhead(%struct.xhci_interval_bw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_interval_bw*, align 8
  store %struct.xhci_interval_bw* %0, %struct.xhci_interval_bw** %3, align 8
  %4 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %3, align 8
  %5 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @LS_OVERHEAD_TYPE, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @LS_OVERHEAD, align 4
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @FS_OVERHEAD_TYPE, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @FS_OVERHEAD, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @HS_OVERHEAD, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
