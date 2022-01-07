; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@STS_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Host controller not halted, aborting reset.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"// Reset the HC\0A\00", align 1
@CMD_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Wait for controller to be ready for doorbell rings\0A\00", align 1
@STS_CNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_reset(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @xhci_readl(%struct.xhci_hcd* %8, i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @STS_HALT, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %20 = call i32 @xhci_warn(%struct.xhci_hcd* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

21:                                               ; preds = %1
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %23 = call i32 @xhci_dbg(%struct.xhci_hcd* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @xhci_readl(%struct.xhci_hcd* %24, i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @CMD_RESET, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = call i32 @xhci_writel(%struct.xhci_hcd* %33, i32 %34, i32* %38)
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* @CMD_RESET, align 4
  %46 = call i32 @xhci_handshake(%struct.xhci_hcd* %40, i32* %44, i32 %45, i32 0, i32 10000000)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %21
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %91

51:                                               ; preds = %21
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %53 = call i32 @xhci_dbg(%struct.xhci_hcd* %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* @STS_CNR, align 4
  %60 = call i32 @xhci_handshake(%struct.xhci_hcd* %54, i32* %58, i32 %59, i32 0, i32 10000000)
  store i32 %60, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %86, %51
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %73 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %80 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %61

89:                                               ; preds = %61
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %49, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_writel(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i32 @xhci_handshake(%struct.xhci_hcd*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
