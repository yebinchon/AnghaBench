; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_del_comp_mod_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_del_comp_mod_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, i64, i32 }

@PORT_PLS_MASK = common dso_local global i64 0, align 8
@XDEV_U0 = common dso_local global i64 0, align 8
@XHCI_COMP_MODE_QUIRK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"All USB3 ports have entered U0 already!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Compliance Mode Recovery Timer Deleted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_del_comp_mod_timer(%struct.xhci_hcd* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 1, %11
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PORT_PLS_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @XDEV_U0, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XHCI_COMP_MODE_QUIRK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %59

28:                                               ; preds = %3
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 3
  %53 = call i32 @del_timer_sync(i32* %52)
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %55 = call i32 @xhci_dbg(%struct.xhci_hcd* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %57 = call i32 @xhci_dbg(%struct.xhci_hcd* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %50, %37
  br label %59

59:                                               ; preds = %27, %58, %34, %28
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
