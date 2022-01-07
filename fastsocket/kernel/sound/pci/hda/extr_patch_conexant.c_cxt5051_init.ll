; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5051_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5051_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.conexant_spec* }
%struct.TYPE_2__ = type { i64 }
%struct.conexant_spec = type { i32 }

@AUTO_MIC_PORTB = common dso_local global i32 0, align 4
@CXT5051_PORTB_EVENT = common dso_local global i32 0, align 4
@AUTO_MIC_PORTC = common dso_local global i32 0, align 4
@CXT5051_PORTC_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cxt5051_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxt5051_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  store %struct.conexant_spec* %6, %struct.conexant_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @conexant_init(%struct.hda_codec* %7)
  %9 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %10 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AUTO_MIC_PORTB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* @CXT5051_PORTB_EVENT, align 4
  %18 = call i32 @cxt5051_init_mic_port(%struct.hda_codec* %16, i32 23, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %21 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AUTO_MIC_PORTC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* @CXT5051_PORTC_EVENT, align 4
  %29 = call i32 @cxt5051_init_mic_port(%struct.hda_codec* %27, i32 24, i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @cxt5051_hp_automute(%struct.hda_codec* %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @cxt5051_portb_automic(%struct.hda_codec* %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @cxt5051_portc_automic(%struct.hda_codec* %41)
  br label %43

43:                                               ; preds = %36, %30
  ret i32 0
}

declare dso_local i32 @conexant_init(%struct.hda_codec*) #1

declare dso_local i32 @cxt5051_init_mic_port(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @cxt5051_hp_automute(%struct.hda_codec*) #1

declare dso_local i32 @cxt5051_portb_automic(%struct.hda_codec*) #1

declare dso_local i32 @cxt5051_portc_automic(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
