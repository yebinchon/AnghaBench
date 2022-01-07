; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy_hifi.c_wm_master_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy_hifi.c_wm_master_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { i32, %struct.prodigy_hifi_spec* }
%struct.prodigy_hifi_spec = type { i64*, i32* }

@WM_DAC_ATTEN_L = common dso_local global i64 0, align 8
@WM8766_LDA1 = common dso_local global i64 0, align 8
@WM8766_LDA2 = common dso_local global i64 0, align 8
@WM8766_LDA3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_master_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_master_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.prodigy_hifi_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 1
  %13 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %12, align 8
  store %struct.prodigy_hifi_spec* %13, %struct.prodigy_hifi_spec** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %139, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %142

20:                                               ; preds = %17
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %31 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %29, %36
  br i1 %37, label %38, label %138

38:                                               ; preds = %20
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %49 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %47, i64* %53, align 8
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %55 = load i64, i64* @WM_DAC_ATTEN_L, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %60 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %68 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @wm_set_vol(%struct.snd_ice1712* %54, i64 %58, i32 %66, i64 %73)
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %76 = load i64, i64* @WM8766_LDA1, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %81 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 0, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %89 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @wm8766_set_vol(%struct.snd_ice1712* %75, i64 %79, i32 %87, i64 %94)
  %96 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %97 = load i64, i64* @WM8766_LDA2, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %102 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 4, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %110 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @wm8766_set_vol(%struct.snd_ice1712* %96, i64 %100, i32 %108, i64 %115)
  %117 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %118 = load i64, i64* @WM8766_LDA3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %123 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 6, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %6, align 8
  %131 = getelementptr inbounds %struct.prodigy_hifi_spec, %struct.prodigy_hifi_spec* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @wm8766_set_vol(%struct.snd_ice1712* %117, i64 %121, i32 %129, i64 %136)
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %38, %20
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %17

142:                                              ; preds = %17
  %143 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %144 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_set_vol(%struct.snd_ice1712*, i64, i32, i64) #1

declare dso_local i32 @wm8766_set_vol(%struct.snd_ice1712*, i64, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
