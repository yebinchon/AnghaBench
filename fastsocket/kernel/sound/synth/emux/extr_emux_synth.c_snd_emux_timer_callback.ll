; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_timer_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.snd_emux_voice* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.snd_emux_voice*)* }
%struct.snd_emux_voice = type { i64, i64 }

@SNDRV_EMUX_ST_PENDING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SNDRV_EMUX_ST_RELEASED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_timer_callback(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_emux*, align 8
  %4 = alloca %struct.snd_emux_voice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.snd_emux*
  store %struct.snd_emux* %9, %struct.snd_emux** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %11 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %10, i32 0, i32 2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %22 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %21, i32 0, i32 5
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i64 %25
  store %struct.snd_emux_voice* %26, %struct.snd_emux_voice** %4, align 8
  %27 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %28 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_EMUX_ST_PENDING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %20
  %33 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %34 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %43 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %44, align 8
  %46 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %47 = call i32 %45(%struct.snd_emux_voice* %46)
  %48 = load i64, i64* @SNDRV_EMUX_ST_RELEASED, align 8
  %49 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %50 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %38
  br label %52

52:                                               ; preds = %51, %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i64, i64* @jiffies, align 8
  %61 = add nsw i64 %60, 1
  %62 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %63 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %66 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %65, i32 0, i32 3
  %67 = call i32 @add_timer(%struct.TYPE_4__* %66)
  %68 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %69 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %73

70:                                               ; preds = %56
  %71 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %72 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %74, i32 0, i32 2
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
