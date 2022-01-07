; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_12__ }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Not enough FSI platform resources.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@master = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not allocate master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to ioremap FSI registers.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot get dma api\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"spu%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot get %s mstp\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@fsi_soc_dai = common dso_local global %struct.TYPE_15__* null, align 8
@fsi_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"fsi\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"irq request err\0A\00", align 1
@fsi_soc_platform = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"cannot snd soc register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %161

24:                                               ; preds = %15
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_16__* @kzalloc(i32 64, i32 %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** @master, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %161

35:                                               ; preds = %24
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i64 @ioremap_nocache(i32 %38, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %158

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 64
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = call i32 (...) @fsi_get_dma_chan()
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %54
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 1
  %89 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %153

90:                                               ; preds = %54
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @snprintf(i8* %91, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %97 = call i32 @clk_get(i32* null, i8* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %90
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %109 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %151

112:                                              ; preds = %90
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fsi_soc_dai, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %117, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 1
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fsi_soc_dai, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %122, align 8
  %123 = call i32 (...) @fsi_soft_all_reset()
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @IRQF_DISABLED, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %127 = call i32 @request_irq(i32 %124, i32* @fsi_interrupt, i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_16__* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %112
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 1
  %133 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %151

134:                                              ; preds = %112
  %135 = call i32 @snd_soc_register_platform(i32* @fsi_soc_platform)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 1
  %141 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %147

142:                                              ; preds = %134
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fsi_soc_dai, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fsi_soc_dai, align 8
  %145 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %144)
  %146 = call i32 @snd_soc_register_dais(%struct.TYPE_15__* %143, i32 %145)
  store i32 %146, i32* %2, align 4
  br label %163

147:                                              ; preds = %138
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %150 = call i32 @free_irq(i32 %148, %struct.TYPE_16__* %149)
  br label %151

151:                                              ; preds = %147, %130, %105
  %152 = call i32 (...) @fsi_free_dma_chan()
  br label %153

153:                                              ; preds = %151, %86
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @iounmap(i64 %156)
  br label %158

158:                                              ; preds = %153, %48
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** @master, align 8
  %160 = call i32 @kfree(%struct.TYPE_16__* %159)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** @master, align 8
  br label %161

161:                                              ; preds = %158, %29, %18
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %142
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @kzalloc(i32, i32) #1

declare dso_local i64 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @fsi_get_dma_chan(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @fsi_soft_all_reset(...) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @snd_soc_register_platform(i32*) #1

declare dso_local i32 @snd_soc_register_dais(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @fsi_free_dma_chan(...) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
