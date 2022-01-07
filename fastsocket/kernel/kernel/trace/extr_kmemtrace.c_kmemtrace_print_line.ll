; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.trace_iterator = type { %struct.trace_entry* }
%struct.trace_entry = type { i32 }

@kmem_tracer_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRACE_KMEM_OPT_MINIMAL = common dso_local global i32 0, align 4
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @kmemtrace_print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemtrace_print_line(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %5 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %5, i32 0, i32 0
  %7 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  store %struct.trace_entry* %7, %struct.trace_entry** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kmem_tracer_flags, i32 0, i32 0), align 4
  %9 = load i32, i32* @TRACE_KMEM_OPT_MINIMAL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %16 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %14
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %20 = call i32 @kmemtrace_print_alloc_compress(%struct.trace_iterator* %19)
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %23 = call i32 @kmemtrace_print_free_compress(%struct.trace_iterator* %22)
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %21, %18, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @kmemtrace_print_alloc_compress(%struct.trace_iterator*) #1

declare dso_local i32 @kmemtrace_print_free_compress(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
