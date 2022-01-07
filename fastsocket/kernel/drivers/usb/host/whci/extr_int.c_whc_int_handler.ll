; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_int.c_whc_int_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_int.c_whc_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.wusbhc = type { i32 }
%struct.whc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@WUSBSTS = common dso_local global i64 0, align 8
@WUSBSTS_INT_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@WUSBSTS_GEN_CMD_DONE = common dso_local global i32 0, align 4
@WUSBSTS_HOST_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"FIXME: host system error\0A\00", align 1
@WUSBSTS_ASYNC_SCHED_SYNCED = common dso_local global i32 0, align 4
@WUSBSTS_PERIODIC_SCHED_SYNCED = common dso_local global i32 0, align 4
@WUSBSTS_DNTS_INT = common dso_local global i32 0, align 4
@WUSBSTS_INT = common dso_local global i32 0, align 4
@WUSBSTS_ERR_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_int_handler(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.whc*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %7)
  store %struct.wusbhc* %8, %struct.wusbhc** %4, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %10 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %9)
  store %struct.whc* %10, %struct.whc** %5, align 8
  %11 = load %struct.whc*, %struct.whc** %5, align 8
  %12 = getelementptr inbounds %struct.whc, %struct.whc* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WUSBSTS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @le_readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @WUSBSTS_INT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %94

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WUSBSTS_INT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.whc*, %struct.whc** %5, align 8
  %28 = getelementptr inbounds %struct.whc, %struct.whc* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WUSBSTS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @le_writel(i32 %26, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @WUSBSTS_GEN_CMD_DONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load %struct.whc*, %struct.whc** %5, align 8
  %39 = getelementptr inbounds %struct.whc, %struct.whc* %38, i32 0, i32 5
  %40 = call i32 @wake_up(i32* %39)
  br label %41

41:                                               ; preds = %37, %23
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @WUSBSTS_HOST_ERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.whc*, %struct.whc** %5, align 8
  %48 = getelementptr inbounds %struct.whc, %struct.whc* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @WUSBSTS_ASYNC_SCHED_SYNCED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.whc*, %struct.whc** %5, align 8
  %59 = getelementptr inbounds %struct.whc, %struct.whc* %58, i32 0, i32 3
  %60 = call i32 @wake_up(i32* %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @WUSBSTS_PERIODIC_SCHED_SYNCED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.whc*, %struct.whc** %5, align 8
  %68 = getelementptr inbounds %struct.whc, %struct.whc* %67, i32 0, i32 2
  %69 = call i32 @wake_up(i32* %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @WUSBSTS_DNTS_INT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.whc*, %struct.whc** %5, align 8
  %77 = getelementptr inbounds %struct.whc, %struct.whc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.whc*, %struct.whc** %5, align 8
  %80 = getelementptr inbounds %struct.whc, %struct.whc* %79, i32 0, i32 0
  %81 = call i32 @queue_work(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @WUSBSTS_INT, align 4
  %85 = load i32, i32* @WUSBSTS_ERR_INT, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.whc*, %struct.whc** %5, align 8
  %91 = call i32 @transfer_done(%struct.whc* %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %21
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @le_readl(i64) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @transfer_done(%struct.whc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
