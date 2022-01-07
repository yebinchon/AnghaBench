; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_codec_amp_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_codec_amp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32 }
%struct.hda_amp_info = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32, i32, i32, i32)* @codec_amp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_amp_update(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_codec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hda_amp_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %15, align 4
  %22 = and i32 %21, -256
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* %15, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %16, align 4
  %32 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call %struct.hda_amp_info* @update_amp_hash(%struct.hda_codec* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store %struct.hda_amp_info* %41, %struct.hda_amp_info** %18, align 8
  %42 = load %struct.hda_amp_info*, %struct.hda_amp_info** %18, align 8
  %43 = icmp ne %struct.hda_amp_info* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %46 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %9, align 4
  br label %106

48:                                               ; preds = %28
  %49 = load %struct.hda_amp_info*, %struct.hda_amp_info** %18, align 8
  %50 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %16, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load %struct.hda_amp_info*, %struct.hda_amp_info** %18, align 8
  %62 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %48
  %71 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %9, align 4
  br label %106

74:                                               ; preds = %48
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.hda_amp_info*, %struct.hda_amp_info** %18, align 8
  %77 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %83 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hda_amp_info*, %struct.hda_amp_info** %18, align 8
  %86 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  store i32 %84, i32* %20, align 4
  %88 = load %struct.hda_amp_info*, %struct.hda_amp_info** %18, align 8
  %89 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %19, align 4
  %91 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %92 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %74
  %97 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @put_vol_mute(%struct.hda_codec* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %74
  store i32 1, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %70, %44
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_amp_info* @update_amp_hash(%struct.hda_codec*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_vol_mute(%struct.hda_codec*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
