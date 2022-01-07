; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_TXPEINV = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE1 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_RXON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"chester power off\0A\00", align 1
@MAC_REG_GPIOCTL0 = common dso_local global i32 0, align 4
@LED_ACTSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARDbRadioPowerOff(i32 %0) #0 {
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
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %2, align 8
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %47 [
    i32 128, label %21
    i32 131, label %34
    i32 129, label %34
    i32 130, label %34
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %26 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %27 = call i32 @MACvWordRegBitsOff(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %32 = load i32, i32* @SOFTPWRCTL_SWPE1, align 4
  %33 = call i32 @MACvWordRegBitsOn(i32 %30, i32 %31, i32 %32)
  br label %47

34:                                               ; preds = %17, %17, %17
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %39 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %40 = call i32 @MACvWordRegBitsOff(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %45 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %46 = call i32 @MACvWordRegBitsOff(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %17, %34, %21
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %52 = load i32, i32* @HOSTCR_RXON, align 4
  %53 = call i32 @MACvRegBitsOff(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @BBvSetDeepSleep(i32 %56, i32 %59)
  %61 = load i64, i64* @TRUE, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAC_REG_GPIOCTL0, align 4
  %69 = load i32, i32* @LED_ACTSET, align 4
  %70 = call i32 @MACvRegBitsOn(i32 %67, i32 %68, i32 %69)
  %71 = load i64, i64* %5, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %47, %15
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @MACvWordRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @BBvSetDeepSleep(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
