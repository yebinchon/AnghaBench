; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_unsol_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_unsol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32 }

@AC_UNSOL_RES_TAG_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_unsol_event(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_jack_tbl*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AC_UNSOL_RES_TAG_SHIFT, align 4
  %9 = lshr i32 %7, %8
  %10 = and i32 %9, 127
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec* %11, i32 %12)
  store %struct.hda_jack_tbl* %13, %struct.hda_jack_tbl** %5, align 8
  %14 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %15 = icmp ne %struct.hda_jack_tbl* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %19 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %22 = call i32 @call_jack_callback(%struct.hda_codec* %20, %struct.hda_jack_tbl* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @snd_hda_jack_report_sync(%struct.hda_codec* %23)
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec*, i32) #1

declare dso_local i32 @call_jack_callback(%struct.hda_codec*, %struct.hda_jack_tbl*) #1

declare dso_local i32 @snd_hda_jack_report_sync(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
