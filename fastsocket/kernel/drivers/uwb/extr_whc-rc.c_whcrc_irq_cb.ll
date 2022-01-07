; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_irq_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_irq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whcrc = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@URCSTS = common dso_local global i64 0, align 8
@URCSTS_INT_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@URCSTS_HSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"host system error -- hardware halted\0A\00", align 1
@URCSTS_ER = common dso_local global i32 0, align 4
@URCSTS_RCI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @whcrc_irq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_irq_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.whcrc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.whcrc*
  store %struct.whcrc* %10, %struct.whcrc** %6, align 8
  %11 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %12 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %16 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @URCSTS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @le_readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @URCSTS_INT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @URCSTS_INT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %32 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @URCSTS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @le_writel(i32 %30, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @URCSTS_HSE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %63

44:                                               ; preds = %27
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @URCSTS_ER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %51 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %50, i32 0, i32 1
  %52 = call i32 @schedule_work(i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @URCSTS_RCI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %60 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %59, i32 0, i32 0
  %61 = call i32 @wake_up_all(i32* %60)
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @le_readl(i64) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
