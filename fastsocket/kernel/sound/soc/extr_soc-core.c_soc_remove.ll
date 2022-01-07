; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.snd_soc_codec_device*, %struct.snd_soc_card* }
%struct.snd_soc_codec_device = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.snd_soc_card = type { i32, i32 (%struct.platform_device.1*)*, %struct.TYPE_2__*, i32, i32, %struct.snd_soc_platform* }
%struct.platform_device.1 = type opaque
%struct.TYPE_2__ = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 (%struct.platform_device.2*, %struct.snd_soc_dai*)* }
%struct.platform_device.2 = type opaque
%struct.snd_soc_platform = type { i32 (%struct.platform_device.3*)* }
%struct.platform_device.3 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_device*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_platform*, align 8
  %8 = alloca %struct.snd_soc_codec_device*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.snd_soc_device* %11, %struct.snd_soc_device** %5, align 8
  %12 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %13, align 8
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %6, align 8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 5
  %17 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %16, align 8
  store %struct.snd_soc_platform* %17, %struct.snd_soc_platform** %7, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_codec_device*, %struct.snd_soc_codec_device** %19, align 8
  store %struct.snd_soc_codec_device* %20, %struct.snd_soc_codec_device** %8, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 3
  %29 = call i32 @run_delayed_work(i32* %28)
  %30 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %30, i32 0, i32 0
  %32 = load i32 (%struct.platform_device.3*)*, i32 (%struct.platform_device.3*)** %31, align 8
  %33 = icmp ne i32 (%struct.platform_device.3*)* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %35, i32 0, i32 0
  %37 = load i32 (%struct.platform_device.3*)*, i32 (%struct.platform_device.3*)** %36, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = bitcast %struct.platform_device* %38 to %struct.platform_device.3*
  %40 = call i32 %37(%struct.platform_device.3* %39)
  br label %41

41:                                               ; preds = %34, %26
  %42 = load %struct.snd_soc_codec_device*, %struct.snd_soc_codec_device** %8, align 8
  %43 = getelementptr inbounds %struct.snd_soc_codec_device, %struct.snd_soc_codec_device* %42, i32 0, i32 0
  %44 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %43, align 8
  %45 = icmp ne i32 (%struct.platform_device.0*)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.snd_soc_codec_device*, %struct.snd_soc_codec_device** %8, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec_device, %struct.snd_soc_codec_device* %47, i32 0, i32 0
  %49 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %48, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = bitcast %struct.platform_device* %50 to %struct.platform_device.0*
  %52 = call i32 %49(%struct.platform_device.0* %51)
  br label %53

53:                                               ; preds = %46, %41
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %57 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %67, align 8
  store %struct.snd_soc_dai* %68, %struct.snd_soc_dai** %9, align 8
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load i32 (%struct.platform_device.2*, %struct.snd_soc_dai*)*, i32 (%struct.platform_device.2*, %struct.snd_soc_dai*)** %70, align 8
  %72 = icmp ne i32 (%struct.platform_device.2*, %struct.snd_soc_dai*)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %60
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 0
  %76 = load i32 (%struct.platform_device.2*, %struct.snd_soc_dai*)*, i32 (%struct.platform_device.2*, %struct.snd_soc_dai*)** %75, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = bitcast %struct.platform_device* %77 to %struct.platform_device.2*
  %79 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %80 = call i32 %76(%struct.platform_device.2* %78, %struct.snd_soc_dai* %79)
  br label %81

81:                                               ; preds = %73, %60
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %87 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %86, i32 0, i32 1
  %88 = load i32 (%struct.platform_device.1*)*, i32 (%struct.platform_device.1*)** %87, align 8
  %89 = icmp ne i32 (%struct.platform_device.1*)* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %92 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %91, i32 0, i32 1
  %93 = load i32 (%struct.platform_device.1*)*, i32 (%struct.platform_device.1*)** %92, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = bitcast %struct.platform_device* %94 to %struct.platform_device.1*
  %96 = call i32 %93(%struct.platform_device.1* %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %99 = call i32 @snd_soc_unregister_card(%struct.snd_soc_card* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %97, %25
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @run_delayed_work(i32*) #1

declare dso_local i32 @snd_soc_unregister_card(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
