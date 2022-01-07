; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i32, i32, i32 (i32, i32*, i32)* }

@ssm2602_reg = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssm2602_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %3, align 8
  %10 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %4, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ssm2602_reg, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 1
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 1
  %33 = or i32 %25, %32
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %42, i32 0, i32 3
  %44 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %43, align 8
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %49 = call i32 %44(i32 %47, i32* %48, i32 2)
  br label %50

50:                                               ; preds = %23
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %55 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %56 = call i32 @ssm2602_set_bias_level(%struct.snd_soc_codec* %54, i32 %55)
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %59 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ssm2602_set_bias_level(%struct.snd_soc_codec* %57, i32 %60)
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ssm2602_set_bias_level(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
