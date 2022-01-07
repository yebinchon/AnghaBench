; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc882_gpio_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc882_gpio_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_VERB_GET_GPIO_DATA = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @alc882_gpio_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc882_gpio_mute(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AC_VERB_GET_GPIO_DATA, align 4
  %15 = call i32 @snd_hda_codec_read(%struct.hda_codec* %10, i32 %13, i32 0, i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AC_VERB_GET_GPIO_MASK, align 4
  %35 = call i32 @snd_hda_codec_read(%struct.hda_codec* %30, i32 %33, i32 0, i32 %34, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AC_VERB_GET_GPIO_DIRECTION, align 4
  %45 = call i32 @snd_hda_codec_read(%struct.hda_codec* %40, i32 %43, i32 0, i32 %44, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %51 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %52 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AC_VERB_SET_GPIO_MASK, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @snd_hda_codec_write(%struct.hda_codec* %50, i32 %53, i32 0, i32 %54, i32 %55)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AC_VERB_SET_GPIO_DIRECTION, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @snd_hda_codec_write(%struct.hda_codec* %57, i32 %60, i32 0, i32 %61, i32 %62)
  %64 = call i32 @msleep(i32 1)
  %65 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %66 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %67 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @snd_hda_codec_write(%struct.hda_codec* %65, i32 %68, i32 0, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
