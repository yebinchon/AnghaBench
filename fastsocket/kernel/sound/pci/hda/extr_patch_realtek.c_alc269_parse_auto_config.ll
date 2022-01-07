; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@alc269_parse_auto_config.alc269_ignore = internal constant [2 x i32] [i32 29, i32 0], align 4
@alc269_parse_auto_config.alc269_ssids = internal constant [4 x i32] [i32 0, i32 27, i32 20, i32 33], align 16
@alc269_parse_auto_config.alc269va_ssids = internal constant [4 x i32] [i32 21, i32 27, i32 20, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc269_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc269_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i32*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  store %struct.alc_spec* %7, %struct.alc_spec** %3, align 8
  %8 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %9 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 135, label %11
    i32 133, label %11
    i32 131, label %11
    i32 129, label %11
    i32 134, label %12
    i32 132, label %12
    i32 130, label %12
    i32 128, label %12
  ]

11:                                               ; preds = %1, %1, %1, %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc269_parse_auto_config.alc269va_ssids, i64 0, i64 0), i32** %4, align 8
  br label %14

12:                                               ; preds = %1, %1, %1, %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc269_parse_auto_config.alc269_ssids, i64 0, i64 0), i32** %4, align 8
  br label %14

13:                                               ; preds = %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc269_parse_auto_config.alc269_ssids, i64 0, i64 0), i32** %4, align 8
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @alc_parse_auto_config(%struct.hda_codec* %15, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @alc269_parse_auto_config.alc269_ignore, i64 0, i64 0), i32* %16)
  ret i32 %17
}

declare dso_local i32 @alc_parse_auto_config(%struct.hda_codec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
