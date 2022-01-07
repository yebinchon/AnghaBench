; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_fix_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_fix_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, i32, i32 }

@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_GET_PROC_COEF = common dso_local global i32 0, align 4
@AC_VERB_SET_PROC_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_fix_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_fix_pll(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  store %struct.alc_spec* %7, %struct.alc_spec** %3, align 8
  %8 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %9 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %16 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %19 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %14, i32 %17, i32 0, i32 %18, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %25 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AC_VERB_GET_PROC_COEF, align 4
  %28 = call i32 @snd_hda_codec_read(%struct.hda_codec* %23, i32 %26, i32 0, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %31 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %34 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %35 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_hda_codec_write(%struct.hda_codec* %29, i32 %32, i32 0, i32 %33, i32 %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %40 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AC_VERB_SET_PROC_COEF, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %45 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %43, %48
  %50 = call i32 @snd_hda_codec_write(%struct.hda_codec* %38, i32 %41, i32 0, i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
