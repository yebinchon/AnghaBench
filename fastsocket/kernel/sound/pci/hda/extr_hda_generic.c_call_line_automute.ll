; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_call_line_automute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_call_line_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)* }
%struct.hda_codec.0 = type opaque
%struct.hda_jack_tbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_tbl*)* @call_line_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_line_automute(%struct.hda_codec* %0, %struct.hda_jack_tbl* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_tbl*, align 8
  %5 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_tbl* %1, %struct.hda_jack_tbl** %4, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  store %struct.hda_gen_spec* %8, %struct.hda_gen_spec** %5, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 0
  %11 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)** %10, align 8
  %12 = icmp ne i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 0
  %16 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)** %15, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = bitcast %struct.hda_codec* %17 to %struct.hda_codec.0*
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %20 = call i32 %16(%struct.hda_codec.0* %18, %struct.hda_jack_tbl* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %24 = call i32 @snd_hda_gen_line_automute(%struct.hda_codec* %22, %struct.hda_jack_tbl* %23)
  br label %25

25:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @snd_hda_gen_line_automute(%struct.hda_codec*, %struct.hda_jack_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
