; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_check_ed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_check_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }
%struct.ed = type { i32, i32, i32, i32 }

@ED_IN = common dso_local global i32 0, align 4
@TD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*, %struct.ed*)* @check_ed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ed(%struct.ohci_hcd* %0, %struct.ed* %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca %struct.ed*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store %struct.ed* %1, %struct.ed** %4, align 8
  %5 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %6 = load %struct.ed*, %struct.ed** %4, align 8
  %7 = getelementptr inbounds %struct.ed, %struct.ed* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hc32_to_cpu(%struct.ohci_hcd* %5, i32 %8)
  %10 = load i32, i32* @ED_IN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %15 = load %struct.ed*, %struct.ed** %4, align 8
  %16 = getelementptr inbounds %struct.ed, %struct.ed* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hc32_to_cpu(%struct.ohci_hcd* %14, i32 %17)
  %19 = load i32, i32* @TD_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %22 = load %struct.ed*, %struct.ed** %4, align 8
  %23 = getelementptr inbounds %struct.ed, %struct.ed* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hc32_to_cpu(%struct.ohci_hcd* %21, i32 %24)
  %26 = load i32, i32* @TD_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %13
  %30 = load %struct.ed*, %struct.ed** %4, align 8
  %31 = getelementptr inbounds %struct.ed, %struct.ed* %30, i32 0, i32 0
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %13, %2
  %36 = phi i1 [ false, %13 ], [ false, %2 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @hc32_to_cpu(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
