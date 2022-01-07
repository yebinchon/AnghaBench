; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_ad18xx_pcm_put_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_ad18xx_pcm_put_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32 }

@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_ad18xx_pcm_put_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_ad18xx_pcm_put_bits(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ac97* %13, %struct.snd_ac97** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 15
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 12
  %27 = and i32 %26, 15
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %40, %41
  %43 = sub nsw i32 %33, %42
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %43, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %10, align 2
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %47, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %11, align 2
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %2
  %55 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %56 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %69, %70
  %72 = sub nsw i32 %62, %71
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %72, %73
  %75 = load i16, i16* %10, align 2
  %76 = zext i16 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %10, align 2
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %79, %80
  %82 = load i16, i16* %11, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %83, %81
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %11, align 2
  br label %86

86:                                               ; preds = %61, %54, %2
  %87 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i16, i16* %11, align 2
  %90 = load i16, i16* %10, align 2
  %91 = call i32 @snd_ac97_ad18xx_update_pcm_bits(%struct.snd_ac97* %87, i32 %88, i16 zeroext %89, i16 zeroext %90)
  ret i32 %91
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_ad18xx_update_pcm_bits(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
