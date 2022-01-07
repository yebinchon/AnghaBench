; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_update_amp_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_update_amp_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_amp_info = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_codec = type { i32 }

@AC_AMP_GET_RIGHT = common dso_local global i32 0, align 4
@AC_AMP_GET_LEFT = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_INPUT = common dso_local global i32 0, align 4
@AC_VERB_GET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hda_amp_info* (%struct.hda_codec*, i32, i32, i32, i32, i32)* @update_amp_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hda_amp_info* @update_amp_hash(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hda_amp_info*, align 8
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hda_amp_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %59, %6
  %19 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @HDA_HASH_KEY(i32 %20, i32 %21, i32 %22)
  %24 = call %struct.hda_amp_info* @get_alloc_amp_hash(%struct.hda_codec* %19, i32 %23)
  store %struct.hda_amp_info* %24, %struct.hda_amp_info** %14, align 8
  %25 = load %struct.hda_amp_info*, %struct.hda_amp_info** %14, align 8
  %26 = icmp ne %struct.hda_amp_info* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store %struct.hda_amp_info* null, %struct.hda_amp_info** %7, align 8
  br label %98

28:                                               ; preds = %18
  %29 = load %struct.hda_amp_info*, %struct.hda_amp_info** %14, align 8
  %30 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @INFO_AMP_VOL(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %91, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %76, label %40

40:                                               ; preds = %37
  %41 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @AC_AMP_GET_RIGHT, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @AC_AMP_GET_LEFT, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @HDA_OUTPUT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @AC_AMP_GET_INPUT, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i32, i32* %15, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  %66 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @snd_hda_codec_read(%struct.hda_codec* %66, i32 %67, i32 0, i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = and i32 %71, 255
  store i32 %72, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %73 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %74 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  br label %18

76:                                               ; preds = %37
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.hda_amp_info*, %struct.hda_amp_info** %14, align 8
  %79 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @INFO_AMP_VOL(i32 %84)
  %86 = load %struct.hda_amp_info*, %struct.hda_amp_info** %14, align 8
  %87 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 8
  br label %96

91:                                               ; preds = %28
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store %struct.hda_amp_info* null, %struct.hda_amp_info** %7, align 8
  br label %98

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %76
  %97 = load %struct.hda_amp_info*, %struct.hda_amp_info** %14, align 8
  store %struct.hda_amp_info* %97, %struct.hda_amp_info** %7, align 8
  br label %98

98:                                               ; preds = %96, %94, %27
  %99 = load %struct.hda_amp_info*, %struct.hda_amp_info** %7, align 8
  ret %struct.hda_amp_info* %99
}

declare dso_local %struct.hda_amp_info* @get_alloc_amp_hash(%struct.hda_codec*, i32) #1

declare dso_local i32 @HDA_HASH_KEY(i32, i32, i32) #1

declare dso_local i32 @INFO_AMP_VOL(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
