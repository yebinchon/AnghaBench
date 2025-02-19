; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_poll_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_poll_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32 }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_BLOCK = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@trace_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @tracing_poll_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_poll_pipe(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.trace_iterator*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  store %struct.trace_iterator* %9, %struct.trace_iterator** %6, align 8
  %10 = load i32, i32* @trace_flags, align 4
  %11 = load i32, i32* @TRACE_ITER_BLOCK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @POLLIN, align 4
  %16 = load i32, i32* @POLLRDNORM, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %20 = call i32 @trace_empty(%struct.trace_iterator* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @POLLIN, align 4
  %24 = load i32, i32* @POLLRDNORM, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @poll_wait(%struct.file* %27, i32* @trace_wait, i32* %28)
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %31 = call i32 @trace_empty(%struct.trace_iterator* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @POLLIN, align 4
  %35 = load i32, i32* @POLLRDNORM, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %22, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
