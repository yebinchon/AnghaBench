; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4104.c_ak4104_spi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4104.c_ak4104_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { i32, i32, i32, %struct.spi_device*, %struct.ak4104_private*, %struct.TYPE_3__*, i32, i32, i32*, i32, i32, i32 }
%struct.spi_device = type { i32, i32, i32 }
%struct.ak4104_private = type { i32, %struct.snd_soc_codec }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not allocate codec\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ak4104_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@AK4104_NUM_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to fill register cache\0A\00", align 1
@AK4104_REG_RESERVED = common dso_local global i32 0, align 4
@AK4104_RESERVED_VAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AK4104_REG_CONTROL1 = common dso_local global i32 0, align 4
@AK4104_CONTROL1_PW = common dso_local global i32 0, align 4
@AK4104_CONTROL1_RSTN = common dso_local global i32 0, align 4
@AK4104_REG_TX = common dso_local global i32 0, align 4
@AK4104_TX_TXE = common dso_local global i32 0, align 4
@ak4104_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to register DAI\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SPI device initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ak4104_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4104_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca %struct.ak4104_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  store i32 8, i32* %9, align 4
  %10 = load i32, i32* @SPI_MODE_0, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call i32 @spi_setup(%struct.spi_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %138

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ak4104_private* @kzalloc(i32 80, i32 %20)
  store %struct.ak4104_private* %21, %struct.ak4104_private** %5, align 8
  %22 = load %struct.ak4104_private*, %struct.ak4104_private** %5, align 8
  %23 = icmp ne %struct.ak4104_private* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 1
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %138

30:                                               ; preds = %19
  %31 = load %struct.ak4104_private*, %struct.ak4104_private** %5, align 8
  %32 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %31, i32 0, i32 1
  store %struct.snd_soc_codec* %32, %struct.snd_soc_codec** %4, align 8
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %33, i32 0, i32 11
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 10
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 9
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %44, i32 0, i32 8
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @DRV_NAME, align 4
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 5
  store %struct.TYPE_3__* @ak4104_dai, %struct.TYPE_3__** %53, align 8
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.ak4104_private*, %struct.ak4104_private** %5, align 8
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 4
  store %struct.ak4104_private* %56, %struct.ak4104_private** %58, align 8
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %61 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %60, i32 0, i32 3
  store %struct.spi_device* %59, %struct.spi_device** %61, align 8
  %62 = load %struct.ak4104_private*, %struct.ak4104_private** %5, align 8
  %63 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @AK4104_NUM_REGS, align 4
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %69 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %71 = call i32 @ak4104_fill_cache(%struct.snd_soc_codec* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %30
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 1
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %138

79:                                               ; preds = %30
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %81 = load i32, i32* @AK4104_REG_RESERVED, align 4
  %82 = call i32 @ak4104_read_reg_cache(%struct.snd_soc_codec* %80, i32 %81)
  %83 = load i32, i32* @AK4104_RESERVED_VAL, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %134

88:                                               ; preds = %79
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %90 = load i32, i32* @AK4104_REG_CONTROL1, align 4
  %91 = call i32 @ak4104_read_reg_cache(%struct.snd_soc_codec* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @AK4104_CONTROL1_PW, align 4
  %93 = load i32, i32* @AK4104_CONTROL1_RSTN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %98 = load i32, i32* @AK4104_REG_CONTROL1, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @ak4104_spi_write(%struct.snd_soc_codec* %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %134

104:                                              ; preds = %88
  %105 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %106 = load i32, i32* @AK4104_REG_TX, align 4
  %107 = call i32 @ak4104_read_reg_cache(%struct.snd_soc_codec* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @AK4104_TX_TXE, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %112 = load i32, i32* @AK4104_REG_TX, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ak4104_spi_write(%struct.snd_soc_codec* %111, i32 %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %134

118:                                              ; preds = %104
  %119 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  store %struct.snd_soc_codec* %119, %struct.snd_soc_codec** @ak4104_codec, align 8
  %120 = call i32 @snd_soc_register_dai(%struct.TYPE_3__* @ak4104_dai)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 1
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %134

127:                                              ; preds = %118
  %128 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %129 = load %struct.ak4104_private*, %struct.ak4104_private** %5, align 8
  %130 = call i32 @spi_set_drvdata(%struct.spi_device* %128, %struct.ak4104_private* %129)
  %131 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %132 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %131, i32 0, i32 1
  %133 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %123, %117, %103, %85
  %135 = load %struct.ak4104_private*, %struct.ak4104_private** %5, align 8
  %136 = call i32 @kfree(%struct.ak4104_private* %135)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ak4104_dai, i32 0, i32 0), align 8
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %127, %74, %24, %17
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.ak4104_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ak4104_fill_cache(%struct.snd_soc_codec*) #1

declare dso_local i32 @ak4104_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ak4104_spi_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ak4104_private*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.ak4104_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
