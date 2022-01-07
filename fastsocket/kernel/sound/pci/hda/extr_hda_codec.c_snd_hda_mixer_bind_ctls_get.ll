; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_mixer_bind_ctls_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_mixer_bind_ctls_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { i32 }
%struct.hda_bind_ctls = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_mixer_bind_ctls_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_bind_ctls*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.hda_codec* %9, %struct.hda_codec** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.hda_bind_ctls*
  store %struct.hda_bind_ctls* %16, %struct.hda_bind_ctls** %6, align 8
  %17 = load %struct.hda_bind_ctls*, %struct.hda_bind_ctls** %6, align 8
  %18 = getelementptr inbounds %struct.hda_bind_ctls, %struct.hda_bind_ctls* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.hda_bind_ctls*, %struct.hda_bind_ctls** %6, align 8
  %24 = getelementptr inbounds %struct.hda_bind_ctls, %struct.hda_bind_ctls* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %26, align 8
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = call i32 %27(%struct.snd_kcontrol* %28, %struct.snd_ctl_elem_value* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.hda_bind_ctls*, %struct.hda_bind_ctls** %6, align 8
  %32 = ptrtoint %struct.hda_bind_ctls* %31 to i64
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %36 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
