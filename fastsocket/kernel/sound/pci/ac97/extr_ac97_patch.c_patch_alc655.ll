; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_alc655.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_alc655.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@AC97_ID_ALC658 = common dso_local global i64 0, align 8
@AC97_ALC650_REVISION = common dso_local global i32 0, align 4
@AC97_ID_ALC658D = common dso_local global i64 0, align 8
@patch_alc655_ops = common dso_local global i32 0, align 4
@AC97_INT_PAGING = common dso_local global i32 0, align 4
@AC97_PAGE_MASK = common dso_local global i32 0, align 4
@AC97_PAGE_VENDOR = common dso_local global i32 0, align 4
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@AC97_ALC650_MULTICH = common dso_local global i32 0, align 4
@AC97_ALC650_SURR_DAC_VOL = common dso_local global i32 0, align 4
@AC97_ALC650_LFE_DAC_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_alc655 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc655(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AC97_ID_ALC658, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %14 = load i32, i32* @AC97_ALC650_REVISION, align 4
  %15 = call i32 @snd_ac97_read(%struct.snd_ac97* %13, i32 %14)
  %16 = and i32 %15, 63
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load i64, i64* @AC97_ID_ALC658D, align 8
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %21 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %23 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %9
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %28 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %27, i32 0, i32 5
  store i32* @patch_alc655_ops, i32** %28, align 8
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %30 = load i32, i32* @AC97_INT_PAGING, align 4
  %31 = load i32, i32* @AC97_PAGE_MASK, align 4
  %32 = load i32, i32* @AC97_PAGE_VENDOR, align 4
  %33 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %35 = call i32 @snd_ac97_read(%struct.snd_ac97* %34, i32 122)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, -3
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %26
  %45 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %46 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 5218
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %51 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 305
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  %55 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %56 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 353
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %61 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 849
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %66 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1137
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %71 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 97
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64, %59, %54, %49
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, -3
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %69, %44
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, 2
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @AC97_EI_SPDIF, align 4
  %82 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %83 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %41
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, -4097
  store i32 %88, i32* %3, align 4
  %89 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %89, i32 122, i32 %90)
  %92 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %93 = load i32, i32* @AC97_ALC650_MULTICH, align 4
  %94 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %92, i32 %93, i32 32768)
  %95 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %96 = load i32, i32* @AC97_ALC650_SURR_DAC_VOL, align 4
  %97 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %95, i32 %96, i32 2056)
  %98 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %99 = load i32, i32* @AC97_ALC650_LFE_DAC_VOL, align 4
  %100 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %98, i32 %99, i32 2056)
  %101 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %102 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AC97_ID_ALC658D, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %86
  %107 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %108 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %107, i32 116, i32 2048, i32 2048)
  br label %109

109:                                              ; preds = %106, %86
  ret i32 0
}

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
