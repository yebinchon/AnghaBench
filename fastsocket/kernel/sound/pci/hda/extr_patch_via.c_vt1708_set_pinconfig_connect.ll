; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_vt1708_set_pinconfig_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_vt1708_set_pinconfig_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_JACK_PORT_NONE = common dso_local global i64 0, align 8
@AC_JACK_PORT_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @vt1708_set_pinconfig_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt1708_set_pinconfig_connect(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @get_defcfg_association(i32 %10)
  %12 = trunc i64 %11 to i8
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 4
  %16 = load i32, i32* %5, align 4
  %17 = call zeroext i8 @get_defcfg_sequence(i32 %16)
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @get_defcfg_connect(i32 %21)
  %23 = load i64, i64* @AC_JACK_PORT_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 240
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %43

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AC_JACK_PORT_BOTH, align 4
  %36 = shl i32 %35, 30
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %29, %2
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_association(i32) #1

declare dso_local zeroext i8 @get_defcfg_sequence(i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
