; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wm8960_data* }
%struct.wm8960_data = type { i32 }

@WM8960_POWER1 = common dso_local global i32 0, align 4
@WM8960_APOP1 = common dso_local global i32 0, align 4
@WM8960_POBCTRL = common dso_local global i32 0, align 4
@WM8960_SOFT_ST = common dso_local global i32 0, align 4
@WM8960_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8960_BUFIOEN = common dso_local global i32 0, align 4
@WM8960_DISOP = common dso_local global i32 0, align 4
@WM8960_APOP2 = common dso_local global i32 0, align 4
@WM8960_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8960_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8960_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.wm8960_data*, %struct.wm8960_data** %10, align 8
  store %struct.wm8960_data* %11, %struct.wm8960_data** %5, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %111 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %26
    i32 131, label %93
  ]

13:                                               ; preds = %2
  br label %111

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = load i32, i32* @WM8960_POWER1, align 4
  %17 = call i32 @snd_soc_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -385
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 128
  store i32 %21, i32* %6, align 4
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %23 = load i32, i32* @WM8960_POWER1, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snd_soc_write(%struct.snd_soc_codec* %22, i32 %23, i32 %24)
  br label %111

26:                                               ; preds = %2
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %81

31:                                               ; preds = %26
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %33 = load i32, i32* @WM8960_APOP1, align 4
  %34 = load i32, i32* @WM8960_POBCTRL, align 4
  %35 = load i32, i32* @WM8960_SOFT_ST, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WM8960_BUFIOEN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_soc_write(%struct.snd_soc_codec* %32, i32 %33, i32 %40)
  %42 = load i32, i32* @WM8960_DISOP, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.wm8960_data*, %struct.wm8960_data** %5, align 8
  %44 = icmp ne %struct.wm8960_data* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load %struct.wm8960_data*, %struct.wm8960_data** %5, align 8
  %47 = getelementptr inbounds %struct.wm8960_data, %struct.wm8960_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %45, %31
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %54 = load i32, i32* @WM8960_APOP2, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @snd_soc_write(%struct.snd_soc_codec* %53, i32 %54, i32 %55)
  %57 = call i32 @msleep(i32 400)
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %59 = load i32, i32* @WM8960_APOP2, align 4
  %60 = call i32 @snd_soc_write(%struct.snd_soc_codec* %58, i32 %59, i32 0)
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %62 = load i32, i32* @WM8960_POWER1, align 4
  %63 = call i32 @snd_soc_read(%struct.snd_soc_codec* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, 128
  store i32 %65, i32* %6, align 4
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %67 = load i32, i32* @WM8960_POWER1, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @snd_soc_write(%struct.snd_soc_codec* %66, i32 %67, i32 %68)
  %70 = call i32 @msleep(i32 100)
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %72 = load i32, i32* @WM8960_POWER1, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @WM8960_VREF, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @snd_soc_write(%struct.snd_soc_codec* %71, i32 %72, i32 %75)
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %78 = load i32, i32* @WM8960_APOP1, align 4
  %79 = load i32, i32* @WM8960_BUFIOEN, align 4
  %80 = call i32 @snd_soc_write(%struct.snd_soc_codec* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %52, %26
  %82 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %83 = load i32, i32* @WM8960_POWER1, align 4
  %84 = call i32 @snd_soc_read(%struct.snd_soc_codec* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, -385
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, 256
  store i32 %88, i32* %6, align 4
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %90 = load i32, i32* @WM8960_POWER1, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @snd_soc_write(%struct.snd_soc_codec* %89, i32 %90, i32 %91)
  br label %111

93:                                               ; preds = %2
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %95 = load i32, i32* @WM8960_APOP1, align 4
  %96 = load i32, i32* @WM8960_POBCTRL, align 4
  %97 = load i32, i32* @WM8960_SOFT_ST, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @WM8960_BUFIOEN, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @snd_soc_write(%struct.snd_soc_codec* %94, i32 %95, i32 %102)
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %105 = load i32, i32* @WM8960_POWER1, align 4
  %106 = call i32 @snd_soc_write(%struct.snd_soc_codec* %104, i32 %105, i32 0)
  %107 = call i32 @msleep(i32 600)
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %109 = load i32, i32* @WM8960_APOP1, align 4
  %110 = call i32 @snd_soc_write(%struct.snd_soc_codec* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %2, %93, %81, %14, %13
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %114 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
