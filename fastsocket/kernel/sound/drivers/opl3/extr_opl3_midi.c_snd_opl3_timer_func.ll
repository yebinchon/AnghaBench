; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i32, i64, %struct.TYPE_2__, i32, %struct.snd_opl3_voice* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_opl3_voice = type { i64, i64, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_opl3_voice*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.snd_opl3*
  store %struct.snd_opl3* %9, %struct.snd_opl3** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %11 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %10, i32 0, i32 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %56, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %17 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %14
  %21 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %22 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %21, i32 0, i32 5
  %23 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %23, i64 %25
  store %struct.snd_opl3_voice* %26, %struct.snd_opl3_voice** %7, align 8
  %27 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %28 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %20
  %32 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %33 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %38 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %44 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %45 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %48 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_opl3_note_off_unsafe(%struct.snd_opl3* %43, i32 %46, i32 0, i32 %49)
  br label %54

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %31, %20
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %14

59:                                               ; preds = %14
  %60 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %61 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %60, i32 0, i32 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %65 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %64, i32 0, i32 1
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load i64, i64* @jiffies, align 8
  %72 = add nsw i64 %71, 1
  %73 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %74 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %77 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %76, i32 0, i32 3
  %78 = call i32 @add_timer(%struct.TYPE_2__* %77)
  br label %82

79:                                               ; preds = %59
  %80 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %81 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %84 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %83, i32 0, i32 1
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_opl3_note_off_unsafe(%struct.snd_opl3*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
