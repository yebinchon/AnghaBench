; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_transmit_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_transmit_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32, i32, i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [51 x i8] c"snd_rawmidi_transmit_ack: output is not active!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %9, align 8
  store %struct.snd_rawmidi_runtime* %10, %struct.snd_rawmidi_runtime** %7, align 8
  %11 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @snd_printd(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %20, i32 0, i32 3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @snd_BUG_ON(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = srem i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %19
  %60 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %66 = call i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %59
  %69 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %70 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %69, i32 0, i32 4
  %71 = call i32 @wake_up(i32* %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %19
  %74 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %75 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %74, i32 0, i32 3
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
