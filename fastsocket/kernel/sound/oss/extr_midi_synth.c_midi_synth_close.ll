; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32, i32)* }

@synth_devs = common dso_local global %struct.TYPE_3__** null, align 8
@midi_devs = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @midi_synth_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %4, i64 %6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @leave_sysex(i32 %11)
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 %19(i32 %20, i32 254)
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 %28(i32 %29)
  ret void
}

declare dso_local i32 @leave_sysex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
