; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_snd_soc_put_volsw_r2_twl4030.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_snd_soc_put_volsw_r2_twl4030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32, i32, i32 }
%struct.snd_soc_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_soc_put_volsw_r2_twl4030 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_put_volsw_r2_twl4030(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_mixer_control*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %20, %struct.soc_mixer_control** %6, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %21)
  store %struct.snd_soc_codec* %22, %struct.snd_soc_codec** %7, align 8
  %23 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %24 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %27 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %30 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %33 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @fls(i32 %35)
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %39, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %16, align 2
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %49, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %14, align 2
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %59, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %15, align 2
  %63 = load i16, i16* %14, align 2
  %64 = icmp ne i16 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %2
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i16, i16* %14, align 2
  %69 = zext i16 %68 to i32
  %70 = sub nsw i32 %67, %69
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %14, align 2
  br label %72

72:                                               ; preds = %65, %2
  %73 = load i16, i16* %15, align 2
  %74 = icmp ne i16 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i16, i16* %15, align 2
  %79 = zext i16 %78 to i32
  %80 = sub nsw i32 %77, %79
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %15, align 2
  br label %82

82:                                               ; preds = %75, %72
  %83 = load i16, i16* %14, align 2
  %84 = zext i16 %83 to i32
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %84, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %14, align 2
  %88 = load i16, i16* %15, align 2
  %89 = zext i16 %88 to i32
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %89, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %15, align 2
  %93 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i16, i16* %16, align 2
  %96 = load i16, i16* %14, align 2
  %97 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %93, i32 %94, i16 zeroext %95, i16 zeroext %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %82
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %82
  %103 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i16, i16* %16, align 2
  %106 = load i16, i16* %15, align 2
  %107 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %103, i32 %104, i16 zeroext %105, i16 zeroext %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %100
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
