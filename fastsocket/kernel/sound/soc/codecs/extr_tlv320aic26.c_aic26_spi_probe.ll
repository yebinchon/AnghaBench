; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_spi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.spi_device = type { %struct.TYPE_14__ }
%struct.aic26 = type { i32, %struct.TYPE_15__, i32, %struct.spi_device* }
%struct.TYPE_15__ = type { i8*, i32, i32 (%struct.TYPE_15__*, i32)*, i32, i32, i32, i32, i32, i32 (%struct.TYPE_15__*, i32, i32)*, %struct.TYPE_13__*, i32, %struct.aic26* }

@.str = private unnamed_addr constant [32 x i8] c"probing tlv320aic26 spi device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"aic26\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@aic26_dai = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@AIC26_NUM_REGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register DAI: %d\0A\00", align 1
@AIC26_REG_RESET = common dso_local global i32 0, align 4
@AIC26_REG_POWER_CTRL = common dso_local global i32 0, align 4
@AIC26_REG_AUDIO_CTRL3 = common dso_local global i32 0, align 4
@dev_attr_keyclick = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"error creating sysfs files\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SPI device initialized\0A\00", align 1
@aic26_soc_codec_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @aic26_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.aic26*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(%struct.TYPE_14__* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.aic26* @kzalloc(i32 104, i32 %11)
  store %struct.aic26* %12, %struct.aic26** %4, align 8
  %13 = load %struct.aic26*, %struct.aic26** %4, align 8
  %14 = icmp ne %struct.aic26* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %137

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.aic26*, %struct.aic26** %4, align 8
  %21 = getelementptr inbounds %struct.aic26, %struct.aic26* %20, i32 0, i32 3
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load %struct.aic26*, %struct.aic26** %4, align 8
  %25 = call i32 @dev_set_drvdata(%struct.TYPE_14__* %23, %struct.aic26* %24)
  %26 = load %struct.aic26*, %struct.aic26** %4, align 8
  %27 = load %struct.aic26*, %struct.aic26** %4, align 8
  %28 = getelementptr inbounds %struct.aic26, %struct.aic26* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 11
  store %struct.aic26* %26, %struct.aic26** %29, align 8
  %30 = load %struct.aic26*, %struct.aic26** %4, align 8
  %31 = getelementptr inbounds %struct.aic26, %struct.aic26* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.aic26*, %struct.aic26** %4, align 8
  %35 = getelementptr inbounds %struct.aic26, %struct.aic26* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 10
  store i32 %33, i32* %36, align 8
  %37 = load %struct.aic26*, %struct.aic26** %4, align 8
  %38 = getelementptr inbounds %struct.aic26, %struct.aic26* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 9
  store %struct.TYPE_13__* @aic26_dai, %struct.TYPE_13__** %39, align 8
  %40 = load %struct.aic26*, %struct.aic26** %4, align 8
  %41 = getelementptr inbounds %struct.aic26, %struct.aic26* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load %struct.aic26*, %struct.aic26** %4, align 8
  %44 = getelementptr inbounds %struct.aic26, %struct.aic26* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  store i32 (%struct.TYPE_15__*, i32)* @aic26_reg_read, i32 (%struct.TYPE_15__*, i32)** %45, align 8
  %46 = load %struct.aic26*, %struct.aic26** %4, align 8
  %47 = getelementptr inbounds %struct.aic26, %struct.aic26* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 8
  store i32 (%struct.TYPE_15__*, i32, i32)* @aic26_reg_write, i32 (%struct.TYPE_15__*, i32, i32)** %48, align 8
  %49 = load %struct.aic26*, %struct.aic26** %4, align 8
  %50 = getelementptr inbounds %struct.aic26, %struct.aic26* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.aic26*, %struct.aic26** %4, align 8
  %52 = getelementptr inbounds %struct.aic26, %struct.aic26* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.aic26*, %struct.aic26** %4, align 8
  %56 = getelementptr inbounds %struct.aic26, %struct.aic26* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 6
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.aic26*, %struct.aic26** %4, align 8
  %60 = getelementptr inbounds %struct.aic26, %struct.aic26* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load i32, i32* @AIC26_NUM_REGS, align 4
  %64 = load %struct.aic26*, %struct.aic26** %4, align 8
  %65 = getelementptr inbounds %struct.aic26, %struct.aic26* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load %struct.aic26*, %struct.aic26** %4, align 8
  %68 = getelementptr inbounds %struct.aic26, %struct.aic26* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.aic26*, %struct.aic26** %4, align 8
  %71 = getelementptr inbounds %struct.aic26, %struct.aic26* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aic26_dai, i32 0, i32 0), align 8
  %75 = call i32 @snd_soc_register_dai(%struct.TYPE_13__* @aic26_dai)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %18
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @dev_err(%struct.TYPE_14__* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.aic26*, %struct.aic26** %4, align 8
  %84 = call i32 @kfree(%struct.aic26* %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %137

86:                                               ; preds = %18
  %87 = load %struct.aic26*, %struct.aic26** %4, align 8
  %88 = getelementptr inbounds %struct.aic26, %struct.aic26* %87, i32 0, i32 1
  %89 = load i32, i32* @AIC26_REG_RESET, align 4
  %90 = call i32 @aic26_reg_write(%struct.TYPE_15__* %88, i32 %89, i32 47872)
  %91 = load %struct.aic26*, %struct.aic26** %4, align 8
  %92 = getelementptr inbounds %struct.aic26, %struct.aic26* %91, i32 0, i32 1
  %93 = load i32, i32* @AIC26_REG_POWER_CTRL, align 4
  %94 = call i32 @aic26_reg_write(%struct.TYPE_15__* %92, i32 %93, i32 0)
  %95 = load %struct.aic26*, %struct.aic26** %4, align 8
  %96 = getelementptr inbounds %struct.aic26, %struct.aic26* %95, i32 0, i32 1
  %97 = load i32, i32* @AIC26_REG_AUDIO_CTRL3, align 4
  %98 = call i32 @aic26_reg_read(%struct.TYPE_15__* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, -63489
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, 2048
  store i32 %102, i32* %7, align 4
  %103 = load %struct.aic26*, %struct.aic26** %4, align 8
  %104 = getelementptr inbounds %struct.aic26, %struct.aic26* %103, i32 0, i32 1
  %105 = load i32, i32* @AIC26_REG_AUDIO_CTRL3, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @aic26_reg_write(%struct.TYPE_15__* %104, i32 %105, i32 %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %120, %86
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.aic26*, %struct.aic26** %4, align 8
  %111 = getelementptr inbounds %struct.aic26, %struct.aic26* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ARRAY_SIZE(i32 %112)
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.aic26*, %struct.aic26** %4, align 8
  %117 = getelementptr inbounds %struct.aic26, %struct.aic26* %116, i32 0, i32 1
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @aic26_reg_read(%struct.TYPE_15__* %117, i32 %118)
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %108

123:                                              ; preds = %108
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 0
  %126 = call i32 @device_create_file(%struct.TYPE_14__* %125, i32* @dev_attr_keyclick)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 0
  %132 = call i32 @dev_info(%struct.TYPE_14__* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %123
  %134 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %135 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %134, i32 0, i32 0
  %136 = call i32 @dev_dbg(%struct.TYPE_14__* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %78, %15
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.aic26* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_14__*, %struct.aic26*) #1

declare dso_local i32 @aic26_reg_read(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @aic26_reg_write(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.aic26*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @device_create_file(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
