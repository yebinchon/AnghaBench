; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_abdac_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_abdac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_abdac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INT_STATUS = common dso_local global i32 0, align 4
@UNDERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"underrun detected\0A\00", align 1
@INT_CLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"spurious interrupt (status=0x%x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @abdac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abdac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_abdac*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.atmel_abdac*
  store %struct.atmel_abdac* %8, %struct.atmel_abdac** %5, align 8
  %9 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %10 = load i32, i32* @INT_STATUS, align 4
  %11 = call i32 @dac_readl(%struct.atmel_abdac* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @UNDERRUN, align 4
  %14 = call i32 @DAC_BIT(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %19 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %24 = load i32, i32* @INT_CLR, align 4
  %25 = load i32, i32* @UNDERRUN, align 4
  %26 = call i32 @DAC_BIT(i32 %25)
  %27 = call i32 @dac_writel(%struct.atmel_abdac* %23, i32 %24, i32 %26)
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %30 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %36 = load i32, i32* @INT_CLR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dac_writel(%struct.atmel_abdac* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %17
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @dac_readl(%struct.atmel_abdac*, i32) #1

declare dso_local i32 @DAC_BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dac_writel(%struct.atmel_abdac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
