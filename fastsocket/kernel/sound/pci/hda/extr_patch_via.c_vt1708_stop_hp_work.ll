; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_vt1708_stop_hp_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_vt1708_stop_hp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, i32, %struct.via_spec* }
%struct.via_spec = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VT1708 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @vt1708_stop_hp_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt1708_stop_hp_work(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.via_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 2
  %6 = load %struct.via_spec*, %struct.via_spec** %5, align 8
  store %struct.via_spec* %6, %struct.via_spec** %3, align 8
  %7 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %8 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VT1708, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %14 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %35

20:                                               ; preds = %12
  %21 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %22 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @snd_hda_codec_write(%struct.hda_codec* %26, i32 1, i32 0, i32 3969, i32 1)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 1
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %32 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %19, %25, %20
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
