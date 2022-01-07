; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_loopback_mixing_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_loopback_mixing_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32*, i32*, i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }

@AUTO_PIN_HP_OUT = common dso_local global i32 0, align 4
@AUTO_PIN_SPEAKER_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @loopback_mixing_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_mixing_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.hda_codec* %10, %struct.hda_codec** %6, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %7, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %30 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %34 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %44 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @update_aamix_paths(%struct.hda_codec* %31, i32 %32, i32 %37, i32 %42, i32 %46)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %51 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %56 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AUTO_PIN_HP_OUT, align 4
  %61 = call i32 @update_aamix_paths(%struct.hda_codec* %48, i32 %49, i32 %54, i32 %59, i32 %60)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %65 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AUTO_PIN_SPEAKER_OUT, align 4
  %75 = call i32 @update_aamix_paths(%struct.hda_codec* %62, i32 %63, i32 %68, i32 %73, i32 %74)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %27, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @update_aamix_paths(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
