; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_update_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_update_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { %struct.snd_emux* }
%struct.snd_emux = type { i32, i32, %struct.snd_emux_voice*, %struct.TYPE_2__ }
%struct.snd_emux_voice = type { %struct.snd_emux_port* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_update_port(%struct.snd_emux_port* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emux_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emux*, align 8
  %6 = alloca %struct.snd_emux_voice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %68

12:                                               ; preds = %2
  %13 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %14 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %13, i32 0, i32 0
  %15 = load %struct.snd_emux*, %struct.snd_emux** %14, align 8
  store %struct.snd_emux* %15, %struct.snd_emux** %5, align 8
  %16 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %17 = icmp ne %struct.snd_emux* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi i1 [ true, %12 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %68

31:                                               ; preds = %25
  %32 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %32, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %60, %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %44 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %43, i32 0, i32 2
  %45 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %45, i64 %47
  store %struct.snd_emux_voice* %48, %struct.snd_emux_voice** %6, align 8
  %49 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %6, align 8
  %50 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %49, i32 0, i32 0
  %51 = load %struct.snd_emux_port*, %struct.snd_emux_port** %50, align 8
  %52 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %53 = icmp eq %struct.snd_emux_port* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %56 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @update_voice(%struct.snd_emux* %55, %struct.snd_emux_voice* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %64, i32 0, i32 1
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %30, %11
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_voice(%struct.snd_emux*, %struct.snd_emux_voice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
