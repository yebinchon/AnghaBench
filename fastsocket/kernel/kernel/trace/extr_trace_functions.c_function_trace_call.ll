; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions.c_function_trace_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions.c_function_trace_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.trace_array_cpu** }
%struct.trace_array_cpu = type { i32 }

@func_trace = common dso_local global %struct.trace_array* null, align 8
@ftrace_function_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @function_trace_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @function_trace_call(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.trace_array_cpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** @func_trace, align 8
  store %struct.trace_array* %11, %struct.trace_array** %5, align 8
  %12 = load i32, i32* @ftrace_function_enabled, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %52

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = call i32 (...) @raw_smp_processor_id()
  store i32 %22, i32* %9, align 4
  %23 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %24 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %23, i32 0, i32 0
  %25 = load %struct.trace_array_cpu**, %struct.trace_array_cpu*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.trace_array_cpu*, %struct.trace_array_cpu** %25, i64 %27
  %29 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %28, align 8
  store %struct.trace_array_cpu* %29, %struct.trace_array_cpu** %6, align 8
  %30 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %6, align 8
  %31 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %30, i32 0, i32 0
  %32 = call i64 @atomic_inc_return(i32* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %19
  %39 = call i32 (...) @preempt_count()
  store i32 %39, i32* %10, align 4
  %40 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @trace_function(%struct.trace_array* %40, i64 %41, i64 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %19
  %47 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %6, align 8
  %48 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %47, i32 0, i32 0
  %49 = call i32 @atomic_dec(i32* %48)
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  br label %52

52:                                               ; preds = %46, %18
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @trace_function(%struct.trace_array*, i64, i64, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
