; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"chester power on\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"chester bHWRadioOff\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"chester bRadioControlOff\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"chester pbRadioOff\0A\00", align 1
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_RXON = common dso_local global i32 0, align 4
@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_TXPEINV = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE1 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@MAC_REG_GPIOCTL0 = common dso_local global i32 0, align 4
@LED_ACTSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARDbRadioPowerOn(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %5, align 8
  %10 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TRUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %2, align 8
  br label %94

34:                                               ; preds = %1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %2, align 8
  br label %94

43:                                               ; preds = %34
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @BBvExitDeepSleep(i32 %46, i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %55 = load i32, i32* @HOSTCR_RXON, align 4
  %56 = call i32 @MACvRegBitsOn(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %82 [
    i32 128, label %60
    i32 131, label %73
    i32 129, label %73
    i32 130, label %73
  ]

60:                                               ; preds = %43
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %65 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %66 = call i32 @MACvWordRegBitsOn(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %71 = load i32, i32* @SOFTPWRCTL_SWPE1, align 4
  %72 = call i32 @MACvWordRegBitsOff(i32 %69, i32 %70, i32 %71)
  br label %82

73:                                               ; preds = %43, %43, %43
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %78 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %79 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @MACvWordRegBitsOn(i32 %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %43, %73, %60
  %83 = load i64, i64* @FALSE, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MAC_REG_GPIOCTL0, align 4
  %91 = load i32, i32* @LED_ACTSET, align 4
  %92 = call i32 @MACvRegBitsOff(i32 %89, i32 %90, i32 %91)
  %93 = load i64, i64* %5, align 8
  store i64 %93, i64* %2, align 8
  br label %94

94:                                               ; preds = %82, %40, %32
  %95 = load i64, i64* %2, align 8
  ret i64 %95
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @BBvExitDeepSleep(i32, i32) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvWordRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
