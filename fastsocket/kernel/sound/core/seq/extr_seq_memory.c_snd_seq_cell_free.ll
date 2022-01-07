; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_cell_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_cell_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, %struct.TYPE_6__, %struct.snd_seq_pool* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.snd_seq_event_cell* }
%struct.snd_seq_pool = type { i32, i32, %struct.snd_seq_event_cell* }

@SNDRV_SEQ_EXT_CHAINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_cell_free(%struct.snd_seq_event_cell* %0) #0 {
  %2 = alloca %struct.snd_seq_event_cell*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_seq_pool*, align 8
  %5 = alloca %struct.snd_seq_event_cell*, align 8
  %6 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_event_cell* %0, %struct.snd_seq_event_cell** %2, align 8
  %7 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  %8 = icmp ne %struct.snd_seq_event_cell* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %92

14:                                               ; preds = %1
  %15 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  %16 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %15, i32 0, i32 2
  %17 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %16, align 8
  store %struct.snd_seq_pool* %17, %struct.snd_seq_pool** %4, align 8
  %18 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %19 = icmp ne %struct.snd_seq_pool* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %92

25:                                               ; preds = %14
  %26 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %27 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %31 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  %32 = call i32 @free_cell(%struct.snd_seq_pool* %30, %struct.snd_seq_event_cell* %31)
  %33 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  %34 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %33, i32 0, i32 1
  %35 = call i64 @snd_seq_ev_is_variable(%struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %25
  %38 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  %39 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SNDRV_SEQ_EXT_CHAINED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %37
  %48 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %2, align 8
  %49 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %52, align 8
  store %struct.snd_seq_event_cell* %53, %struct.snd_seq_event_cell** %5, align 8
  br label %54

54:                                               ; preds = %69, %47
  %55 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %56 = icmp ne %struct.snd_seq_event_cell* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %59 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %58, i32 0, i32 0
  %60 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %59, align 8
  store %struct.snd_seq_event_cell* %60, %struct.snd_seq_event_cell** %6, align 8
  %61 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %62 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %61, i32 0, i32 2
  %63 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %62, align 8
  %64 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %65 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %64, i32 0, i32 0
  store %struct.snd_seq_event_cell* %63, %struct.snd_seq_event_cell** %65, align 8
  %66 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %67 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %68 = call i32 @free_cell(%struct.snd_seq_pool* %66, %struct.snd_seq_event_cell* %67)
  br label %69

69:                                               ; preds = %57
  %70 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  store %struct.snd_seq_event_cell* %70, %struct.snd_seq_event_cell** %5, align 8
  br label %54

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %25
  %74 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %75 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %74, i32 0, i32 1
  %76 = call i64 @waitqueue_active(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %80 = call i64 @snd_seq_output_ok(%struct.snd_seq_pool* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %84 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %83, i32 0, i32 1
  %85 = call i32 @wake_up(i32* %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %89 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %88, i32 0, i32 0
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %24, %13
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_cell(%struct.snd_seq_pool*, %struct.snd_seq_event_cell*) #1

declare dso_local i64 @snd_seq_ev_is_variable(%struct.TYPE_6__*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i64 @snd_seq_output_ok(%struct.snd_seq_pool*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
