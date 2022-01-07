; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i8*, i32, i32, i32 (%struct.snd_soc_codec*, i32, i32)*, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, %struct.ad1938_priv*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ad1938_priv = type { i32, %struct.snd_soc_codec }

@ad1938_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Another ad1938 is registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AD1938_NUM_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"AD1938\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ad1938_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ad1938_read_reg_cache = common dso_local global i32 0, align 4
@ad1938_set_bias_level = common dso_local global i32 0, align 4
@AD1938_DAC_CHNL_MUTE = common dso_local global i32 0, align 4
@AD1938_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD1938_DAC_CTRL0 = common dso_local global i32 0, align 4
@AD1938_ADC_CTRL0 = common dso_local global i32 0, align 4
@AD1938_ADC_CTRL1 = common dso_local global i32 0, align 4
@AD1938_PLL_CLK_CTRL0 = common dso_local global i32 0, align 4
@AD1938_PLL_CLK_CTRL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register codec: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to register DAI: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad1938_priv*)* @ad1938_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1938_register(%struct.ad1938_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad1938_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  store %struct.ad1938_priv* %0, %struct.ad1938_priv** %3, align 8
  %6 = load %struct.ad1938_priv*, %struct.ad1938_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ad1938_priv, %struct.ad1938_priv* %6, i32 0, i32 1
  store %struct.snd_soc_codec* %7, %struct.snd_soc_codec** %5, align 8
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @ad1938_codec, align 8
  %9 = icmp ne %struct.snd_soc_codec* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @dev_err(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %138

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 13
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.ad1938_priv*, %struct.ad1938_priv** %3, align 8
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 12
  store %struct.ad1938_priv* %27, %struct.ad1938_priv** %29, align 8
  %30 = load %struct.ad1938_priv*, %struct.ad1938_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ad1938_priv, %struct.ad1938_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @AD1938_NUM_REGS, align 4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @THIS_MODULE, align 4
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %43, i32 0, i32 8
  store %struct.TYPE_3__* @ad1938_dai, %struct.TYPE_3__** %44, align 8
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 3
  store i32 (%struct.snd_soc_codec*, i32, i32)* @ad1938_write_reg, i32 (%struct.snd_soc_codec*, i32, i32)** %48, align 8
  %49 = load i32, i32* @ad1938_read_reg_cache, align 4
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ad1938_set_bias_level, align 4
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %56 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %55, i32 0, i32 5
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %59 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %58, i32 0, i32 4
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ad1938_dai, i32 0, i32 0), align 4
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  store %struct.snd_soc_codec* %64, %struct.snd_soc_codec** @ad1938_codec, align 8
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 3
  %67 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %66, align 8
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %69 = load i32, i32* @AD1938_DAC_CHNL_MUTE, align 4
  %70 = call i32 %67(%struct.snd_soc_codec* %68, i32 %69, i32 0)
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %72 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %71, i32 0, i32 3
  %73 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %72, align 8
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %75 = load i32, i32* @AD1938_DAC_CTRL2, align 4
  %76 = call i32 %73(%struct.snd_soc_codec* %74, i32 %75, i32 26)
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %78 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %77, i32 0, i32 3
  %79 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %78, align 8
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %81 = load i32, i32* @AD1938_DAC_CTRL0, align 4
  %82 = call i32 %79(%struct.snd_soc_codec* %80, i32 %81, i32 65)
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %84 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %83, i32 0, i32 3
  %85 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %84, align 8
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %87 = load i32, i32* @AD1938_ADC_CTRL0, align 4
  %88 = call i32 %85(%struct.snd_soc_codec* %86, i32 %87, i32 3)
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %90 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %89, i32 0, i32 3
  %91 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %90, align 8
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %93 = load i32, i32* @AD1938_ADC_CTRL1, align 4
  %94 = call i32 %91(%struct.snd_soc_codec* %92, i32 %93, i32 67)
  %95 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %96 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %95, i32 0, i32 3
  %97 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %96, align 8
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %99 = load i32, i32* @AD1938_PLL_CLK_CTRL0, align 4
  %100 = call i32 %97(%struct.snd_soc_codec* %98, i32 %99, i32 157)
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %102 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %101, i32 0, i32 3
  %103 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %102, align 8
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %105 = load i32, i32* @AD1938_PLL_CLK_CTRL1, align 4
  %106 = call i32 %103(%struct.snd_soc_codec* %104, i32 %105, i32 4)
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %108 = call i32 @ad1938_fill_cache(%struct.snd_soc_codec* %107)
  %109 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %110 = call i32 @snd_soc_register_codec(%struct.snd_soc_codec* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %17
  %114 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %115 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load %struct.ad1938_priv*, %struct.ad1938_priv** %3, align 8
  %120 = call i32 @kfree(%struct.ad1938_priv* %119)
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %138

122:                                              ; preds = %17
  %123 = call i32 @snd_soc_register_dai(%struct.TYPE_3__* @ad1938_dai)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %128 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %133 = call i32 @snd_soc_unregister_codec(%struct.snd_soc_codec* %132)
  %134 = load %struct.ad1938_priv*, %struct.ad1938_priv** %3, align 8
  %135 = call i32 @kfree(%struct.ad1938_priv* %134)
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %126, %113, %10
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ad1938_write_reg(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ad1938_fill_cache(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_register_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @kfree(%struct.ad1938_priv*) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
