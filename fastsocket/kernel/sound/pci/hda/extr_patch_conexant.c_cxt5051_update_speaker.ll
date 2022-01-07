; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5051_update_speaker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5051_update_speaker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i64, i64, i64 }

@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5051_update_speaker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5051_update_speaker(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  store %struct.conexant_spec* %7, %struct.conexant_spec** %3, align 8
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %9 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %14 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @PIN_HP, align 4
  br label %20

19:                                               ; preds = %12, %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %4, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %22, i32 22, i32 %23)
  %25 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %26 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %31 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PIN_OUT, align 4
  br label %37

36:                                               ; preds = %29, %20
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %4, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %39, i32 26, i32 %40)
  %42 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %43 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %47, i32 27, i32 %48)
  br label %50

50:                                               ; preds = %46, %37
  ret void
}

declare dso_local i32 @snd_hda_set_pin_ctl(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
