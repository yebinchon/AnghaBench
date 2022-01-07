; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_out_switch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_out_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { i32, i32 }
%struct.hda_spdif_out = type { i64, i16 }

@AC_DIG1_ENABLE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hda_spdif_out_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_spdif_out_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_spdif_out*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.hda_spdif_out* @snd_array_elem(i32* %20, i32 %21)
  store %struct.hda_spdif_out* %22, %struct.hda_spdif_out** %7, align 8
  %23 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %24 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %27 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @AC_DIG1_ENABLE, align 2
  %31 = zext i16 %30 to i32
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %9, align 2
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load i16, i16* @AC_DIG1_ENABLE, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %9, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %9, align 2
  br label %50

50:                                               ; preds = %43, %2
  %51 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %52 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %51, i32 0, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %9, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp ne i32 %54, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i16, i16* %9, align 2
  %60 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %61 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %60, i32 0, i32 1
  store i16 %59, i16* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %50
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i16, i16* %9, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i16
  %74 = call i32 @set_spdif_ctls(%struct.hda_codec* %68, i64 %69, i16 zeroext %73, i32 -1)
  br label %75

75:                                               ; preds = %67, %64, %50
  %76 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_array_elem(i32*, i32) #1

declare dso_local i32 @set_spdif_ctls(%struct.hda_codec*, i64, i16 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
