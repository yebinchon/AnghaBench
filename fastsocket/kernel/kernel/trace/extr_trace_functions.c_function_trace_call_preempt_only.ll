; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions.c_function_trace_call_preempt_only.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions.c_function_trace_call_preempt_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.trace_array_cpu** }
%struct.trace_array_cpu = type { i32 }

@func_trace = common dso_local global %struct.trace_array* null, align 8
@ftrace_function_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @function_trace_call_preempt_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @function_trace_call_preempt_only(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.trace_array_cpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** @func_trace, align 8
  store %struct.trace_array* %12, %struct.trace_array** %5, align 8
  %13 = load i32, i32* @ftrace_function_enabled, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %54

20:                                               ; preds = %2
  %21 = call i32 (...) @preempt_count()
  store i32 %21, i32* %11, align 4
  %22 = call i32 (...) @ftrace_preempt_disable()
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @local_save_flags(i64 %23)
  %25 = call i32 (...) @raw_smp_processor_id()
  store i32 %25, i32* %9, align 4
  %26 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %27 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %26, i32 0, i32 0
  %28 = load %struct.trace_array_cpu**, %struct.trace_array_cpu*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.trace_array_cpu*, %struct.trace_array_cpu** %28, i64 %30
  %32 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %31, align 8
  store %struct.trace_array_cpu* %32, %struct.trace_array_cpu** %6, align 8
  %33 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %6, align 8
  %34 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %33, i32 0, i32 0
  %35 = call i64 @atomic_inc_return(i32* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @trace_function(%struct.trace_array* %42, i64 %43, i64 %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %20
  %49 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %6, align 8
  %50 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %49, i32 0, i32 0
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ftrace_preempt_enable(i32 %52)
  br label %54

54:                                               ; preds = %48, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @ftrace_preempt_disable(...) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @trace_function(%struct.trace_array*, i64, i64, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ftrace_preempt_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
