; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_check_tt_bw_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_check_tt_bw_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xhci_interval_bw_table }
%struct.xhci_interval_bw_table = type { i64 }
%struct.xhci_virt_device = type { i32, %struct.xhci_tt_bw_info* }
%struct.xhci_tt_bw_info = type { i64 }

@TT_HS_OVERHEAD = common dso_local global i64 0, align 8
@HS_BW_LIMIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_virt_device*, i32)* @xhci_check_tt_bw_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_check_tt_bw_table(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_virt_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_interval_bw_table*, align 8
  %9 = alloca %struct.xhci_tt_bw_info*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %14 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.xhci_interval_bw_table* %19, %struct.xhci_interval_bw_table** %8, align 8
  %20 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %21 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %20, i32 0, i32 1
  %22 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %21, align 8
  store %struct.xhci_tt_bw_info* %22, %struct.xhci_tt_bw_info** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %9, align 8
  %31 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.xhci_interval_bw_table*, %struct.xhci_interval_bw_table** %8, align 8
  %36 = getelementptr inbounds %struct.xhci_interval_bw_table, %struct.xhci_interval_bw_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TT_HS_OVERHEAD, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @HS_BW_LIMIT, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %47

46:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45, %42, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
