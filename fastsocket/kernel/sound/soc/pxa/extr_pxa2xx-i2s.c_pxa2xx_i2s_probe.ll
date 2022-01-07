; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"I2SCLK\00", align 1
@clk_i2s = common dso_local global i32 0, align 4
@pxa_i2s_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SACR0_RST = common dso_local global i64 0, align 8
@SACR0 = common dso_local global i64 0, align 8
@SACR1_DRPL = common dso_local global i32 0, align 4
@SACR1_DREC = common dso_local global i32 0, align 4
@SACR1 = common dso_local global i32 0, align 4
@SAIMR_RFS = common dso_local global i32 0, align 4
@SAIMR_TFS = common dso_local global i32 0, align 4
@SAIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa2xx_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_i2s_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call i32 @clk_get(i32* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @clk_i2s, align 4
  %8 = load i32, i32* @clk_i2s, align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @clk_i2s, align 4
  %13 = call i32 @PTR_ERR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store i32* %16, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pxa_i2s_dai, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pxa_i2s_dai, i32 0, i32 0), align 8
  %17 = call i32 @snd_soc_register_dai(%struct.TYPE_3__* @pxa_i2s_dai)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @clk_i2s, align 4
  %22 = call i32 @clk_put(i32 %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i64, i64* @SACR0_RST, align 8
  store i64 %24, i64* @SACR0, align 8
  store i64 0, i64* @SACR0, align 8
  %25 = load i32, i32* @SACR1_DRPL, align 4
  %26 = load i32, i32* @SACR1_DREC, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* @SACR1, align 4
  %28 = load i32, i32* @SAIMR_RFS, align 4
  %29 = load i32, i32* @SAIMR_TFS, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @SAIMR, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* @SAIMR, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %23, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
