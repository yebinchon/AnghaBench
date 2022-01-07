; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_free_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_free_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32 }
%struct.snd_trident_voice = type { void (%struct.snd_trident_voice*)*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_trident_free_voice(%struct.snd_trident* %0, %struct.snd_trident_voice* %1) #0 {
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_trident_voice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (%struct.snd_trident_voice*)*, align 8
  %7 = alloca i8*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  store %struct.snd_trident_voice* %1, %struct.snd_trident_voice** %4, align 8
  %8 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %9 = icmp eq %struct.snd_trident_voice* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %12 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %11, i32 0, i32 9
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %89

16:                                               ; preds = %10
  %17 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %18 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %19 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %22 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snd_trident_clear_voices(%struct.snd_trident* %17, i32 %20, i32 %23)
  %25 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %26 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %30 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %29, i32 0, i32 0
  %31 = load void (%struct.snd_trident_voice*)*, void (%struct.snd_trident_voice*)** %30, align 8
  store void (%struct.snd_trident_voice*)* %31, void (%struct.snd_trident_voice*)** %6, align 8
  %32 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %33 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %32, i32 0, i32 11
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %7, align 8
  %36 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %37 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %36, i32 0, i32 0
  store void (%struct.snd_trident_voice*)* null, void (%struct.snd_trident_voice*)** %37, align 8
  %38 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %39 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %38, i32 0, i32 11
  store i32* null, i32** %39, align 8
  %40 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %41 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %16
  %45 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %46 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %47 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snd_trident_free_pcm_channel(%struct.snd_trident* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %16
  %51 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %52 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %57 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %58 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snd_trident_free_synth_channel(%struct.snd_trident* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %63 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %65 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %64, i32 0, i32 7
  store i64 0, i64* %65, align 8
  %66 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %67 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %69 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %71 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %73 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %75 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %77 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %79 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %81 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %80, i32 0, i32 0
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load void (%struct.snd_trident_voice*)*, void (%struct.snd_trident_voice*)** %6, align 8
  %85 = icmp ne void (%struct.snd_trident_voice*)* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %61
  %87 = load void (%struct.snd_trident_voice*)*, void (%struct.snd_trident_voice*)** %6, align 8
  %88 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  call void %87(%struct.snd_trident_voice* %88)
  br label %89

89:                                               ; preds = %15, %86, %61
  ret void
}

declare dso_local i32 @snd_trident_clear_voices(%struct.snd_trident*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_trident_free_pcm_channel(%struct.snd_trident*, i32) #1

declare dso_local i32 @snd_trident_free_synth_channel(%struct.snd_trident*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
