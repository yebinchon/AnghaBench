; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_pitch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }
%struct.opl4_voice = type { i32, i32, i64, %struct.TYPE_2__*, %struct.snd_midi_channel* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_midi_channel = type { i32, i32, i32, i64, i64 }

@snd_opl4_pitch_map = common dso_local global i32* null, align 8
@OPL4_REG_OCTAVE = common dso_local global i64 0, align 8
@OPL4_F_NUMBER_HIGH_MASK = common dso_local global i32 0, align 4
@OPL4_TONE_NUMBER_BIT8 = common dso_local global i32 0, align 4
@OPL4_F_NUMBER_LOW_MASK = common dso_local global i32 0, align 4
@OPL4_REG_F_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_update_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_update_pitch(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  %5 = alloca %struct.snd_midi_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %9 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %10 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %9, i32 0, i32 4
  %11 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %10, align 8
  store %struct.snd_midi_channel* %11, %struct.snd_midi_channel** %5, align 8
  %12 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %13 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %19 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 60, %16 ], [ %20, %17 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 60
  %25 = shl i32 %24, 7
  %26 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %27 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %25, %30
  %32 = sdiv i32 %31, 100
  %33 = add nsw i32 %32, 7680
  store i32 %33, i32* %7, align 4
  %34 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %35 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %44 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %21
  %48 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %49 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %47, %21
  %56 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %57 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 7
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %63 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %66 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = sdiv i32 %68, 8192
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %80

75:                                               ; preds = %55
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 24576
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 24575, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 1536
  %83 = sub nsw i32 %82, 8
  store i32 %83, i32* %8, align 4
  %84 = load i32*, i32** @snd_opl4_pitch_map, align 8
  %85 = load i32, i32* %7, align 4
  %86 = srem i32 %85, 1536
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %91 = load i64, i64* @OPL4_REG_OCTAVE, align 8
  %92 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %93 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* %8, align 4
  %97 = shl i32 %96, 4
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 7
  %100 = load i32, i32* @OPL4_F_NUMBER_HIGH_MASK, align 4
  %101 = and i32 %99, %100
  %102 = or i32 %97, %101
  %103 = call i32 @snd_opl4_write(%struct.snd_opl4* %90, i64 %95, i32 %102)
  %104 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %105 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @OPL4_TONE_NUMBER_BIT8, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 1
  %111 = load i32, i32* @OPL4_F_NUMBER_LOW_MASK, align 4
  %112 = and i32 %110, %111
  %113 = or i32 %108, %112
  %114 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %115 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %117 = load i64, i64* @OPL4_REG_F_NUMBER, align 8
  %118 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %119 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %123 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_opl4_write(%struct.snd_opl4* %116, i64 %121, i32 %124)
  ret void
}

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
