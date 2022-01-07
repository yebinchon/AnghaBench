; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_input_mux_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_input_mux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, i32, %struct.oxygen* }
%struct.oxygen = type { i32, i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32*, %struct.snd_kcontrol*, %struct.snd_kcontrol* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@WM8776_ADCMUX = common dso_local global i64 0, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_DS_INPUT_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8776_input_mux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_input_mux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.xonar_wm87x6*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 2
  %13 = load %struct.oxygen*, %struct.oxygen** %12, align 8
  store %struct.oxygen* %13, %struct.oxygen** %5, align 8
  %14 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %15 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %14, i32 0, i32 2
  %16 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %15, align 8
  store %struct.xonar_wm87x6* %16, %struct.xonar_wm87x6** %6, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %21 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %24 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @WM8776_ADCMUX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, 3
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %56 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %55, i32 0, i32 2
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %56, align 8
  store %struct.snd_kcontrol* %57, %struct.snd_kcontrol** %7, align 8
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %60 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %59, i32 0, i32 1
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %60, align 8
  store %struct.snd_kcontrol* %61, %struct.snd_kcontrol** %7, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %64 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %68 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %67, i32 0, i32 1
  %69 = call i32 @snd_ctl_notify(i32 %65, i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %62, %37
  br label %76

71:                                               ; preds = %2
  %72 = load i32, i32* %8, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %79 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @WM8776_ADCMUX, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %77, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %76
  %89 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %90 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @GPIO_DS_INPUT_ROUTE, align 4
  br label %97

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = load i32, i32* @GPIO_DS_INPUT_ROUTE, align 4
  %100 = call i32 @oxygen_write16_masked(%struct.oxygen* %89, i32 %90, i32 %98, i32 %99)
  %101 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %102 = load i64, i64* @WM8776_ADCMUX, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @wm8776_write(%struct.oxygen* %101, i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %76
  %106 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %107 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @wm8776_write(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
