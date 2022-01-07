; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_wtm.c_stac9460_adc_mute_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_wtm.c_stac9460_adc_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@STAC946X_MIC_L_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_adc_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_adc_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 1
  %17 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %14, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load i32, i32* @STAC946X_MIC_L_VOLUME, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %28, i32 %29)
  store i8 %30, i8* %7, align 1
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = shl i32 %40, 7
  %42 = and i32 %41, 128
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, -129
  %46 = or i32 %42, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %6, align 1
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %24
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8, i8* %6, align 1
  %60 = call i32 @stac9460_put(%struct.snd_ice1712* %57, i32 %58, i8 zeroext %59)
  br label %61

61:                                               ; preds = %56, %24
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %21

65:                                               ; preds = %21
  br label %112

66:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %108, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %111

70:                                               ; preds = %67
  %71 = load i32, i32* @STAC946X_MIC_L_VOLUME, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call zeroext i8 @stac9460_2_get(%struct.snd_ice1712* %74, i32 %75)
  store i8 %76, i8* %7, align 1
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = shl i32 %86, 7
  %88 = and i32 %87, 128
  %89 = load i8, i8* %7, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, -129
  %92 = or i32 %88, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %6, align 1
  %94 = load i8, i8* %6, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* %7, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %70
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i8, i8* %6, align 1
  %106 = call i32 @stac9460_2_put(%struct.snd_ice1712* %103, i32 %104, i8 zeroext %105)
  br label %107

107:                                              ; preds = %102, %70
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %67

111:                                              ; preds = %67
  br label %112

112:                                              ; preds = %111, %65
  %113 = load i32, i32* %11, align 4
  ret i32 %113
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
