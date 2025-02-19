; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_fill_pipe_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_fill_pipe_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_NO_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.trace_iterator*)* @tracing_fill_pipe_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tracing_fill_pipe_page(i64 %0, %struct.trace_iterator* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.trace_iterator* %1, %struct.trace_iterator** %4, align 8
  br label %7

7:                                                ; preds = %58, %2
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = call i32 @print_trace_line(%struct.trace_iterator* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %26 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, %24
  store i64 %29, i64* %27, align 8
  br label %59

30:                                               ; preds = %7
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %35
  store i64 %40, i64* %38, align 8
  br label %59

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TRACE_TYPE_NO_CONSUME, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %47 = call i32 @trace_consume(%struct.trace_iterator* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %3, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %3, align 8
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %53 = call i32 @find_next_entry_inc(%struct.trace_iterator* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  store i64 0, i64* %3, align 8
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %57 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %59

58:                                               ; preds = %48
  br label %7

59:                                               ; preds = %55, %34, %23
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @print_trace_line(%struct.trace_iterator*) #1

declare dso_local i32 @trace_consume(%struct.trace_iterator*) #1

declare dso_local i32 @find_next_entry_inc(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
