; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_wtm.c_stac9460_dac_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_wtm.c_stac9460_dac_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@STAC946X_MASTER_VOLUME = common dso_local global i32 0, align 4
@STAC946X_LF_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_dac_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_dac_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %2
  %19 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 127
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %10, align 1
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %29, i32 %30)
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 127
  %35 = sub nsw i32 127, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %9, align 1
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %18
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 127, %49
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 128
  %54 = or i32 %50, %53
  %55 = call i32 @stac9460_put(%struct.snd_ice1712* %46, i32 %47, i32 %54)
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i8, i8* %10, align 1
  %59 = zext i8 %58 to i32
  %60 = sub nsw i32 127, %59
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 128
  %64 = or i32 %60, %63
  %65 = call i32 @stac9460_2_put(%struct.snd_ice1712* %56, i32 %57, i32 %64)
  br label %66

66:                                               ; preds = %45, %18
  br label %137

67:                                               ; preds = %2
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 1
  %71 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %68, i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %6, align 4
  %75 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 127
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %10, align 1
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 6
  br i1 %85, label %86, label %90

86:                                               ; preds = %67
  %87 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %87, i32 %88)
  store i8 %89, i8* %8, align 1
  br label %95

90:                                               ; preds = %67
  %91 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 6
  %94 = call zeroext i8 @stac9460_2_get(%struct.snd_ice1712* %91, i32 %93)
  store i8 %94, i8* %8, align 1
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i8, i8* %8, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 127
  %99 = sub nsw i32 127, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %9, align 1
  %101 = load i8, i8* %9, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %102, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %95
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 6
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 127, %116
  %118 = load i8, i8* %8, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 128
  %121 = or i32 %117, %120
  %122 = call i32 @stac9460_put(%struct.snd_ice1712* %113, i32 %114, i32 %121)
  br label %135

123:                                              ; preds = %109
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 6
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = sub nsw i32 127, %128
  %130 = load i8, i8* %8, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 128
  %133 = or i32 %129, %132
  %134 = call i32 @stac9460_2_put(%struct.snd_ice1712* %124, i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %123, %112
  br label %136

136:                                              ; preds = %135, %95
  br label %137

137:                                              ; preds = %136, %66
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local zeroext i8 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
