; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_create_spdif_share_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_create_spdif_share_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_multi_out = type { i32 }
%struct.snd_kcontrol = type { i32 }

@spdif_share_sw = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %0, %struct.hda_multi_out* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_multi_out*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_multi_out* %1, %struct.hda_multi_out** %5, align 8
  %7 = load %struct.hda_multi_out*, %struct.hda_multi_out** %5, align 8
  %8 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.hda_multi_out*, %struct.hda_multi_out** %5, align 8
  %14 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @spdif_share_sw, %struct.hda_multi_out* %13)
  store %struct.snd_kcontrol* %14, %struct.snd_kcontrol** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %16 = icmp ne %struct.snd_kcontrol* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %12
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = load %struct.hda_multi_out*, %struct.hda_multi_out** %5, align 8
  %23 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %26 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %21, i32 %24, %struct.snd_kcontrol* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %17, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.hda_multi_out*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
