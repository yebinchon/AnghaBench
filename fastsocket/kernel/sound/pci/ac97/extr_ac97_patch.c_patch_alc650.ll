; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_alc650.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_alc650.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@patch_alc650_ops = common dso_local global i32 0, align 4
@AC97_ALC650_REVISION = common dso_local global i32 0, align 4
@AC97_ALC650_GPIO_STATUS = common dso_local global i32 0, align 4
@AC97_ALC650_CLOCK = common dso_local global i32 0, align 4
@AC97_ALC650_MULTICH = common dso_local global i32 0, align 4
@AC97_ALC650_GPIO_SETUP = common dso_local global i32 0, align 4
@AC97_ALC650_SURR_DAC_VOL = common dso_local global i32 0, align 4
@AC97_ALC650_LFE_DAC_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_alc650 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc650(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 4
  store i32* @patch_alc650_ops, i32** %5, align 8
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = load i32, i32* @AC97_ALC650_REVISION, align 4
  %8 = call i32 @snd_ac97_read(%struct.snd_ac97* %6, i32 %7)
  %9 = and i32 %8, 63
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %3, align 2
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %15, i32 0, i32 0
  store i32 1095517984, i32* %16, align 8
  br label %41

17:                                               ; preds = %1
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %23 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %22, i32 0, i32 0
  store i32 1095517985, i32* %23, align 8
  br label %40

24:                                               ; preds = %17
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %30 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %29, i32 0, i32 0
  store i32 1095517986, i32* %30, align 8
  br label %39

31:                                               ; preds = %24
  %32 = load i16, i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp slt i32 %33, 48
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %36, i32 0, i32 0
  store i32 1095517987, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %21
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %43 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1095517986
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %48 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1095517987
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ true, %41 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %55 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %58 = load i32, i32* @AC97_ALC650_GPIO_STATUS, align 4
  %59 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %60 = load i32, i32* @AC97_ALC650_GPIO_STATUS, align 4
  %61 = call i32 @snd_ac97_read(%struct.snd_ac97* %59, i32 %60)
  %62 = or i32 %61, 32768
  %63 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %57, i32 %58, i32 %62)
  %64 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %65 = load i32, i32* @AC97_ALC650_CLOCK, align 4
  %66 = call i32 @snd_ac97_read(%struct.snd_ac97* %64, i32 %65)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %3, align 2
  %68 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %69 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %51
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %75 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 4163
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %80 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 4355
  br i1 %82, label %88, label %83

83:                                               ; preds = %78, %73
  %84 = load i16, i16* %3, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %85, 3
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %3, align 2
  br label %93

88:                                               ; preds = %78, %51
  %89 = load i16, i16* %3, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, -4
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %3, align 2
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %95 = load i32, i32* @AC97_ALC650_CLOCK, align 4
  %96 = load i16, i16* %3, align 2
  %97 = zext i16 %96 to i32
  %98 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %94, i32 %95, i32 %97)
  %99 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %100 = load i32, i32* @AC97_ALC650_MULTICH, align 4
  %101 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %99, i32 %100, i32 0)
  %102 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %103 = load i32, i32* @AC97_ALC650_GPIO_SETUP, align 4
  %104 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %105 = load i32, i32* @AC97_ALC650_GPIO_SETUP, align 4
  %106 = call i32 @snd_ac97_read(%struct.snd_ac97* %104, i32 %105)
  %107 = or i32 %106, 1
  %108 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %102, i32 %103, i32 %107)
  %109 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %110 = load i32, i32* @AC97_ALC650_GPIO_STATUS, align 4
  %111 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %112 = load i32, i32* @AC97_ALC650_GPIO_STATUS, align 4
  %113 = call i32 @snd_ac97_read(%struct.snd_ac97* %111, i32 %112)
  %114 = or i32 %113, 256
  %115 = and i32 %114, -17
  %116 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %109, i32 %110, i32 %115)
  %117 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %118 = load i32, i32* @AC97_ALC650_SURR_DAC_VOL, align 4
  %119 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %117, i32 %118, i32 2056)
  %120 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %121 = load i32, i32* @AC97_ALC650_LFE_DAC_VOL, align 4
  %122 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %120, i32 %121, i32 2056)
  ret i32 0
}

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
