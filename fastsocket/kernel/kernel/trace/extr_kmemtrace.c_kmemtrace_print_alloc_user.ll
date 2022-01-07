; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_alloc_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_alloc_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.kmemtrace_alloc_entry = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.kmemtrace_user_event = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.kmemtrace_user_event_alloc = type { i32, i32, i32, i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@KMEMTRACE_USER_ALLOC = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @kmemtrace_print_alloc_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemtrace_print_alloc_user(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.kmemtrace_alloc_entry*, align 8
  %8 = alloca %struct.kmemtrace_user_event*, align 8
  %9 = alloca %struct.kmemtrace_user_event_alloc*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 3
  store %struct.trace_seq* %11, %struct.trace_seq** %6, align 8
  %12 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @trace_assign_type(%struct.kmemtrace_alloc_entry* %12, i32 %15)
  %17 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %18 = call i8* @trace_seq_reserve(%struct.trace_seq* %17, i32 40)
  %19 = bitcast i8* %18 to %struct.kmemtrace_user_event*
  store %struct.kmemtrace_user_event* %19, %struct.kmemtrace_user_event** %8, align 8
  %20 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %21 = icmp ne %struct.kmemtrace_user_event* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load i32, i32* @KMEMTRACE_USER_ALLOC, align 4
  %26 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %27 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %29 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %32 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %34 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %33, i32 0, i32 0
  store i32 56, i32* %34, align 8
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %36 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %39 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %41 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %44 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %46 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %49 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %51 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %54 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %56 = call i8* @trace_seq_reserve(%struct.trace_seq* %55, i32 16)
  %57 = bitcast i8* %56 to %struct.kmemtrace_user_event_alloc*
  store %struct.kmemtrace_user_event_alloc* %57, %struct.kmemtrace_user_event_alloc** %9, align 8
  %58 = load %struct.kmemtrace_user_event_alloc*, %struct.kmemtrace_user_event_alloc** %9, align 8
  %59 = icmp ne %struct.kmemtrace_user_event_alloc* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %24
  %61 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %61, i32* %3, align 4
  br label %84

62:                                               ; preds = %24
  %63 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %64 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.kmemtrace_user_event_alloc*, %struct.kmemtrace_user_event_alloc** %9, align 8
  %67 = getelementptr inbounds %struct.kmemtrace_user_event_alloc, %struct.kmemtrace_user_event_alloc* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %69 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kmemtrace_user_event_alloc*, %struct.kmemtrace_user_event_alloc** %9, align 8
  %72 = getelementptr inbounds %struct.kmemtrace_user_event_alloc, %struct.kmemtrace_user_event_alloc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %74 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.kmemtrace_user_event_alloc*, %struct.kmemtrace_user_event_alloc** %9, align 8
  %77 = getelementptr inbounds %struct.kmemtrace_user_event_alloc, %struct.kmemtrace_user_event_alloc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %79 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.kmemtrace_user_event_alloc*, %struct.kmemtrace_user_event_alloc** %9, align 8
  %82 = getelementptr inbounds %struct.kmemtrace_user_event_alloc, %struct.kmemtrace_user_event_alloc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %62, %60, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @trace_assign_type(%struct.kmemtrace_alloc_entry*, i32) #1

declare dso_local i8* @trace_seq_reserve(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
