; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_remove_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_remove_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_prioq = type { i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_seq_remove_events = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_prioq_remove_events(%struct.snd_seq_prioq* %0, i32 %1, %struct.snd_seq_remove_events* %2) #0 {
  %4 = alloca %struct.snd_seq_prioq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_remove_events*, align 8
  %7 = alloca %struct.snd_seq_event_cell*, align 8
  %8 = alloca %struct.snd_seq_event_cell*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_seq_event_cell*, align 8
  %11 = alloca %struct.snd_seq_event_cell*, align 8
  %12 = alloca %struct.snd_seq_event_cell*, align 8
  %13 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_prioq* %0, %struct.snd_seq_prioq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_seq_remove_events* %2, %struct.snd_seq_remove_events** %6, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %10, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %11, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %12, align 8
  %14 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %19 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %18, i32 0, i32 3
  %20 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %19, align 8
  store %struct.snd_seq_event_cell* %20, %struct.snd_seq_event_cell** %7, align 8
  br label %21

21:                                               ; preds = %90, %3
  %22 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %23 = icmp ne %struct.snd_seq_event_cell* %22, null
  br i1 %23, label %24, label %92

24:                                               ; preds = %21
  %25 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %26 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %25, i32 0, i32 0
  %27 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %26, align 8
  store %struct.snd_seq_event_cell* %27, %struct.snd_seq_event_cell** %8, align 8
  %28 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %29 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %24
  %36 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %6, align 8
  %37 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %38 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %37, i32 0, i32 1
  %39 = call i64 @prioq_remove_match(%struct.snd_seq_remove_events* %36, %struct.TYPE_4__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %35
  %42 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %43 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %44 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %43, i32 0, i32 3
  %45 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %44, align 8
  %46 = icmp eq %struct.snd_seq_event_cell* %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %49 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %48, i32 0, i32 0
  %50 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %49, align 8
  %51 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %52 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %51, i32 0, i32 3
  store %struct.snd_seq_event_cell* %50, %struct.snd_seq_event_cell** %52, align 8
  br label %59

53:                                               ; preds = %41
  %54 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %55 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %54, i32 0, i32 0
  %56 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %55, align 8
  %57 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %58 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %57, i32 0, i32 0
  store %struct.snd_seq_event_cell* %56, %struct.snd_seq_event_cell** %58, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %61 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %62 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %61, i32 0, i32 2
  %63 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %62, align 8
  %64 = icmp eq %struct.snd_seq_event_cell* %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %67 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %66, i32 0, i32 0
  %68 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %67, align 8
  %69 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %70 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %69, i32 0, i32 2
  store %struct.snd_seq_event_cell* %68, %struct.snd_seq_event_cell** %70, align 8
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %73 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %77 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %76, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %77, align 8
  %78 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %79 = icmp eq %struct.snd_seq_event_cell* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  store %struct.snd_seq_event_cell* %81, %struct.snd_seq_event_cell** %11, align 8
  br label %86

82:                                               ; preds = %71
  %83 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %84 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %12, align 8
  %85 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %84, i32 0, i32 0
  store %struct.snd_seq_event_cell* %83, %struct.snd_seq_event_cell** %85, align 8
  br label %86

86:                                               ; preds = %82, %80
  %87 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  store %struct.snd_seq_event_cell* %87, %struct.snd_seq_event_cell** %12, align 8
  br label %90

88:                                               ; preds = %35, %24
  %89 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  store %struct.snd_seq_event_cell* %89, %struct.snd_seq_event_cell** %10, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  store %struct.snd_seq_event_cell* %91, %struct.snd_seq_event_cell** %7, align 8
  br label %21

92:                                               ; preds = %21
  %93 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %94 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %93, i32 0, i32 0
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %100, %92
  %98 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %99 = icmp ne %struct.snd_seq_event_cell* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %102 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %101, i32 0, i32 0
  %103 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %102, align 8
  store %struct.snd_seq_event_cell* %103, %struct.snd_seq_event_cell** %13, align 8
  %104 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %105 = call i32 @snd_seq_cell_free(%struct.snd_seq_event_cell* %104)
  %106 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %13, align 8
  store %struct.snd_seq_event_cell* %106, %struct.snd_seq_event_cell** %11, align 8
  br label %97

107:                                              ; preds = %97
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @prioq_remove_match(%struct.snd_seq_remove_events*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_seq_cell_free(%struct.snd_seq_event_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
