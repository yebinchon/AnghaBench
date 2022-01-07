; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4535.c_ak4535_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4535.c_ak4535_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, i32 }

@AK4535_PM1 = common dso_local global i32 0, align 4
@AK4535_PM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @ak4535_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4535_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %43 [
    i32 130, label %7
    i32 129, label %12
    i32 128, label %17
    i32 131, label %34
  ]

7:                                                ; preds = %2
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ak4535_mute(i32 %10, i32 0)
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ak4535_mute(i32 %15, i32 1)
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %19 = load i32, i32* @AK4535_PM1, align 4
  %20 = call i32 @ak4535_read_reg_cache(%struct.snd_soc_codec* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = load i32, i32* @AK4535_PM1, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, 128
  %25 = call i32 @ak4535_write(%struct.snd_soc_codec* %21, i32 %22, i32 %24)
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %27 = load i32, i32* @AK4535_PM2, align 4
  %28 = call i32 @ak4535_read_reg_cache(%struct.snd_soc_codec* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %30 = load i32, i32* @AK4535_PM2, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -129
  %33 = call i32 @ak4535_write(%struct.snd_soc_codec* %29, i32 %30, i32 %32)
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %36 = load i32, i32* @AK4535_PM1, align 4
  %37 = call i32 @ak4535_read_reg_cache(%struct.snd_soc_codec* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %39 = load i32, i32* @AK4535_PM1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, -129
  %42 = call i32 @ak4535_write(%struct.snd_soc_codec* %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %2, %34, %17, %12, %7
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret i32 0
}

declare dso_local i32 @ak4535_mute(i32, i32) #1

declare dso_local i32 @ak4535_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ak4535_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
