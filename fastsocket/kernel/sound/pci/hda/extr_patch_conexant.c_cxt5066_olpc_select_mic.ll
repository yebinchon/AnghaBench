; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_select_mic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_select_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i64, i64, i32 }
%struct.hda_verb = type { i32, i32, i32 }

@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_IN = common dso_local global i32 0, align 4
@CXT5066_OLPC_EXT_MIC_BIAS = common dso_local global i32 0, align 4
@PIN_VREF80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_olpc_select_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_olpc_select_mic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca [3 x %struct.hda_verb], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  store %struct.conexant_spec* %7, %struct.conexant_spec** %3, align 8
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %9 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  %14 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %15 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = getelementptr inbounds [3 x %struct.hda_verb], [3 x %struct.hda_verb]* %4, i64 0, i64 0
  %20 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %19, i32 0, i32 0
  store i32 27, i32* %20, align 4
  %21 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %19, i32 0, i32 1
  %22 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %19, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %19, i64 1
  %25 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %24, i32 0, i32 0
  store i32 30, i32* %25, align 4
  %26 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %24, i32 0, i32 1
  %27 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %24, i32 0, i32 2
  %29 = load i32, i32* @PIN_IN, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %24, i64 1
  %31 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %30, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %30, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = getelementptr inbounds [3 x %struct.hda_verb], [3 x %struct.hda_verb]* %4, i64 0, i64 0
  %36 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %34, %struct.hda_verb* %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @cxt5066_set_olpc_dc_bias(%struct.hda_codec* %37)
  br label %64

39:                                               ; preds = %13
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %40, i32 30, i32 0)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %44 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @CXT5066_OLPC_EXT_MIC_BIAS, align 4
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %42, i32 26, i32 %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %55 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @PIN_VREF80, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 0, %58 ], [ %60, %59 ]
  %63 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %53, i32 27, i32 %62)
  br label %64

64:                                               ; preds = %61, %18, %12
  ret void
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

declare dso_local i32 @cxt5066_set_olpc_dc_bias(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_set_pin_ctl(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
