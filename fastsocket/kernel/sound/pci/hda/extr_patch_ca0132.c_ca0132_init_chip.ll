; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i32*, i32*, i64, i64*, i64*, i64, i32, i32, i32 }

@SPEAKER_OUT = common dso_local global i32 0, align 4
@DIGITAL_MIC = common dso_local global i32 0, align 4
@VNODES_COUNT = common dso_local global i32 0, align 4
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@PLAY_ENHANCEMENT = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@CRYSTAL_VOICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_init_chip(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  store %struct.ca0132_spec* %9, %struct.ca0132_spec** %3, align 8
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %11 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %10, i32 0, i32 9
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i32, i32* @SPEAKER_OUT, align 4
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @DIGITAL_MIC, align 4
  %17 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %18 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %50, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VNODES_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %27 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 90, i32* %31, align 4
  %32 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %33 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 90, i32* %37, align 4
  %38 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %39 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %38, i32 0, i32 5
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %45 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %55 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %81, %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %76 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %86 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %88 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @PLAY_ENHANCEMENT, align 8
  %91 = load i64, i64* @EFFECT_START_NID, align 8
  %92 = sub i64 %90, %91
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 1, i32* %93, align 4
  %94 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %95 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @CRYSTAL_VOICE, align 8
  %98 = load i64, i64* @EFFECT_START_NID, align 8
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 0, i32* %100, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
