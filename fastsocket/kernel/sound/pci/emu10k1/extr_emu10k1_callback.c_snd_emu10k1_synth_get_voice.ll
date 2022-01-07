; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_callback.c_snd_emu10k1_synth_get_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_callback.c_snd_emu10k1_synth_get_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.snd_emux* }
%struct.snd_emux = type { i32, %struct.snd_emux_voice* }
%struct.snd_emux_voice = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.best_voice = type { i64 }

@V_END = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_OFF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_synth_get_voice(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_voice*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  %12 = load i32, i32* @V_END, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.best_voice, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 0
  %18 = load %struct.snd_emux*, %struct.snd_emux** %17, align 8
  store %struct.snd_emux* %18, %struct.snd_emux** %4, align 8
  %19 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %20 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %25 = call i32 @lookup_voices(%struct.snd_emux* %23, %struct.snd_emu10k1* %24, %struct.best_voice* %15, i32 1)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %70, %1
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @V_END, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %15, i64 %32
  %34 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %30
  %38 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %39 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %38, i32 0, i32 1
  %40 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %15, i64 %42
  %44 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %40, i64 %45
  store %struct.snd_emux_voice* %46, %struct.snd_emux_voice** %5, align 8
  %47 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %70

52:                                               ; preds = %37
  %53 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %60 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load i32, i32* @SNDRV_EMUX_ST_OFF, align 4
  %62 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %63 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %65 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %64, i32 0, i32 0
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %80

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %75 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %73, %52
  %81 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @lookup_voices(%struct.snd_emux*, %struct.snd_emu10k1*, %struct.best_voice*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
