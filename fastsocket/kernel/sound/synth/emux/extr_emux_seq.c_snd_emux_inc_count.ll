; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_seq.c_snd_emux_inc_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_seq.c_snd_emux_inc_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_inc_count(%struct.snd_emux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %3, align 8
  %4 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %5 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %9 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @try_module_get(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @try_module_get(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %25 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @module_put(i32 %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
