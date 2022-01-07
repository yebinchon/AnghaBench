; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_level_control_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_level_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.oxygen* }
%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32*, i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@WM8776_ALCCTRL1 = common dso_local global i64 0, align 8
@WM8776_ALCCTRL2 = common dso_local global i64 0, align 8
@WM8776_LCEN = common dso_local global i32 0, align 4
@WM8776_LCSEL_MASK = common dso_local global i32 0, align 4
@WM8776_LCSEL_LIMITER = common dso_local global i32 0, align 4
@LC_CONTROL_LIMITER = common dso_local global i32 0, align 4
@WM8776_LCSEL_ALC_STEREO = common dso_local global i32 0, align 4
@LC_CONTROL_ALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8776_level_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_level_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.xonar_wm87x6*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 1
  %15 = load %struct.oxygen*, %struct.oxygen** %14, align 8
  store %struct.oxygen* %15, %struct.oxygen** %6, align 8
  %16 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 1
  %18 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %17, align 8
  store %struct.xonar_wm87x6* %18, %struct.xonar_wm87x6** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %147

30:                                               ; preds = %2
  %31 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %32 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %142

48:                                               ; preds = %30
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %57 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %59 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @WM8776_ALCCTRL1, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  %64 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %65 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @WM8776_ALCCTRL2, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %77 [
    i32 1, label %85
    i32 2, label %102
  ]

77:                                               ; preds = %48
  %78 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %79 = load i64, i64* @WM8776_ALCCTRL2, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @WM8776_LCEN, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @wm8776_write_cached(%struct.oxygen* %78, i64 %79, i32 %83)
  br label %119

85:                                               ; preds = %48
  %86 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %87 = load i64, i64* @WM8776_ALCCTRL1, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @WM8776_LCSEL_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* @WM8776_LCSEL_LIMITER, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @wm8776_write_cached(%struct.oxygen* %86, i64 %87, i32 %93)
  %95 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %96 = load i64, i64* @WM8776_ALCCTRL2, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @WM8776_LCEN, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @wm8776_write_cached(%struct.oxygen* %95, i64 %96, i32 %99)
  %101 = load i32, i32* @LC_CONTROL_LIMITER, align 4
  store i32 %101, i32* %8, align 4
  br label %119

102:                                              ; preds = %48
  %103 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %104 = load i64, i64* @WM8776_ALCCTRL1, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @WM8776_LCSEL_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* @WM8776_LCSEL_ALC_STEREO, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @wm8776_write_cached(%struct.oxygen* %103, i64 %104, i32 %110)
  %112 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %113 = load i64, i64* @WM8776_ALCCTRL2, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @WM8776_LCEN, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @wm8776_write_cached(%struct.oxygen* %112, i64 %113, i32 %116)
  %118 = load i32, i32* @LC_CONTROL_ALC, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %102, %85, %77
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %123 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @ARRAY_SIZE(i32* %124)
  %126 = icmp ult i32 %121, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %120
  %128 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %129 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  %130 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @activate_control(%struct.oxygen* %128, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %9, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %120

141:                                              ; preds = %120
  br label %142

142:                                              ; preds = %141, %30
  %143 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %144 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %142, %27
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8776_write_cached(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @activate_control(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
