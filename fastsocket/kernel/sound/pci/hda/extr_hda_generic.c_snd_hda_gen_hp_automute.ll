; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_hp_automute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_hp_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.hda_jack_tbl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_gen_hp_automute(%struct.hda_codec* %0, %struct.hda_jack_tbl* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_tbl*, align 8
  %5 = alloca %struct.hda_gen_spec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_tbl* %1, %struct.hda_jack_tbl** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %5, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @detect_jacks(%struct.hda_codec* %30, i32 %31, i32* %32)
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %37 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %42 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %29
  br label %54

51:                                               ; preds = %45, %40
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = call i32 @call_update_outputs(%struct.hda_codec* %52)
  br label %54

54:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @detect_jacks(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @call_update_outputs(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
