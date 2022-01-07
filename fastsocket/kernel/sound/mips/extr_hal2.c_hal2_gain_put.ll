; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_gain_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_gain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_hal2 = type { i32 }

@H2I_DAC_C2 = common dso_local global i32 0, align 4
@H2I_C2_L_ATT_M = common dso_local global i32 0, align 4
@H2I_C2_R_ATT_M = common dso_local global i32 0, align 4
@H2I_C2_MUTE = common dso_local global i32 0, align 4
@H2I_C2_L_ATT_SHIFT = common dso_local global i32 0, align 4
@H2I_C2_R_ATT_SHIFT = common dso_local global i32 0, align 4
@H2I_ADC_C2 = common dso_local global i32 0, align 4
@H2I_C2_L_GAIN_M = common dso_local global i32 0, align 4
@H2I_C2_R_GAIN_M = common dso_local global i32 0, align 4
@H2I_C2_L_GAIN_SHIFT = common dso_local global i32 0, align 4
@H2I_C2_R_GAIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hal2_gain_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_gain_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_hal2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_hal2* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_hal2* %11, %struct.snd_hal2** %5, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  switch i32 %29, label %98 [
    i32 128, label %30
    i32 129, label %74
  ]

30:                                               ; preds = %2
  %31 = load %struct.snd_hal2*, %struct.snd_hal2** %5, align 8
  %32 = load i32, i32* @H2I_DAC_C2, align 4
  %33 = call i32 @hal2_i_read32(%struct.snd_hal2* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @H2I_C2_L_ATT_M, align 4
  %36 = load i32, i32* @H2I_C2_R_ATT_M, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @H2I_C2_MUTE, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 31, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 31, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @H2I_C2_L_ATT_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @H2I_C2_R_ATT_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %69

61:                                               ; preds = %30
  %62 = load i32, i32* @H2I_C2_L_ATT_M, align 4
  %63 = load i32, i32* @H2I_C2_R_ATT_M, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @H2I_C2_MUTE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %46
  %70 = load %struct.snd_hal2*, %struct.snd_hal2** %5, align 8
  %71 = load i32, i32* @H2I_DAC_C2, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @hal2_i_write32(%struct.snd_hal2* %70, i32 %71, i32 %72)
  br label %98

74:                                               ; preds = %2
  %75 = load %struct.snd_hal2*, %struct.snd_hal2** %5, align 8
  %76 = load i32, i32* @H2I_ADC_C2, align 4
  %77 = call i32 @hal2_i_read32(%struct.snd_hal2* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @H2I_C2_L_GAIN_M, align 4
  %80 = load i32, i32* @H2I_C2_R_GAIN_M, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @H2I_C2_L_GAIN_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @H2I_C2_R_GAIN_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.snd_hal2*, %struct.snd_hal2** %5, align 8
  %95 = load i32, i32* @H2I_ADC_C2, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @hal2_i_write32(%struct.snd_hal2* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %2, %74, %69
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %99, %100
  %102 = zext i1 %101 to i32
  ret i32 %102
}

declare dso_local %struct.snd_hal2* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @hal2_i_read32(%struct.snd_hal2*, i32) #1

declare dso_local i32 @hal2_i_write32(%struct.snd_hal2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
