; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1836.c_ad1836_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1836.c_ad1836_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i8*, i32, i32, i32 (%struct.snd_soc_codec*, i32, i32)*, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, %struct.ad1836_priv*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ad1836_priv = type { i32, %struct.snd_soc_codec }

@ad1836_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Another ad1836 is registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AD1836_NUM_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"AD1836\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ad1836_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ad1836_read_reg_cache = common dso_local global i32 0, align 4
@AD1836_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD1836_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL1 = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL3 = common dso_local global i32 0, align 4
@AD1836_DAC_L1_VOL = common dso_local global i32 0, align 4
@AD1836_DAC_R1_VOL = common dso_local global i32 0, align 4
@AD1836_DAC_L2_VOL = common dso_local global i32 0, align 4
@AD1836_DAC_R2_VOL = common dso_local global i32 0, align 4
@AD1836_DAC_L3_VOL = common dso_local global i32 0, align 4
@AD1836_DAC_R3_VOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register codec: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to register DAI: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad1836_priv*)* @ad1836_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1836_register(%struct.ad1836_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad1836_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  store %struct.ad1836_priv* %0, %struct.ad1836_priv** %3, align 8
  %6 = load %struct.ad1836_priv*, %struct.ad1836_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %6, i32 0, i32 1
  store %struct.snd_soc_codec* %7, %struct.snd_soc_codec** %5, align 8
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @ad1836_codec, align 8
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
  br label %157

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 12
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.ad1836_priv*, %struct.ad1836_priv** %3, align 8
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 11
  store %struct.ad1836_priv* %27, %struct.ad1836_priv** %29, align 8
  %30 = load %struct.ad1836_priv*, %struct.ad1836_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @AD1836_NUM_REGS, align 4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @THIS_MODULE, align 4
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %43, i32 0, i32 7
  store %struct.TYPE_3__* @ad1836_dai, %struct.TYPE_3__** %44, align 8
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 3
  store i32 (%struct.snd_soc_codec*, i32, i32)* @ad1836_write_reg, i32 (%struct.snd_soc_codec*, i32, i32)** %48, align 8
  %49 = load i32, i32* @ad1836_read_reg_cache, align 4
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 5
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %56 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %55, i32 0, i32 4
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %59 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ad1836_dai, i32 0, i32 0), align 4
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  store %struct.snd_soc_codec* %61, %struct.snd_soc_codec** @ad1836_codec, align 8
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %62, i32 0, i32 3
  %64 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %63, align 8
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %66 = load i32, i32* @AD1836_DAC_CTRL1, align 4
  %67 = call i32 %64(%struct.snd_soc_codec* %65, i32 %66, i32 768)
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %69 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %68, i32 0, i32 3
  %70 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %69, align 8
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %72 = load i32, i32* @AD1836_DAC_CTRL2, align 4
  %73 = call i32 %70(%struct.snd_soc_codec* %71, i32 %72, i32 0)
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %75 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %74, i32 0, i32 3
  %76 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %75, align 8
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %78 = load i32, i32* @AD1836_ADC_CTRL1, align 4
  %79 = call i32 %76(%struct.snd_soc_codec* %77, i32 %78, i32 256)
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %81 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %80, i32 0, i32 3
  %82 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %81, align 8
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %84 = load i32, i32* @AD1836_ADC_CTRL2, align 4
  %85 = call i32 %82(%struct.snd_soc_codec* %83, i32 %84, i32 384)
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %87 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %86, i32 0, i32 3
  %88 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %87, align 8
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %90 = load i32, i32* @AD1836_ADC_CTRL3, align 4
  %91 = call i32 %88(%struct.snd_soc_codec* %89, i32 %90, i32 58)
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %93 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %92, i32 0, i32 3
  %94 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %93, align 8
  %95 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %96 = load i32, i32* @AD1836_DAC_L1_VOL, align 4
  %97 = call i32 %94(%struct.snd_soc_codec* %95, i32 %96, i32 1023)
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %99 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %98, i32 0, i32 3
  %100 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %99, align 8
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %102 = load i32, i32* @AD1836_DAC_R1_VOL, align 4
  %103 = call i32 %100(%struct.snd_soc_codec* %101, i32 %102, i32 1023)
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %105 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %104, i32 0, i32 3
  %106 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %105, align 8
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %108 = load i32, i32* @AD1836_DAC_L2_VOL, align 4
  %109 = call i32 %106(%struct.snd_soc_codec* %107, i32 %108, i32 1023)
  %110 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %111 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %110, i32 0, i32 3
  %112 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %111, align 8
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %114 = load i32, i32* @AD1836_DAC_R2_VOL, align 4
  %115 = call i32 %112(%struct.snd_soc_codec* %113, i32 %114, i32 1023)
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %117 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %116, i32 0, i32 3
  %118 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %117, align 8
  %119 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %120 = load i32, i32* @AD1836_DAC_L3_VOL, align 4
  %121 = call i32 %118(%struct.snd_soc_codec* %119, i32 %120, i32 1023)
  %122 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %123 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %122, i32 0, i32 3
  %124 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %123, align 8
  %125 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %126 = load i32, i32* @AD1836_DAC_R3_VOL, align 4
  %127 = call i32 %124(%struct.snd_soc_codec* %125, i32 %126, i32 1023)
  %128 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %129 = call i32 @snd_soc_register_codec(%struct.snd_soc_codec* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %17
  %133 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %134 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load %struct.ad1836_priv*, %struct.ad1836_priv** %3, align 8
  %139 = call i32 @kfree(%struct.ad1836_priv* %138)
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %157

141:                                              ; preds = %17
  %142 = call i32 @snd_soc_register_dai(%struct.TYPE_3__* @ad1836_dai)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %147 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 (i32, i8*, ...) @dev_err(i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %152 = call i32 @snd_soc_unregister_codec(%struct.snd_soc_codec* %151)
  %153 = load %struct.ad1836_priv*, %struct.ad1836_priv** %3, align 8
  %154 = call i32 @kfree(%struct.ad1836_priv* %153)
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %157

156:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %145, %132, %10
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ad1836_write_reg(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_register_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @kfree(%struct.ad1836_priv*) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
