; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8940_priv = type { %struct.snd_soc_codec }
%struct.snd_soc_codec = type { i32*, %struct.i2c_client*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2c_master_send = common dso_local global i64 0, align 8
@SND_SOC_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8940_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8940_priv*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wm8940_priv* @kzalloc(i32 24, i32 %8)
  store %struct.wm8940_priv* %9, %struct.wm8940_priv** %6, align 8
  %10 = load %struct.wm8940_priv*, %struct.wm8940_priv** %6, align 8
  %11 = icmp eq %struct.wm8940_priv* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.wm8940_priv*, %struct.wm8940_priv** %6, align 8
  %17 = getelementptr inbounds %struct.wm8940_priv, %struct.wm8940_priv* %16, i32 0, i32 0
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %7, align 8
  %18 = load i64, i64* @i2c_master_send, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.wm8940_priv*, %struct.wm8940_priv** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.wm8940_priv* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 1
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.wm8940_priv*, %struct.wm8940_priv** %6, align 8
  %32 = load i32, i32* @SND_SOC_I2C, align 4
  %33 = call i32 @wm8940_register(%struct.wm8940_priv* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.wm8940_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8940_priv*) #1

declare dso_local i32 @wm8940_register(%struct.wm8940_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
