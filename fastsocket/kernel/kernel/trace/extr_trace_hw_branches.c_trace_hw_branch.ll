; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_hw_branches.c_trace_hw_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_hw_branches.c_trace_hw_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_3__**, %struct.ring_buffer* }
%struct.TYPE_3__ = type { i32 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.hw_branch_entry = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@event_hw_branch = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@hw_branch_trace = common dso_local global %struct.trace_array* null, align 8
@trace_hw_branches_enabled = common dso_local global i32 0, align 4
@TRACE_HW_BRANCHES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_hw_branch(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ftrace_event_call*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.hw_branch_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ftrace_event_call* @event_hw_branch, %struct.ftrace_event_call** %5, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** @hw_branch_trace, align 8
  store %struct.trace_array* %12, %struct.trace_array** %6, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %14 = icmp ne %struct.trace_array* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %93

20:                                               ; preds = %2
  %21 = load i32, i32* @trace_hw_branches_enabled, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %93

28:                                               ; preds = %20
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = call i32 (...) @raw_smp_processor_id()
  store i32 %31, i32* %11, align 4
  %32 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %33 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @atomic_inc_return(i32* %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %81

43:                                               ; preds = %28
  %44 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %45 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %44, i32 0, i32 1
  %46 = load %struct.ring_buffer*, %struct.ring_buffer** %45, align 8
  store %struct.ring_buffer* %46, %struct.ring_buffer** %8, align 8
  %47 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %48 = load i32, i32* @TRACE_HW_BRANCHES, align 4
  %49 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %47, i32 %48, i32 24, i32 0, i32 0)
  store %struct.ring_buffer_event* %49, %struct.ring_buffer_event** %7, align 8
  %50 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %51 = icmp ne %struct.ring_buffer_event* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %81

53:                                               ; preds = %43
  %54 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %55 = call %struct.hw_branch_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %54)
  store %struct.hw_branch_entry* %55, %struct.hw_branch_entry** %9, align 8
  %56 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %9, align 8
  %57 = getelementptr inbounds %struct.hw_branch_entry, %struct.hw_branch_entry* %56, i32 0, i32 2
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @tracing_generic_entry_update(%struct.TYPE_4__* %57, i32 0, i8* %58)
  %60 = load i32, i32* @TRACE_HW_BRANCHES, align 4
  %61 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %9, align 8
  %62 = getelementptr inbounds %struct.hw_branch_entry, %struct.hw_branch_entry* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %9, align 8
  %66 = getelementptr inbounds %struct.hw_branch_entry, %struct.hw_branch_entry* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %9, align 8
  %69 = getelementptr inbounds %struct.hw_branch_entry, %struct.hw_branch_entry* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %5, align 8
  %71 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %9, align 8
  %72 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %73 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %74 = call i32 @filter_check_discard(%struct.ftrace_event_call* %70, %struct.hw_branch_entry* %71, %struct.ring_buffer* %72, %struct.ring_buffer_event* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %53
  %77 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %78 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %79 = call i32 @trace_buffer_unlock_commit(%struct.ring_buffer* %77, %struct.ring_buffer_event* %78, i32 0, i32 0)
  br label %80

80:                                               ; preds = %76, %53
  br label %81

81:                                               ; preds = %80, %52, %42
  %82 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %83 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %84, i64 %86
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @atomic_dec(i32* %89)
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @local_irq_restore(i64 %91)
  br label %93

93:                                               ; preds = %81, %27, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i32, i32) #1

declare dso_local %struct.hw_branch_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @tracing_generic_entry_update(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.hw_branch_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
