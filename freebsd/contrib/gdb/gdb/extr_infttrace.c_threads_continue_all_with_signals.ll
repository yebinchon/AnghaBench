; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_threads_continue_all_with_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_threads_continue_all_with_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i64, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32, i64 }

@TTEVT_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unexpected thread with \22%s\22 event.\00", align 1
@thread_head = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DO_STEP = common dso_local global i64 0, align 8
@TT_LWP_SINGLE = common dso_local global i32 0, align 4
@TT_USE_CURRENT_PC = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@TT_LWP_CONTINUE = common dso_local global i32 0, align 4
@TTS_STATEMASK = common dso_local global i32 0, align 4
@TTS_WASSUSPENDED = common dso_local global i32 0, align 4
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @threads_continue_all_with_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threads_continue_all_with_signals(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @set_all_unseen()
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @map_from_gdb_tid(i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @get_pid_for(i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @get_process_first_stopped_thread_id(i32 %16, %struct.TYPE_8__* %9)
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %44, %2
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 0, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.TYPE_9__* @find_thread_info(i64 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = icmp eq %struct.TYPE_9__* null, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @add_tthread(i32 %27, i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.TYPE_9__* @find_thread_info(i64 %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TTEVT_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @get_printable_name_of_ttrace_event(i64 %40)
  %42 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %38, %26
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @get_process_next_stopped_thread_id(i32 %47, %struct.TYPE_8__* %9)
  store i64 %48, i64* %8, align 8
  br label %18

49:                                               ; preds = %18
  %50 = call i32 (...) @update_thread_list()
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @thread_head, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %5, align 8
  br label %52

52:                                               ; preds = %109, %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %113

55:                                               ; preds = %52
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = call i32 @thread_dropping_event_check(%struct.TYPE_9__* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  br label %80

67:                                               ; preds = %55
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  br label %79

78:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %72
  br label %80

80:                                               ; preds = %79, %63
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DO_STEP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i32, i32* @TT_LWP_SINGLE, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @TT_USE_CURRENT_PC, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @target_signal_to_host(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @TT_NIL, align 4
  %96 = call i32 @call_ttrace(i32 %87, i64 %90, i32 %91, i32 %94, i32 %95)
  br label %108

97:                                               ; preds = %80
  %98 = load i32, i32* @TT_LWP_CONTINUE, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @TT_USE_CURRENT_PC, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @target_signal_to_host(i32 %103)
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @TT_NIL, align 4
  %107 = call i32 @call_ttrace(i32 %98, i64 %101, i32 %102, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %86
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %5, align 8
  br label %52

113:                                              ; preds = %52
  ret void
}

declare dso_local i32 @set_all_unseen(...) #1

declare dso_local i64 @map_from_gdb_tid(i64) #1

declare dso_local i32 @get_pid_for(i64) #1

declare dso_local i64 @get_process_first_stopped_thread_id(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @find_thread_info(i64) #1

declare dso_local i32 @add_tthread(i32, i64) #1

declare dso_local i32 @warning(i8*, i64) #1

declare dso_local i64 @get_printable_name_of_ttrace_event(i64) #1

declare dso_local i64 @get_process_next_stopped_thread_id(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @update_thread_list(...) #1

declare dso_local i32 @thread_dropping_event_check(%struct.TYPE_9__*) #1

declare dso_local i32 @call_ttrace(i32, i64, i32, i32, i32) #1

declare dso_local i64 @target_signal_to_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
