; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_usage_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_usage_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.held_lock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@debug_locks_silent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"\0A=================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[ INFO: inconsistent lock state ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"---------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"inconsistent {%s} -> {%s} usage.\0A\00", align 1
@usage_str = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"%s/%d [HC%u[%lu]:SC%u[%lu]:HE%u:SE%u] takes:\0A\00", align 1
@HARDIRQ_SHIFT = common dso_local global i32 0, align 4
@SOFTIRQ_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"{%s} state was registered at:\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0Aother info that might help us debug this:\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0Astack backtrace:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.held_lock*, i32, i32)* @print_usage_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_usage_bug(%struct.task_struct* %0, %struct.held_lock* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.held_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.held_lock* %1, %struct.held_lock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = call i32 (...) @debug_locks_off_graph_unlock()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i64, i64* @debug_locks_silent, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  store i32 0, i32* %5, align 4
  br label %74

16:                                               ; preds = %12
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (...) @print_kernel_version()
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** @usage_str, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @usage_str, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = call i32 @task_pid_nr(%struct.task_struct* %35)
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = call i32 @trace_hardirq_context(%struct.task_struct* %37)
  %39 = call i32 (...) @hardirq_count()
  %40 = load i32, i32* @HARDIRQ_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %43 = call i32 @trace_softirq_context(%struct.task_struct* %42)
  %44 = call i32 (...) @softirq_count()
  %45 = load i32, i32* @SOFTIRQ_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %48 = call i32 @trace_hardirqs_enabled(%struct.task_struct* %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %50 = call i32 @trace_softirqs_enabled(%struct.task_struct* %49)
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %41, i32 %43, i32 %46, i32 %48, i32 %50)
  %52 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %53 = call i32 @print_lock(%struct.held_lock* %52)
  %54 = load i32*, i32** @usage_str, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %61 = call %struct.TYPE_2__* @hlock_class(%struct.held_lock* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %63, %64
  %66 = call i32 @print_stack_trace(i32 %65, i32 1)
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = call i32 @print_irqtrace_events(%struct.task_struct* %67)
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %71 = call i32 @lockdep_print_held_locks(%struct.task_struct* %70)
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %73 = call i32 (...) @dump_stack()
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %16, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @debug_locks_off_graph_unlock(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @print_kernel_version(...) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i32 @trace_hardirq_context(%struct.task_struct*) #1

declare dso_local i32 @hardirq_count(...) #1

declare dso_local i32 @trace_softirq_context(%struct.task_struct*) #1

declare dso_local i32 @softirq_count(...) #1

declare dso_local i32 @trace_hardirqs_enabled(%struct.task_struct*) #1

declare dso_local i32 @trace_softirqs_enabled(%struct.task_struct*) #1

declare dso_local i32 @print_lock(%struct.held_lock*) #1

declare dso_local i32 @print_stack_trace(i32, i32) #1

declare dso_local %struct.TYPE_2__* @hlock_class(%struct.held_lock*) #1

declare dso_local i32 @print_irqtrace_events(%struct.task_struct*) #1

declare dso_local i32 @lockdep_print_held_locks(%struct.task_struct*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
