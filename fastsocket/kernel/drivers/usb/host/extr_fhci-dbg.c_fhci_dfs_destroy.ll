; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-dbg.c_fhci_dfs_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-dbg.c_fhci_dfs_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_dfs_destroy(%struct.fhci_hcd* %0) #0 {
  %2 = alloca %struct.fhci_hcd*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %2, align 8
  %3 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @debugfs_remove(i64 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @debugfs_remove(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @debugfs_remove(i64 %31)
  br label %33

33:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @debugfs_remove(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
