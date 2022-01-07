; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_device = type { %struct.TYPE_2__*, %struct.ssm2602_setup_data* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i64, i32, i32, i32, %struct.ssm2602_priv* }
%struct.ssm2602_priv = type { i32 }
%struct.ssm2602_setup_data = type { i64 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ssm2602 Audio Codec %s\00", align 1
@SSM2602_VERSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ssm2602_socdev = common dso_local global %struct.snd_soc_device* null, align 8
@i2c_master_send = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssm2602_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.ssm2602_setup_data*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.ssm2602_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.snd_soc_device* %10, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @SSM2602_VERSION, align 4
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %13, i32 0, i32 1
  %15 = load %struct.ssm2602_setup_data*, %struct.ssm2602_setup_data** %14, align 8
  store %struct.ssm2602_setup_data* %15, %struct.ssm2602_setup_data** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 32, i32 %16)
  %18 = bitcast i8* %17 to %struct.snd_soc_codec*
  store %struct.snd_soc_codec* %18, %struct.snd_soc_codec** %6, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %20 = icmp eq %struct.snd_soc_codec* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.ssm2602_priv*
  store %struct.ssm2602_priv* %27, %struct.ssm2602_priv** %7, align 8
  %28 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %7, align 8
  %29 = icmp eq %struct.ssm2602_priv* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %32 = call i32 @kfree(%struct.snd_soc_codec* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %24
  %36 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %7, align 8
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %37, i32 0, i32 4
  store %struct.ssm2602_priv* %36, %struct.ssm2602_priv** %38, align 8
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %40 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.snd_soc_codec* %39, %struct.snd_soc_codec** %43, align 8
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %44, i32 0, i32 3
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 1
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  store %struct.snd_soc_device* %53, %struct.snd_soc_device** @ssm2602_socdev, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %35, %30, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_soc_codec*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
