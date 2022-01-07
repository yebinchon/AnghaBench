; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_is_inv_dmic_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_is_inv_dmic_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@AUTO_PIN_MIC = common dso_local global i64 0, align 8
@INPUT_PIN_ATTR_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64)* @is_inv_dmic_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_inv_dmic_pin(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca %struct.auto_pin_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %6, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 1
  store %struct.auto_pin_cfg* %14, %struct.auto_pin_cfg** %7, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %7, align 8
  %24 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %7, align 8
  %29 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %60

39:                                               ; preds = %27
  %40 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %7, align 8
  %41 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUTO_PIN_MIC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %52, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @snd_hda_get_input_pin_attr(i32 %55)
  %57 = load i64, i64* @INPUT_PIN_ATTR_INT, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %38
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %21

63:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %51, %50, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i64) #1

declare dso_local i64 @snd_hda_get_input_pin_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
