; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wdt_pci.c_wdtpci_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wdt_pci.c_wdtpci_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdtpci_lock = common dso_local global i32 0, align 4
@WDT_SR = common dso_local global i32 0, align 4
@WDC_SR_ISOI0 = common dso_local global i8 0, align 1
@WDIOF_EXTERN1 = common dso_local global i32 0, align 4
@WDC_SR_ISII1 = common dso_local global i8 0, align 1
@WDIOF_EXTERN2 = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@WDC_SR_TGOOD = common dso_local global i8 0, align 1
@WDIOF_OVERHEAT = common dso_local global i32 0, align 4
@WDC_SR_PSUOVER = common dso_local global i8 0, align 1
@WDIOF_POWEROVER = common dso_local global i32 0, align 4
@WDC_SR_PSUUNDR = common dso_local global i8 0, align 1
@WDIOF_POWERUNDER = common dso_local global i32 0, align 4
@tachometer = common dso_local global i64 0, align 8
@WDC_SR_FANGOOD = common dso_local global i8 0, align 1
@WDIOF_FANFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wdtpci_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdtpci_get_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @wdtpci_lock, i64 %5)
  %7 = load i32, i32* @WDT_SR, align 4
  %8 = call zeroext i8 @inb(i32 %7)
  store i8 %8, i8* %3, align 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @wdtpci_lock, i64 %9)
  %11 = load i32*, i32** %2, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @WDC_SR_ISOI0, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @WDIOF_EXTERN1, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @WDC_SR_ISII1, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @WDIOF_EXTERN2, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* @type, align 4
  %37 = icmp eq i32 %36, 501
  br i1 %37, label %38, label %91

38:                                               ; preds = %35
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @WDC_SR_TGOOD, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @WDIOF_OVERHEAT, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @WDC_SR_PSUOVER, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @WDIOF_POWEROVER, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i8, i8* %3, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @WDC_SR_PSUUNDR, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @WDIOF_POWERUNDER, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i64, i64* @tachometer, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i8, i8* %3, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @WDC_SR_FANGOOD, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @WDIOF_FANFAULT, align 4
  %86 = load i32*, i32** %2, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %77
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %35
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
