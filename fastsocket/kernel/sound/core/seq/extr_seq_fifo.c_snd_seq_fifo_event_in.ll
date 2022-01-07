; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_event_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_event_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i32, i32, i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell*, i32, i32 }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.snd_seq_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_fifo_event_in(%struct.snd_seq_fifo* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_fifo*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca %struct.snd_seq_event_cell*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  %9 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %10 = icmp ne %struct.snd_seq_fifo* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %20 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %19, i32 0, i32 0
  %21 = call i32 @snd_use_lock_use(i32* %20)
  %22 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %23 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %26 = call i32 @snd_seq_event_dup(i32 %24, %struct.snd_seq_event* %25, %struct.snd_seq_event_cell** %6, i32 1, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %36 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %35, i32 0, i32 6
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %40 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %39, i32 0, i32 0
  %41 = call i32 @snd_use_lock_free(i32* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %91

43:                                               ; preds = %18
  %44 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %44, i32 0, i32 2
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %49 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %48, i32 0, i32 5
  %50 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %49, align 8
  %51 = icmp ne %struct.snd_seq_event_cell* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %54 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %55 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %54, i32 0, i32 5
  %56 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %55, align 8
  %57 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %56, i32 0, i32 0
  store %struct.snd_seq_event_cell* %53, %struct.snd_seq_event_cell** %57, align 8
  br label %58

58:                                               ; preds = %52, %43
  %59 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %60 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %61 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %60, i32 0, i32 5
  store %struct.snd_seq_event_cell* %59, %struct.snd_seq_event_cell** %61, align 8
  %62 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %63 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %62, i32 0, i32 4
  %64 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %63, align 8
  %65 = icmp eq %struct.snd_seq_event_cell* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %68 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %69 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %68, i32 0, i32 4
  store %struct.snd_seq_event_cell* %67, %struct.snd_seq_event_cell** %69, align 8
  br label %70

70:                                               ; preds = %66, %58
  %71 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %72 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %76 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %75, i32 0, i32 2
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %80 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %79, i32 0, i32 1
  %81 = call i64 @waitqueue_active(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %85 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %84, i32 0, i32 1
  %86 = call i32 @wake_up(i32* %85)
  br label %87

87:                                               ; preds = %83, %70
  %88 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %89 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %88, i32 0, i32 0
  %90 = call i32 @snd_use_lock_free(i32* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %38, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_use_lock_use(i32*) #1

declare dso_local i32 @snd_seq_event_dup(i32, %struct.snd_seq_event*, %struct.snd_seq_event_cell**, i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
