; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_alloc_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_alloc_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_voice = type { i32, i32, i64, i32 }
%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.snd_gus_voice* }

@SNDRV_GF1_VOICE_TYPE_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_gus_voice* @snd_gf1_alloc_voice(%struct.snd_gus_card* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_gus_voice*, align 8
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_gus_voice*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %14 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %13, i32 0, i32 0
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SNDRV_GF1_VOICE_TYPE_PCM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %22 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %26 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 0
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  store %struct.snd_gus_voice* null, %struct.snd_gus_voice** %5, align 8
  br label %118

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %42 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %44, i64 %46
  store %struct.snd_gus_voice* %47, %struct.snd_gus_voice** %10, align 8
  %48 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %49 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %40
  %53 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %54 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @snd_gf1_alloc_voice_use(%struct.snd_gus_card* %53, %struct.snd_gus_voice* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %60 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %59, i32 0, i32 0
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  store %struct.snd_gus_voice* %63, %struct.snd_gus_voice** %5, align 8
  br label %118

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %37

68:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %110, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 32
  br i1 %71, label %72, label %113

72:                                               ; preds = %69
  %73 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %74 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %76, i64 %78
  store %struct.snd_gus_voice* %79, %struct.snd_gus_voice** %10, align 8
  %80 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %81 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %72
  %85 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %86 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %84
  %90 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %91 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %92 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %95 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @snd_gf1_clear_voices(%struct.snd_gus_card* %90, i32 %93, i32 %96)
  %98 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %99 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @snd_gf1_alloc_voice_use(%struct.snd_gus_card* %98, %struct.snd_gus_voice* %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %105 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %104, i32 0, i32 0
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %10, align 8
  store %struct.snd_gus_voice* %108, %struct.snd_gus_voice** %5, align 8
  br label %118

109:                                              ; preds = %84, %72
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %69

113:                                              ; preds = %69
  %114 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %115 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %114, i32 0, i32 0
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  store %struct.snd_gus_voice* null, %struct.snd_gus_voice** %5, align 8
  br label %118

118:                                              ; preds = %113, %89, %52, %30
  %119 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %5, align 8
  ret %struct.snd_gus_voice* %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_gf1_alloc_voice_use(%struct.snd_gus_card*, %struct.snd_gus_voice*, i32, i32, i32) #1

declare dso_local i32 @snd_gf1_clear_voices(%struct.snd_gus_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
