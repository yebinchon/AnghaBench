; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_get_return_for_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_get_return_for_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ret_entry = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.trace_iterator = type { i64, %struct.TYPE_6__*, %struct.ring_buffer_iter** }
%struct.TYPE_6__ = type { i32 }
%struct.ring_buffer_iter = type { i32 }
%struct.ftrace_graph_ent_entry = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ring_buffer_event = type { i32 }

@TRACE_GRAPH_RET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ftrace_graph_ret_entry* (%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*)* @get_return_for_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ftrace_graph_ret_entry* @get_return_for_leaf(%struct.trace_iterator* %0, %struct.ftrace_graph_ent_entry* %1) #0 {
  %3 = alloca %struct.ftrace_graph_ret_entry*, align 8
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %6 = alloca %struct.ring_buffer_iter*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ftrace_graph_ret_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ent_entry** %5, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 2
  %11 = load %struct.ring_buffer_iter**, %struct.ring_buffer_iter*** %10, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %11, i64 %14
  %16 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %15, align 8
  store %struct.ring_buffer_iter* %16, %struct.ring_buffer_iter** %6, align 8
  %17 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %6, align 8
  %18 = icmp ne %struct.ring_buffer_iter* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %6, align 8
  %21 = call %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter* %20, i32* null)
  store %struct.ring_buffer_event* %21, %struct.ring_buffer_event** %7, align 8
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %29 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ring_buffer_consume(i32 %27, i64 %30, i32* null)
  %32 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %33 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.ring_buffer_event* @ring_buffer_peek(i32 %36, i64 %39, i32* null)
  store %struct.ring_buffer_event* %40, %struct.ring_buffer_event** %7, align 8
  br label %41

41:                                               ; preds = %22, %19
  %42 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %43 = icmp ne %struct.ring_buffer_event* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store %struct.ftrace_graph_ret_entry* null, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %84

45:                                               ; preds = %41
  %46 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %47 = call %struct.ftrace_graph_ret_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %46)
  store %struct.ftrace_graph_ret_entry* %47, %struct.ftrace_graph_ret_entry** %8, align 8
  %48 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %8, align 8
  %49 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TRACE_GRAPH_RET, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store %struct.ftrace_graph_ret_entry* null, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %84

55:                                               ; preds = %45
  %56 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %5, align 8
  %57 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %8, align 8
  %61 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %5, align 8
  %67 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %8, align 8
  %71 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65, %55
  store %struct.ftrace_graph_ret_entry* null, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %84

76:                                               ; preds = %65
  %77 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %6, align 8
  %78 = icmp ne %struct.ring_buffer_iter* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %6, align 8
  %81 = call i32 @ring_buffer_read(%struct.ring_buffer_iter* %80, i32* null)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %8, align 8
  store %struct.ftrace_graph_ret_entry* %83, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %84

84:                                               ; preds = %82, %75, %54, %44
  %85 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %3, align 8
  ret %struct.ftrace_graph_ret_entry* %85
}

declare dso_local %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter*, i32*) #1

declare dso_local i32 @ring_buffer_consume(i32, i64, i32*) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_peek(i32, i64, i32*) #1

declare dso_local %struct.ftrace_graph_ret_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_read(%struct.ring_buffer_iter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
