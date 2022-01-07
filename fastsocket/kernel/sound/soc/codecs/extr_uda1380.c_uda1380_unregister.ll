; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uda1380_priv = type { %struct.snd_soc_codec }
%struct.snd_soc_codec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uda1380_platform_data* }
%struct.uda1380_platform_data = type { i32, i32 }

@uda1380_dai = common dso_local global i32 0, align 4
@uda1380_codec = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uda1380_priv*)* @uda1380_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda1380_unregister(%struct.uda1380_priv* %0) #0 {
  %2 = alloca %struct.uda1380_priv*, align 8
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca %struct.uda1380_platform_data*, align 8
  store %struct.uda1380_priv* %0, %struct.uda1380_priv** %2, align 8
  %5 = load %struct.uda1380_priv*, %struct.uda1380_priv** %2, align 8
  %6 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %5, i32 0, i32 0
  store %struct.snd_soc_codec* %6, %struct.snd_soc_codec** %3, align 8
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %10, align 8
  store %struct.uda1380_platform_data* %11, %struct.uda1380_platform_data** %4, align 8
  %12 = load i32, i32* @uda1380_dai, align 4
  %13 = load i32, i32* @uda1380_dai, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @snd_soc_unregister_dais(i32 %12, i32 %14)
  %16 = load %struct.uda1380_priv*, %struct.uda1380_priv** %2, align 8
  %17 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %16, i32 0, i32 0
  %18 = call i32 @snd_soc_unregister_codec(%struct.snd_soc_codec* %17)
  %19 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_set_value(i32 %21, i32 0)
  %23 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_free(i32 %25)
  %27 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_free(i32 %29)
  %31 = load %struct.uda1380_priv*, %struct.uda1380_priv** %2, align 8
  %32 = call i32 @kfree(%struct.uda1380_priv* %31)
  store i32* null, i32** @uda1380_codec, align 8
  ret void
}

declare dso_local i32 @snd_soc_unregister_dais(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.uda1380_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
