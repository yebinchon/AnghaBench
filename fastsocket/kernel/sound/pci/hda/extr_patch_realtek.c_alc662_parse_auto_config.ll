; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc662_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc662_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@alc662_parse_auto_config.alc662_ignore = internal constant [2 x i32] [i32 29, i32 0], align 4
@alc662_parse_auto_config.alc663_ssids = internal constant [4 x i32] [i32 21, i32 27, i32 20, i32 33], align 16
@alc662_parse_auto_config.alc662_ssids = internal constant [4 x i32] [i32 21, i32 27, i32 20, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc662_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc662_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 283902578
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 283903587
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 283903589
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 283903600
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 283903601
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %13, %8, %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc662_parse_auto_config.alc663_ssids, i64 0, i64 0), i32** %3, align 8
  br label %30

29:                                               ; preds = %23
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc662_parse_auto_config.alc662_ssids, i64 0, i64 0), i32** %3, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @alc_parse_auto_config(%struct.hda_codec* %31, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @alc662_parse_auto_config.alc662_ignore, i64 0, i64 0), i32* %32)
  ret i32 %33
}

declare dso_local i32 @alc_parse_auto_config(%struct.hda_codec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
