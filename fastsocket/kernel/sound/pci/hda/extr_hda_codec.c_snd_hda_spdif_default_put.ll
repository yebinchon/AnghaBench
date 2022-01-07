; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_default_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_default_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { i32, i32 }
%struct.hda_spdif_out = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hda_spdif_default_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_spdif_default_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %32, %40
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %41, %49
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 24
  %59 = or i32 %50, %58
  %60 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %61 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %63 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call zeroext i16 @convert_from_spdif_status(i32 %64)
  store i16 %65, i16* %9, align 2
  %66 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %67 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = load i16, i16* %9, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %9, align 2
  %74 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %75 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i16, i16* %9, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp ne i32 %76, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i16, i16* %9, align 2
  %82 = zext i16 %81 to i32
  %83 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %84 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %2
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, -1
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i16, i16* %9, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 255
  %96 = trunc i32 %95 to i16
  %97 = load i16, i16* %9, align 2
  %98 = zext i16 %97 to i32
  %99 = ashr i32 %98, 8
  %100 = and i32 %99, 255
  %101 = trunc i32 %100 to i16
  %102 = call i32 @set_dig_out_convert(%struct.hda_codec* %91, i64 %92, i16 zeroext %96, i16 zeroext %101)
  br label %103

103:                                              ; preds = %90, %87, %2
  %104 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %105 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_array_elem(i32*, i32) #1

declare dso_local zeroext i16 @convert_from_spdif_status(i32) #1

declare dso_local i32 @set_dig_out_convert(%struct.hda_codec*, i64, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
