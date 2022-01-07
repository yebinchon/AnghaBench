; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1986a_hp_automute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1986a_hp_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ad1986a_hp_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1986a_hp_automute(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ad198x_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ad198x_spec*, %struct.ad198x_spec** %5, align 8
  store %struct.ad198x_spec* %6, %struct.ad198x_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %7, i32 26)
  %9 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %10 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %12 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %17 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %23 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @ad1986a_update_hp(%struct.hda_codec* %25)
  ret void
}

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad1986a_update_hp(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
