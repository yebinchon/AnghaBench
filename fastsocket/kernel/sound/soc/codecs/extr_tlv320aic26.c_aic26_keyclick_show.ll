; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_keyclick_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_keyclick_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.aic26 = type { i32 }

@AIC26_REG_AUDIO_CTRL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"amp=%x freq=%iHz len=%iclks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aic26_keyclick_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_keyclick_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.aic26*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.aic26* @dev_get_drvdata(%struct.device* %12)
  store %struct.aic26* %13, %struct.aic26** %7, align 8
  %14 = load %struct.aic26*, %struct.aic26** %7, align 8
  %15 = getelementptr inbounds %struct.aic26, %struct.aic26* %14, i32 0, i32 0
  %16 = load i32, i32* @AIC26_REG_AUDIO_CTRL2, align 4
  %17 = call i32 @aic26_reg_read_cache(i32* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 12
  %20 = and i32 %19, 7
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 7
  %24 = shl i32 125, %23
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 15
  %29 = add nsw i32 1, %28
  %30 = mul nsw i32 2, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local %struct.aic26* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @aic26_reg_read_cache(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
