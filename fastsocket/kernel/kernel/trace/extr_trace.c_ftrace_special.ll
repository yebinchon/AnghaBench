; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_ftrace_special.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_ftrace_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.trace_array_cpu** }
%struct.trace_array_cpu = type { i32 }

@global_trace = common dso_local global %struct.trace_array zeroinitializer, align 8
@tracing_disabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace_special(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca %struct.trace_array_cpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.trace_array* @global_trace, %struct.trace_array** %7, align 8
  %12 = load i64, i64* @tracing_disabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %47

15:                                               ; preds = %3
  %16 = call i32 (...) @preempt_count()
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = call i32 (...) @raw_smp_processor_id()
  store i32 %19, i32* %10, align 4
  %20 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %21 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %20, i32 0, i32 0
  %22 = load %struct.trace_array_cpu**, %struct.trace_array_cpu*** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.trace_array_cpu*, %struct.trace_array_cpu** %22, i64 %24
  %26 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %25, align 8
  store %struct.trace_array_cpu* %26, %struct.trace_array_cpu** %8, align 8
  %27 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %8, align 8
  %28 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc_return(i32* %28)
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %15
  %35 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ftrace_trace_special(%struct.trace_array* %35, i64 %36, i64 %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %15
  %42 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %8, align 8
  %43 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %42, i32 0, i32 0
  %44 = call i32 @atomic_dec(i32* %43)
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  br label %47

47:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ftrace_trace_special(%struct.trace_array*, i64, i64, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
