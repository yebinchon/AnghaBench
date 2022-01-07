; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_cell_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_cell_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.snd_seq_prioq = type { i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }

@.str = private unnamed_addr constant [54 x i8] c"oops: snd_seq_prioq_cell_in() called with NULL prioq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_event_cell* @snd_seq_prioq_cell_out(%struct.snd_seq_prioq* %0) #0 {
  %2 = alloca %struct.snd_seq_event_cell*, align 8
  %3 = alloca %struct.snd_seq_prioq*, align 8
  %4 = alloca %struct.snd_seq_event_cell*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_seq_prioq* %0, %struct.snd_seq_prioq** %3, align 8
  %6 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %7 = icmp eq %struct.snd_seq_prioq* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @snd_printd(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %12 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %15, i32 0, i32 3
  %17 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %16, align 8
  store %struct.snd_seq_event_cell* %17, %struct.snd_seq_event_cell** %4, align 8
  %18 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %19 = icmp ne %struct.snd_seq_event_cell* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %10
  %21 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %22 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %21, i32 0, i32 0
  %23 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %22, align 8
  %24 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %25 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %24, i32 0, i32 3
  store %struct.snd_seq_event_cell* %23, %struct.snd_seq_event_cell** %25, align 8
  %26 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %27 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %26, i32 0, i32 2
  %28 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %27, align 8
  %29 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %30 = icmp eq %struct.snd_seq_event_cell* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %33 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %32, i32 0, i32 2
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %33, align 8
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %36 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %35, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %36, align 8
  %37 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %38 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %10
  %42 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %3, align 8
  %43 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  store %struct.snd_seq_event_cell* %46, %struct.snd_seq_event_cell** %2, align 8
  br label %47

47:                                               ; preds = %41, %8
  %48 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  ret %struct.snd_seq_event_cell* %48
}

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
