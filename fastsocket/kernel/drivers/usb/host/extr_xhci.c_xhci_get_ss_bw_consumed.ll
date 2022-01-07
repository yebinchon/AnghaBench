; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_get_ss_bw_consumed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_get_ss_bw_consumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_bw_info = type { i32, i32, i32, i32 }

@SS_BLOCK = common dso_local global i32 0, align 4
@SS_OVERHEAD_BURST = common dso_local global i32 0, align 4
@SS_OVERHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_bw_info*)* @xhci_get_ss_bw_consumed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_ss_bw_consumed(%struct.xhci_bw_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_bw_info*, align 8
  %4 = alloca i32, align 4
  store %struct.xhci_bw_info* %0, %struct.xhci_bw_info** %3, align 8
  %5 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %6 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SS_BLOCK, align 4
  %9 = call i32 @DIV_ROUND_UP(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @SS_OVERHEAD_BURST, align 4
  %16 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %17 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %20 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  %23 = load i32, i32* @SS_OVERHEAD, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %23, %24
  %26 = mul i32 %22, %25
  %27 = add i32 %15, %26
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %1
  %29 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %30 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %31, %34
  %36 = load i32, i32* @SS_OVERHEAD, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* @SS_OVERHEAD_BURST, align 4
  %40 = add i32 %38, %39
  %41 = mul i32 %35, %40
  %42 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %3, align 8
  %43 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @DIV_ROUND_UP(i32 %41, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %28, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
