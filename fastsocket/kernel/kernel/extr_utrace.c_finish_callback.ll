; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_finish_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace = type { i32* }
%struct.utrace_report = type { i32 }
%struct.utrace_engine = type { i32* }

@UTRACE_RESUME_MASK = common dso_local global i32 0, align 4
@utrace_detached_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace*, %struct.utrace_report*, %struct.utrace_engine*, i32)* @finish_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_callback(%struct.task_struct* %0, %struct.utrace* %1, %struct.utrace_report* %2, %struct.utrace_engine* %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.utrace*, align 8
  %8 = alloca %struct.utrace_report*, align 8
  %9 = alloca %struct.utrace_engine*, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.utrace* %1, %struct.utrace** %7, align 8
  store %struct.utrace_report* %2, %struct.utrace_report** %8, align 8
  store %struct.utrace_engine* %3, %struct.utrace_engine** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UTRACE_RESUME_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %16 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = load %struct.utrace*, %struct.utrace** %7, align 8
  %19 = load %struct.utrace_report*, %struct.utrace_report** %8, align 8
  %20 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @utrace_resume_action(i32 %21)
  %23 = call i32 @finish_callback_report(%struct.task_struct* %17, %struct.utrace* %18, %struct.utrace_report* %19, %struct.utrace_engine* %20, i32 %22)
  %24 = load %struct.utrace*, %struct.utrace** %7, align 8
  %25 = getelementptr inbounds %struct.utrace, %struct.utrace* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = call i32 (...) @might_sleep()
  %27 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  %28 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, @utrace_detached_ops
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i32 @finish_callback_report(%struct.task_struct*, %struct.utrace*, %struct.utrace_report*, %struct.utrace_engine*, i32) #1

declare dso_local i32 @utrace_resume_action(i32) #1

declare dso_local i32 @might_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
