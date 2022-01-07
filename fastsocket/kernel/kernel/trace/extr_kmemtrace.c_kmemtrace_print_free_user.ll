; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_free_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_free_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.kmemtrace_free_entry = type { i64, i32, i32 }
%struct.kmemtrace_user_event = type { i32, i64, i32, i32, i32, i32, i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@KMEMTRACE_USER_FREE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @kmemtrace_print_free_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemtrace_print_free_user(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.kmemtrace_free_entry*, align 8
  %8 = alloca %struct.kmemtrace_user_event*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 3
  store %struct.trace_seq* %10, %struct.trace_seq** %6, align 8
  %11 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %7, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_assign_type(%struct.kmemtrace_free_entry* %11, i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %17 = call %struct.kmemtrace_user_event* @trace_seq_reserve(%struct.trace_seq* %16, i32 40)
  store %struct.kmemtrace_user_event* %17, %struct.kmemtrace_user_event** %8, align 8
  %18 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %19 = icmp ne %struct.kmemtrace_user_event* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load i32, i32* @KMEMTRACE_USER_FREE, align 4
  %24 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %25 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %7, align 8
  %27 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %30 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %32 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %31, i32 0, i32 0
  store i32 40, i32* %32, align 8
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %37 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %39 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %42 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %7, align 8
  %44 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %47 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %7, align 8
  %49 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.kmemtrace_user_event*, %struct.kmemtrace_user_event** %8, align 8
  %52 = getelementptr inbounds %struct.kmemtrace_user_event, %struct.kmemtrace_user_event* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %22, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @trace_assign_type(%struct.kmemtrace_free_entry*, i32) #1

declare dso_local %struct.kmemtrace_user_event* @trace_seq_reserve(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
