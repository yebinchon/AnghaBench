; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_print_run_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_print_run_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"xHCI runtime registers at %p:\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"  %p: Microframe index = 0x%x\0A\00", align 1
@XHCI_INIT_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"  WARN: %p: Rsvd[%i] = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_print_run_regs(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 (%struct.xhci_hcd*, i8*, %struct.TYPE_2__*, ...) @xhci_dbg(%struct.xhci_hcd* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %8)
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i64 @xhci_readl(%struct.xhci_hcd* %10, i32* %14)
  store i64 %15, i64* %3, align 8
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %18 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to %struct.TYPE_2__*
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (%struct.xhci_hcd*, i8*, %struct.TYPE_2__*, ...) @xhci_dbg(%struct.xhci_hcd* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %21, i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %58, %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i64 @xhci_readl(%struct.xhci_hcd* %29, i32* %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @XHCI_INIT_VALUE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %28
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %45 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = bitcast i32* %51 to %struct.TYPE_2__*
  %53 = load i32, i32* %4, align 4
  %54 = load i64, i64* %3, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (%struct.xhci_hcd*, i8*, %struct.TYPE_2__*, ...) @xhci_dbg(%struct.xhci_hcd* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_2__* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %42, %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %25

61:                                               ; preds = %25
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, %struct.TYPE_2__*, ...) #1

declare dso_local i64 @xhci_readl(%struct.xhci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
