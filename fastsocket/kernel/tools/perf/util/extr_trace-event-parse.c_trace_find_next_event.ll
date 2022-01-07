; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_trace_find_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_trace_find_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.event_format** }
%struct.event_format = type { i32 }

@trace_find_next_event.idx = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_format* @trace_find_next_event(%struct.pevent* %0, %struct.event_format* %1) #0 {
  %3 = alloca %struct.event_format*, align 8
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca %struct.event_format*, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store %struct.event_format* %1, %struct.event_format** %5, align 8
  %6 = load %struct.pevent*, %struct.pevent** %4, align 8
  %7 = icmp ne %struct.pevent* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.pevent*, %struct.pevent** %4, align 8
  %10 = getelementptr inbounds %struct.pevent, %struct.pevent* %9, i32 0, i32 1
  %11 = load %struct.event_format**, %struct.event_format*** %10, align 8
  %12 = icmp ne %struct.event_format** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  store %struct.event_format* null, %struct.event_format** %3, align 8
  br label %87

14:                                               ; preds = %8
  %15 = load %struct.event_format*, %struct.event_format** %5, align 8
  %16 = icmp ne %struct.event_format* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  store i32 0, i32* @trace_find_next_event.idx, align 4
  %18 = load %struct.pevent*, %struct.pevent** %4, align 8
  %19 = getelementptr inbounds %struct.pevent, %struct.pevent* %18, i32 0, i32 1
  %20 = load %struct.event_format**, %struct.event_format*** %19, align 8
  %21 = getelementptr inbounds %struct.event_format*, %struct.event_format** %20, i64 0
  %22 = load %struct.event_format*, %struct.event_format** %21, align 8
  store %struct.event_format* %22, %struct.event_format** %3, align 8
  br label %87

23:                                               ; preds = %14
  %24 = load i32, i32* @trace_find_next_event.idx, align 4
  %25 = load %struct.pevent*, %struct.pevent** %4, align 8
  %26 = getelementptr inbounds %struct.pevent, %struct.pevent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.event_format*, %struct.event_format** %5, align 8
  %31 = load %struct.pevent*, %struct.pevent** %4, align 8
  %32 = getelementptr inbounds %struct.pevent, %struct.pevent* %31, i32 0, i32 1
  %33 = load %struct.event_format**, %struct.event_format*** %32, align 8
  %34 = load i32, i32* @trace_find_next_event.idx, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.event_format*, %struct.event_format** %33, i64 %35
  %37 = load %struct.event_format*, %struct.event_format** %36, align 8
  %38 = icmp eq %struct.event_format* %30, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load i32, i32* @trace_find_next_event.idx, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @trace_find_next_event.idx, align 4
  %42 = load i32, i32* @trace_find_next_event.idx, align 4
  %43 = load %struct.pevent*, %struct.pevent** %4, align 8
  %44 = getelementptr inbounds %struct.pevent, %struct.pevent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store %struct.event_format* null, %struct.event_format** %3, align 8
  br label %87

48:                                               ; preds = %39
  %49 = load %struct.pevent*, %struct.pevent** %4, align 8
  %50 = getelementptr inbounds %struct.pevent, %struct.pevent* %49, i32 0, i32 1
  %51 = load %struct.event_format**, %struct.event_format*** %50, align 8
  %52 = load i32, i32* @trace_find_next_event.idx, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.event_format*, %struct.event_format** %51, i64 %53
  %55 = load %struct.event_format*, %struct.event_format** %54, align 8
  store %struct.event_format* %55, %struct.event_format** %3, align 8
  br label %87

56:                                               ; preds = %29, %23
  store i32 1, i32* @trace_find_next_event.idx, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* @trace_find_next_event.idx, align 4
  %59 = load %struct.pevent*, %struct.pevent** %4, align 8
  %60 = getelementptr inbounds %struct.pevent, %struct.pevent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.event_format*, %struct.event_format** %5, align 8
  %65 = load %struct.pevent*, %struct.pevent** %4, align 8
  %66 = getelementptr inbounds %struct.pevent, %struct.pevent* %65, i32 0, i32 1
  %67 = load %struct.event_format**, %struct.event_format*** %66, align 8
  %68 = load i32, i32* @trace_find_next_event.idx, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.event_format*, %struct.event_format** %67, i64 %70
  %72 = load %struct.event_format*, %struct.event_format** %71, align 8
  %73 = icmp eq %struct.event_format* %64, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.pevent*, %struct.pevent** %4, align 8
  %76 = getelementptr inbounds %struct.pevent, %struct.pevent* %75, i32 0, i32 1
  %77 = load %struct.event_format**, %struct.event_format*** %76, align 8
  %78 = load i32, i32* @trace_find_next_event.idx, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.event_format*, %struct.event_format** %77, i64 %79
  %81 = load %struct.event_format*, %struct.event_format** %80, align 8
  store %struct.event_format* %81, %struct.event_format** %3, align 8
  br label %87

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* @trace_find_next_event.idx, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @trace_find_next_event.idx, align 4
  br label %57

86:                                               ; preds = %57
  store %struct.event_format* null, %struct.event_format** %3, align 8
  br label %87

87:                                               ; preds = %86, %74, %48, %47, %17, %13
  %88 = load %struct.event_format*, %struct.event_format** %3, align 8
  ret %struct.event_format* %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
