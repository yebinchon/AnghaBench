; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hw.c_whc_do_gencmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hw.c_whc_do_gencmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WUSBGENCMDSTS = common dso_local global i64 0, align 8
@WUSBGENCMDSTS_ACTIVE = common dso_local global i32 0, align 4
@WHC_GENCMD_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"generic command timeout (%04x/%04x)\0A\00", align 1
@WUSBGENCMDPARAMS = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@WUSBGENADDR = common dso_local global i64 0, align 8
@WUSBGENCMDSTS_IOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_do_gencmd(%struct.whc* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.whc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.whc*, %struct.whc** %6, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.whc*, %struct.whc** %6, align 8
  %19 = getelementptr inbounds %struct.whc, %struct.whc* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.whc*, %struct.whc** %6, align 8
  %22 = getelementptr inbounds %struct.whc, %struct.whc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WUSBGENCMDSTS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @le_readl(i64 %25)
  %27 = load i32, i32* @WUSBGENCMDSTS_ACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @WHC_GENCMD_TIMEOUT_MS, align 4
  %32 = call i32 @wait_event_timeout(i32 %20, i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %5
  %36 = load %struct.whc*, %struct.whc** %6, align 8
  %37 = getelementptr inbounds %struct.whc, %struct.whc* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.whc*, %struct.whc** %6, align 8
  %41 = getelementptr inbounds %struct.whc, %struct.whc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WUSBGENCMDSTS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @le_readl(i64 %44)
  %46 = load %struct.whc*, %struct.whc** %6, align 8
  %47 = getelementptr inbounds %struct.whc, %struct.whc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WUSBGENCMDPARAMS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @le_readl(i64 %50)
  %52 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %51)
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %103

55:                                               ; preds = %5
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.whc*, %struct.whc** %6, align 8
  %60 = getelementptr inbounds %struct.whc, %struct.whc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @memcpy(i32 %61, i8* %62, i64 %63)
  %65 = load %struct.whc*, %struct.whc** %6, align 8
  %66 = getelementptr inbounds %struct.whc, %struct.whc* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %12, align 8
  br label %69

68:                                               ; preds = %55
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.whc*, %struct.whc** %6, align 8
  %71 = getelementptr inbounds %struct.whc, %struct.whc* %70, i32 0, i32 1
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.whc*, %struct.whc** %6, align 8
  %76 = getelementptr inbounds %struct.whc, %struct.whc* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WUSBGENCMDPARAMS, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @le_writel(i32 %74, i64 %79)
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.whc*, %struct.whc** %6, align 8
  %83 = getelementptr inbounds %struct.whc, %struct.whc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WUSBGENADDR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @le_writeq(i64 %81, i64 %86)
  %88 = load i32, i32* @WUSBGENCMDSTS_ACTIVE, align 4
  %89 = load i32, i32* @WUSBGENCMDSTS_IOC, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.whc*, %struct.whc** %6, align 8
  %94 = getelementptr inbounds %struct.whc, %struct.whc* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WUSBGENCMDSTS, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @le_writel(i32 %92, i64 %97)
  %99 = load %struct.whc*, %struct.whc** %6, align 8
  %100 = getelementptr inbounds %struct.whc, %struct.whc* %99, i32 0, i32 1
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %69, %35
  %104 = load %struct.whc*, %struct.whc** %6, align 8
  %105 = getelementptr inbounds %struct.whc, %struct.whc* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %14, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @le_readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @le_writeq(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
