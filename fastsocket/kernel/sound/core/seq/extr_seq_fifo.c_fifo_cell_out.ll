; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_fifo_cell_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_fifo_cell_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.snd_seq_fifo = type { i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_seq_event_cell* (%struct.snd_seq_fifo*)* @fifo_cell_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_seq_event_cell* @fifo_cell_out(%struct.snd_seq_fifo* %0) #0 {
  %2 = alloca %struct.snd_seq_fifo*, align 8
  %3 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %2, align 8
  %4 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  %5 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %4, i32 0, i32 2
  %6 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  store %struct.snd_seq_event_cell* %6, %struct.snd_seq_event_cell** %3, align 8
  %7 = icmp ne %struct.snd_seq_event_cell* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %3, align 8
  %10 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %9, i32 0, i32 0
  %11 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %12 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  %13 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %12, i32 0, i32 2
  store %struct.snd_seq_event_cell* %11, %struct.snd_seq_event_cell** %13, align 8
  %14 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  %15 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %14, i32 0, i32 1
  %16 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %15, align 8
  %17 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %3, align 8
  %18 = icmp eq %struct.snd_seq_event_cell* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  %21 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %20, i32 0, i32 1
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %21, align 8
  br label %22

22:                                               ; preds = %19, %8
  %23 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %3, align 8
  %24 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %23, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %24, align 8
  %25 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  %26 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %3, align 8
  ret %struct.snd_seq_event_cell* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
