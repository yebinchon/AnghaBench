; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.kmemtrace_alloc_entry = type { i32, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [86 x i8] c"type_id %d call_site %pF ptr %lu bytes_req %lu bytes_alloc %lu gfp_flags %lu node %d\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @kmemtrace_print_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemtrace_print_alloc(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.kmemtrace_alloc_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  store %struct.trace_seq* %10, %struct.trace_seq** %6, align 8
  %11 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_assign_type(%struct.kmemtrace_alloc_entry* %11, i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %17 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %18 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %21 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %25 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %28 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %31 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %34 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %7, align 8
  %37 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %23, i64 %26, i64 %29, i64 %32, i64 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @trace_assign_type(%struct.kmemtrace_alloc_entry*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i8*, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
