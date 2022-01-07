; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_init_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_init_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pwm_bl = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@PWM_CMR = common dso_local global i32 0, align 4
@PWM_CDTY = common dso_local global i32 0, align 4
@PWM_CPRD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Atmel PWM backlight driver (%lu Hz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_pwm_bl*)* @atmel_pwm_bl_init_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_bl_init_pwm(%struct.atmel_pwm_bl* %0) #0 {
  %2 = alloca %struct.atmel_pwm_bl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.atmel_pwm_bl* %0, %struct.atmel_pwm_bl** %2, align 8
  %5 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %6 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %11 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %16 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %14, %19
  %21 = call i32 @DIV_ROUND_UP(i64 %9, i32 %20)
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @fls(i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %26, 15
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i64 15, i64* %4, align 8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %31 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %30, i32 0, i32 0
  %32 = load i32, i32* @PWM_CMR, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @pwm_channel_writel(%struct.TYPE_11__* %31, i32 %32, i64 %33)
  %35 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %36 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %35, i32 0, i32 0
  %37 = load i32, i32* @PWM_CDTY, align 4
  %38 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %44 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %42, %48
  %50 = call i32 @pwm_channel_writel(%struct.TYPE_11__* %36, i32 %37, i64 %49)
  %51 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %52 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %51, i32 0, i32 0
  %53 = load i32, i32* @PWM_CPRD, align 4
  %54 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %55 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @pwm_channel_writel(%struct.TYPE_11__* %52, i32 %53, i64 %59)
  %61 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %62 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %66 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %70 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %68, %74
  %76 = load i64, i64* %4, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %75, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %2, align 8
  %84 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %83, i32 0, i32 0
  %85 = call i32 @pwm_channel_enable(%struct.TYPE_11__* %84)
  ret i32 %85
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @pwm_channel_writel(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pwm_channel_enable(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
