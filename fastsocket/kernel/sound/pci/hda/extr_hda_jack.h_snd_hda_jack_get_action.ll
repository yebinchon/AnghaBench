; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.h_snd_hda_jack_get_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.h_snd_hda_jack_get_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.hda_codec*, i32)* @snd_hda_jack_get_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_hda_jack_get_action(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec* %7, i32 %8)
  store %struct.hda_jack_tbl* %9, %struct.hda_jack_tbl** %6, align 8
  %10 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %11 = icmp ne %struct.hda_jack_tbl* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %14 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %16 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 4
  store i8 %17, i8* %3, align 1
  br label %19

18:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i8, i8* %3, align 1
  ret i8 %20
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
