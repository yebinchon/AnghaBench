; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_set_dirty_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_set_dirty_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hda_jack_tbl* }
%struct.hda_jack_tbl = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_set_dirty_all(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  store %struct.hda_jack_tbl* %8, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %18 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %23 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %29 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %28, i32 1
  store %struct.hda_jack_tbl* %29, %struct.hda_jack_tbl** %3, align 8
  br label %9

30:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
