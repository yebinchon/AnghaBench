; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8900_REG_GPIO = common dso_local global i32 0, align 4
@WM8900_REG_GPIO_TEMP_ENA = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL_TEMP_SD = common dso_local global i32 0, align 4
@WM8900_REG_POWER1 = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL_BIAS_SRC = common dso_local global i32 0, align 4
@WM8900_REG_ADDCTL_VMID_SOFTST = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_BIAS_ENA = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_FLL_ENA = common dso_local global i32 0, align 4
@WM8900_REG_POWER2 = common dso_local global i32 0, align 4
@WM8900_REG_POWER2_SYSCLK_ENA = common dso_local global i32 0, align 4
@WM8900_REG_POWER3 = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8900_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %128 [
    i32 130, label %7
    i32 129, label %26
    i32 128, label %27
    i32 131, label %85
  ]

7:                                                ; preds = %2
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %9 = load i32, i32* @WM8900_REG_GPIO, align 4
  %10 = call i32 @snd_soc_read(%struct.snd_soc_codec* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = load i32, i32* @WM8900_REG_GPIO, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WM8900_REG_GPIO_TEMP_ENA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @snd_soc_write(%struct.snd_soc_codec* %11, i32 %12, i32 %15)
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %19 = call i32 @snd_soc_read(%struct.snd_soc_codec* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %21 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @WM8900_REG_ADDCTL_TEMP_SD, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @snd_soc_write(%struct.snd_soc_codec* %20, i32 %21, i32 %24)
  br label %128

26:                                               ; preds = %2
  br label %128

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %34 = load i32, i32* @WM8900_REG_POWER1, align 4
  %35 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %36 = call i32 @snd_soc_write(%struct.snd_soc_codec* %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %38 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %39 = load i32, i32* @WM8900_REG_ADDCTL_BIAS_SRC, align 4
  %40 = load i32, i32* @WM8900_REG_ADDCTL_VMID_SOFTST, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @snd_soc_write(%struct.snd_soc_codec* %37, i32 %38, i32 %41)
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %44 = load i32, i32* @WM8900_REG_POWER1, align 4
  %45 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %46 = or i32 %45, 1
  %47 = call i32 @snd_soc_write(%struct.snd_soc_codec* %43, i32 %44, i32 %46)
  %48 = call i32 @msecs_to_jiffies(i32 400)
  %49 = call i32 @schedule_timeout_interruptible(i32 %48)
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %51 = load i32, i32* @WM8900_REG_POWER1, align 4
  %52 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %53 = load i32, i32* @WM8900_REG_POWER1_BIAS_ENA, align 4
  %54 = or i32 %52, %53
  %55 = or i32 %54, 1
  %56 = call i32 @snd_soc_write(%struct.snd_soc_codec* %50, i32 %51, i32 %55)
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %58 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %59 = call i32 @snd_soc_write(%struct.snd_soc_codec* %57, i32 %58, i32 0)
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %61 = load i32, i32* @WM8900_REG_POWER1, align 4
  %62 = load i32, i32* @WM8900_REG_POWER1_BIAS_ENA, align 4
  %63 = or i32 %62, 1
  %64 = call i32 @snd_soc_write(%struct.snd_soc_codec* %60, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %32, %27
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %67 = load i32, i32* @WM8900_REG_POWER1, align 4
  %68 = call i32 @snd_soc_read(%struct.snd_soc_codec* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %70 = load i32, i32* @WM8900_REG_POWER1, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @WM8900_REG_POWER1_BIAS_ENA, align 4
  %75 = or i32 %73, %74
  %76 = or i32 %75, 1
  %77 = call i32 @snd_soc_write(%struct.snd_soc_codec* %69, i32 %70, i32 %76)
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %79 = load i32, i32* @WM8900_REG_POWER2, align 4
  %80 = load i32, i32* @WM8900_REG_POWER2_SYSCLK_ENA, align 4
  %81 = call i32 @snd_soc_write(%struct.snd_soc_codec* %78, i32 %79, i32 %80)
  %82 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %83 = load i32, i32* @WM8900_REG_POWER3, align 4
  %84 = call i32 @snd_soc_write(%struct.snd_soc_codec* %82, i32 %83, i32 0)
  br label %128

85:                                               ; preds = %2
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %87 = load i32, i32* @WM8900_REG_POWER1, align 4
  %88 = call i32 @snd_soc_read(%struct.snd_soc_codec* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %90 = load i32, i32* @WM8900_REG_POWER1, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @snd_soc_write(%struct.snd_soc_codec* %89, i32 %90, i32 %93)
  %95 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %96 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %97 = load i32, i32* @WM8900_REG_ADDCTL_BIAS_SRC, align 4
  %98 = load i32, i32* @WM8900_REG_ADDCTL_VMID_SOFTST, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @snd_soc_write(%struct.snd_soc_codec* %95, i32 %96, i32 %99)
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %102 = load i32, i32* @WM8900_REG_POWER1, align 4
  %103 = load i32, i32* @WM8900_REG_POWER1_STARTUP_BIAS_ENA, align 4
  %104 = call i32 @snd_soc_write(%struct.snd_soc_codec* %101, i32 %102, i32 %103)
  %105 = call i32 @msecs_to_jiffies(i32 500)
  %106 = call i32 @schedule_timeout_interruptible(i32 %105)
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %108 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %109 = call i32 @snd_soc_write(%struct.snd_soc_codec* %107, i32 %108, i32 0)
  %110 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %111 = load i32, i32* @WM8900_REG_ADDCTL, align 4
  %112 = call i32 @snd_soc_write(%struct.snd_soc_codec* %110, i32 %111, i32 0)
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %114 = load i32, i32* @WM8900_REG_POWER1, align 4
  %115 = call i32 @snd_soc_write(%struct.snd_soc_codec* %113, i32 %114, i32 0)
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %117 = load i32, i32* @WM8900_REG_POWER2, align 4
  %118 = call i32 @snd_soc_write(%struct.snd_soc_codec* %116, i32 %117, i32 0)
  %119 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %120 = load i32, i32* @WM8900_REG_POWER3, align 4
  %121 = call i32 @snd_soc_write(%struct.snd_soc_codec* %119, i32 %120, i32 0)
  %122 = call i32 @msecs_to_jiffies(i32 1)
  %123 = call i32 @schedule_timeout_interruptible(i32 %122)
  %124 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %125 = load i32, i32* @WM8900_REG_POWER2, align 4
  %126 = load i32, i32* @WM8900_REG_POWER2_SYSCLK_ENA, align 4
  %127 = call i32 @snd_soc_write(%struct.snd_soc_codec* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %2, %85, %65, %26, %7
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %131 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
