; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_bf5xx_ac97_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_bf5xx_ac97_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { i32 }

@cmd_count = common dso_local global i32* null, align 8
@sport_req = common dso_local global i32* null, align 8
@sport_num = common dso_local global i64 0, align 8
@CONFIG_SND_BF5XX_RESET_GPIO_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.snd_soc_dai*)* @bf5xx_ac97_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bf5xx_ac97_remove(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %5 = load i32*, i32** @cmd_count, align 8
  %6 = ptrtoint i32* %5 to i64
  %7 = call i32 @free_page(i64 %6)
  store i32* null, i32** @cmd_count, align 8
  %8 = load i32*, i32** @sport_req, align 8
  %9 = load i64, i64* @sport_num, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @peripheral_free_list(i32 %11)
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @peripheral_free_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
