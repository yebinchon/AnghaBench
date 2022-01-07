; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_wm_master_mute_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_wm_master_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32, %struct.aureon_spec* }
%struct.aureon_spec = type { i32*, i32* }

@WM_VOL_MUTE = common dso_local global i32 0, align 4
@WM_DAC_ATTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_master_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_master_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.aureon_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %5, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  %15 = load %struct.aureon_spec*, %struct.aureon_spec** %14, align 8
  store %struct.aureon_spec* %15, %struct.aureon_spec** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %17 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %116, %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %119

21:                                               ; preds = %18
  %22 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %23 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WM_VOL_MUTE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %21
  %46 = load i32, i32* @WM_VOL_MUTE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %49 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %47
  store i32 %55, i32* %53, align 4
  %56 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %69

67:                                               ; preds = %45
  %68 = load i32, i32* @WM_VOL_MUTE, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 0, %66 ], [ %68, %67 ]
  %71 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %72 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %70
  store i32 %78, i32* %76, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %111, %69
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %79
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %87 = load i64, i64* @WM_DAC_ATTEN, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %95 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %104 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @wm_set_vol(%struct.snd_ice1712* %86, i64 %93, i32 %102, i32 %109)
  br label %111

111:                                              ; preds = %85
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %10, align 4
  br label %79

114:                                              ; preds = %79
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %21
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %18

119:                                              ; preds = %18
  %120 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %121 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %120)
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @wm_set_vol(%struct.snd_ice1712*, i64, i32, i32) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
