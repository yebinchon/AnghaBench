; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_dyn_adc_pcm_resetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_dyn_adc_pcm_resetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64*, i64*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @dyn_adc_pcm_resetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyn_adc_pcm_resetup(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %6, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %13, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %24 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %36 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @__snd_hda_codec_cleanup_stream(%struct.hda_codec* %34, i64 %37, i32 1)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %45 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %48 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %42, i64 %43, i32 %46, i32 0, i32 %49)
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @__snd_hda_codec_cleanup_stream(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
