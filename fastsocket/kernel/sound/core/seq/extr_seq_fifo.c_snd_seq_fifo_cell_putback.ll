; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_cell_putback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_cell_putback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i32, i32, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_fifo_cell_putback(%struct.snd_seq_fifo* %0, %struct.snd_seq_event_cell* %1) #0 {
  %3 = alloca %struct.snd_seq_fifo*, align 8
  %4 = alloca %struct.snd_seq_event_cell*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %3, align 8
  store %struct.snd_seq_event_cell* %1, %struct.snd_seq_event_cell** %4, align 8
  %6 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %7 = icmp ne %struct.snd_seq_event_cell* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %14 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %13, i32 0, i32 2
  %15 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %14, align 8
  %16 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %17 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %16, i32 0, i32 0
  store %struct.snd_seq_event_cell* %15, %struct.snd_seq_event_cell** %17, align 8
  %18 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %19 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %20 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %19, i32 0, i32 2
  store %struct.snd_seq_event_cell* %18, %struct.snd_seq_event_cell** %20, align 8
  %21 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %22 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %3, align 8
  %26 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
