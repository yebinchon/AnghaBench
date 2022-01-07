; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_threads_continue_all_but_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_threads_continue_all_but_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32, i64 }

@TTEVT_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unexpected thread with \22%s\22 event.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad data in thread database.\00", align 1
@thread_head = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DO_STEP = common dso_local global i64 0, align 8
@TT_LWP_SINGLE = common dso_local global i32 0, align 4
@TT_USE_CURRENT_PC = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@TT_LWP_CONTINUE = common dso_local global i32 0, align 4
@TTS_STATEMASK = common dso_local global i32 0, align 4
@TTS_WASSUSPENDED = common dso_local global i32 0, align 4
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @threads_continue_all_but_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threads_continue_all_but_one(i64 %0, i32 %1) #0 {
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

18:                                               ; preds = %53, %2
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 0, %19
  br i1 %20, label %21, label %58

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
  %41 = call i32 @get_printable_name_of_ttrace_event(i64 %40)
  %42 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %26
  br label %53

44:                                               ; preds = %21
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %43
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @get_process_next_stopped_thread_id(i32 %56, %struct.TYPE_8__* %9)
  store i64 %57, i64* %8, align 8
  br label %18

58:                                               ; preds = %18
  %59 = call i32 (...) @update_thread_list()
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @thread_head, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %5, align 8
  br label %61

61:                                               ; preds = %123, %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %127

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = call i32 @thread_dropping_event_check(%struct.TYPE_9__* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  br label %78

77:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DO_STEP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load i32, i32* @TT_LWP_SINGLE, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @TT_USE_CURRENT_PC, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @target_signal_to_host(i32 %96)
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @TT_NIL, align 4
  %100 = call i32 @call_ttrace(i32 %91, i64 %94, i32 %95, i32 %98, i32 %99)
  br label %112

101:                                              ; preds = %84
  %102 = load i32, i32* @TT_LWP_CONTINUE, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @TT_USE_CURRENT_PC, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @target_signal_to_host(i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @TT_NIL, align 4
  %111 = call i32 @call_ttrace(i32 %102, i64 %105, i32 %106, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %101, %90
  br label %122

113:                                              ; preds = %78
  %114 = load i32, i32* @TT_LWP_SINGLE, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load i32, i32* @TT_USE_CURRENT_PC, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @target_signal_to_host(i32 %117)
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @TT_NIL, align 4
  %121 = call i32 @call_ttrace(i32 %114, i64 %115, i32 %116, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %112
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 6
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %5, align 8
  br label %61

127:                                              ; preds = %61
  ret void
}

declare dso_local i32 @set_all_unseen(...) #1

declare dso_local i64 @map_from_gdb_tid(i64) #1

declare dso_local i32 @get_pid_for(i64) #1

declare dso_local i64 @get_process_first_stopped_thread_id(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @find_thread_info(i64) #1

declare dso_local i32 @add_tthread(i32, i64) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @get_printable_name_of_ttrace_event(i64) #1

declare dso_local i32 @error(i8*) #1

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
