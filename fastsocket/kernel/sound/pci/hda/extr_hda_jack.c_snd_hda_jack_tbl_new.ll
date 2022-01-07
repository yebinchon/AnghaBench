; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_tbl_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_tbl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_jack_tbl = type { i32, i32, i32 }
%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %7, i32 %8)
  store %struct.hda_jack_tbl* %9, %struct.hda_jack_tbl** %6, align 8
  %10 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %11 = icmp ne %struct.hda_jack_tbl* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  store %struct.hda_jack_tbl* %13, %struct.hda_jack_tbl** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = call %struct.hda_jack_tbl* @snd_array_new(%struct.TYPE_2__* %16)
  store %struct.hda_jack_tbl* %17, %struct.hda_jack_tbl** %6, align 8
  %18 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %19 = icmp ne %struct.hda_jack_tbl* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.hda_jack_tbl* null, %struct.hda_jack_tbl** %3, align 8
  br label %34

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %24 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %26 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %32 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  store %struct.hda_jack_tbl* %33, %struct.hda_jack_tbl** %3, align 8
  br label %34

34:                                               ; preds = %21, %20, %12
  %35 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  ret %struct.hda_jack_tbl* %35
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #1

declare dso_local %struct.hda_jack_tbl* @snd_array_new(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
