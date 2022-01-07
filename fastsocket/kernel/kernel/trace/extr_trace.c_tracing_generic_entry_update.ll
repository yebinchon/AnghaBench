; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_generic_entry_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_generic_entry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.trace_entry = type { i32, i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TRACE_FLAG_IRQS_NOSUPPORT = common dso_local global i32 0, align 4
@HARDIRQ_MASK = common dso_local global i32 0, align 4
@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@SOFTIRQ_MASK = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_NEED_RESCHED = common dso_local global i32 0, align 4
@TRACE_FLAG_IRQS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_generic_entry_update(%struct.trace_entry* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.trace_entry* %0, %struct.trace_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 255
  %11 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %12 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  %22 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %23 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %34 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @TRACE_FLAG_IRQS_NOSUPPORT, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HARDIRQ_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %35, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SOFTIRQ_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = or i32 %45, %54
  %56 = call i64 (...) @need_resched()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @TRACE_FLAG_NEED_RESCHED, align 4
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = or i32 %55, %62
  %64 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %65 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  ret void
}

declare dso_local i64 @need_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
