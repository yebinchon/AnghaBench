; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_put_spsa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_put_spsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EA_SPDIF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_put_spsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_put_spsa(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_ac97* %15, %struct.snd_ac97** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %9, align 2
  %40 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %9, align 2
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97* %51, i32 %52)
  store i16 %53, i16* %10, align 2
  %54 = load i16, i16* %10, align 2
  %55 = zext i16 %54 to i32
  %56 = load i32, i32* %8, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i16, i16* %9, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %58, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %11, align 2
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* %11, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp ne i32 %64, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %2
  %72 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %73 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %74 = call zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97* %72, i32 %73)
  store i16 %74, i16* %13, align 2
  %75 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %76 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %77 = load i16, i16* @AC97_EA_SPDIF, align 2
  %78 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %75, i32 %76, i16 zeroext %77, i16 zeroext 0)
  %79 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = trunc i32 %81 to i16
  %83 = load i16, i16* %9, align 2
  %84 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %79, i32 %80, i16 zeroext %82, i16 zeroext %83)
  store i32 %84, i32* %12, align 4
  %85 = load i16, i16* %13, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* @AC97_EA_SPDIF, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %71
  %92 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %93 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %94 = load i16, i16* @AC97_EA_SPDIF, align 2
  %95 = load i16, i16* @AC97_EA_SPDIF, align 2
  %96 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %92, i32 %93, i16 zeroext %94, i16 zeroext %95)
  br label %97

97:                                               ; preds = %91, %71
  br label %98

98:                                               ; preds = %97, %2
  %99 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %100 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
