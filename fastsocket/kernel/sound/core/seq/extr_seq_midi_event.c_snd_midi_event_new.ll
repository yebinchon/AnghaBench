; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_event = type { i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ST_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_midi_event_new(i32 %0, %struct.snd_midi_event** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_midi_event**, align 8
  %6 = alloca %struct.snd_midi_event*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.snd_midi_event** %1, %struct.snd_midi_event*** %5, align 8
  %7 = load %struct.snd_midi_event**, %struct.snd_midi_event*** %5, align 8
  store %struct.snd_midi_event* null, %struct.snd_midi_event** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.snd_midi_event* @kzalloc(i32 24, i32 %8)
  store %struct.snd_midi_event* %9, %struct.snd_midi_event** %6, align 8
  %10 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %11 = icmp eq %struct.snd_midi_event* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %23 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %22, i32 0, i32 4
  store i32* %21, i32** %23, align 8
  %24 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %25 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %30 = call i32 @kfree(%struct.snd_midi_event* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %37 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %39 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %38, i32 0, i32 1
  store i32 255, i32* %39, align 4
  %40 = load i32, i32* @ST_INVALID, align 4
  %41 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %42 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %44 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %47 = load %struct.snd_midi_event**, %struct.snd_midi_event*** %5, align 8
  store %struct.snd_midi_event* %46, %struct.snd_midi_event** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %34, %28, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.snd_midi_event* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_midi_event*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
