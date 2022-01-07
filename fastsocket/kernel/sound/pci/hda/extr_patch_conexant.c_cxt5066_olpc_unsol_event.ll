; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_unsol_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_unsol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"CXT5066: unsol event %x (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @cxt5066_olpc_unsol_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_olpc_unsol_event(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.conexant_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  store %struct.conexant_spec* %8, %struct.conexant_spec** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 26
  %12 = call i32 @snd_printdd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 26
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %2
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = call i32 @cxt5066_hp_automute(%struct.hda_codec* %16)
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  %20 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = call i32 @cxt5066_olpc_automic(%struct.hda_codec* %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %2, %26, %15
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i32, i32) #1

declare dso_local i32 @cxt5066_hp_automute(%struct.hda_codec*) #1

declare dso_local i32 @cxt5066_olpc_automic(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
