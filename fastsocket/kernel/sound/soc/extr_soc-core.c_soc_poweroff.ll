; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_poweroff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @soc_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_poweroff(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.snd_soc_device*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.platform_device* @to_platform_device(%struct.device* %7)
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.snd_soc_device* %10, %struct.snd_soc_device** %5, align 8
  %11 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %12, align 8
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %6, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 0
  %22 = call i32 @run_delayed_work(i32* %21)
  %23 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %24 = call i32 @snd_soc_dapm_shutdown(%struct.snd_soc_device* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @run_delayed_work(i32*) #1

declare dso_local i32 @snd_soc_dapm_shutdown(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
