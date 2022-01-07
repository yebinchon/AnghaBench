; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { i32 }
%struct.snd_mixer_oss_slot = type { i64 }
%struct.slot = type { i32, i32* }

@SNDRV_MIXER_OSS_PRESENT_PVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GLOBAL = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GLOBAL = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PROUTE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32*, i32*)* @snd_mixer_oss_get_volume1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_get_volume1(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.snd_mixer_oss_file*, align 8
  %6 = alloca %struct.snd_mixer_oss_slot*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %5, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %11 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.slot*
  store %struct.slot* %13, %struct.slot** %9, align 8
  %14 = load i32*, i32** %8, align 8
  store i32 100, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 100, i32* %15, align 4
  %16 = load %struct.slot*, %struct.slot** %9, align 8
  %17 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PVOLUME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %24 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %25 = load %struct.slot*, %struct.slot** %9, align 8
  %26 = getelementptr inbounds %struct.slot, %struct.slot* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PVOLUME, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %23, %struct.snd_mixer_oss_slot* %24, i32 %30, i32* %31, i32* %32)
  br label %74

34:                                               ; preds = %4
  %35 = load %struct.slot*, %struct.slot** %9, align 8
  %36 = getelementptr inbounds %struct.slot, %struct.slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GVOLUME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %43 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %44 = load %struct.slot*, %struct.slot** %9, align 8
  %45 = getelementptr inbounds %struct.slot, %struct.slot* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GVOLUME, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %42, %struct.snd_mixer_oss_slot* %43, i32 %49, i32* %50, i32* %51)
  br label %73

53:                                               ; preds = %34
  %54 = load %struct.slot*, %struct.slot** %9, align 8
  %55 = getelementptr inbounds %struct.slot, %struct.slot* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GLOBAL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %62 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %63 = load %struct.slot*, %struct.slot** %9, align 8
  %64 = getelementptr inbounds %struct.slot, %struct.slot* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GLOBAL, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %61, %struct.snd_mixer_oss_slot* %62, i32 %68, i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %60, %53
  br label %73

73:                                               ; preds = %72, %41
  br label %74

74:                                               ; preds = %73, %22
  %75 = load %struct.slot*, %struct.slot** %9, align 8
  %76 = getelementptr inbounds %struct.slot, %struct.slot* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PSWITCH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %83 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %84 = load %struct.slot*, %struct.slot** %9, align 8
  %85 = getelementptr inbounds %struct.slot, %struct.slot* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %82, %struct.snd_mixer_oss_slot* %83, i32 %89, i32* %90, i32* %91, i32 0)
  br label %153

93:                                               ; preds = %74
  %94 = load %struct.slot*, %struct.slot** %9, align 8
  %95 = getelementptr inbounds %struct.slot, %struct.slot* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GSWITCH, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %102 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %103 = load %struct.slot*, %struct.slot** %9, align 8
  %104 = getelementptr inbounds %struct.slot, %struct.slot* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %101, %struct.snd_mixer_oss_slot* %102, i32 %108, i32* %109, i32* %110, i32 0)
  br label %152

112:                                              ; preds = %93
  %113 = load %struct.slot*, %struct.slot** %9, align 8
  %114 = getelementptr inbounds %struct.slot, %struct.slot* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PROUTE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %121 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %122 = load %struct.slot*, %struct.slot** %9, align 8
  %123 = getelementptr inbounds %struct.slot, %struct.slot* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %120, %struct.snd_mixer_oss_slot* %121, i32 %127, i32* %128, i32* %129, i32 1)
  br label %151

131:                                              ; preds = %112
  %132 = load %struct.slot*, %struct.slot** %9, align 8
  %133 = getelementptr inbounds %struct.slot, %struct.slot* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GROUTE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %140 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %141 = load %struct.slot*, %struct.slot** %9, align 8
  %142 = getelementptr inbounds %struct.slot, %struct.slot* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %139, %struct.snd_mixer_oss_slot* %140, i32 %146, i32* %147, i32* %148, i32 1)
  br label %150

150:                                              ; preds = %138, %131
  br label %151

151:                                              ; preds = %150, %119
  br label %152

152:                                              ; preds = %151, %100
  br label %153

153:                                              ; preds = %152, %81
  ret i32 0
}

declare dso_local i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*) #1

declare dso_local i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
