; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_child_acknowledge_created_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_child_acknowledge_created_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@TT_VERSION = common dso_local global i32 0, align 4
@startup_semaphore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEM_LISTEN = common dso_local global i64 0, align 8
@RUNNING = common dso_local global i32 0, align 4
@process_state = common dso_local global i32 0, align 4
@SEM_TALK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_acknowledge_created_inferior(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TT_VERSION, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 0), align 8
  %7 = load i64, i64* @SEM_LISTEN, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @read(i32 %9, i32* %4, i32 4)
  %11 = call i32 (...) @clear_thread_info()
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @pid_to_ptid(i32 %12)
  %14 = call i32 @add_thread(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @require_notification_of_exec_events(i32 %15)
  %17 = load i32, i32* @RUNNING, align 4
  store i32 %17, i32* @process_state, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 1), align 8
  %19 = load i64, i64* @SEM_TALK, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @write(i32 %21, i32* %3, i32 4)
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 1), align 8
  %24 = load i64, i64* @SEM_LISTEN, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 1), align 8
  %29 = load i64, i64* @SEM_TALK, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 0), align 8
  %34 = load i64, i64* @SEM_LISTEN, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @startup_semaphore, i32 0, i32 0), align 8
  %39 = load i64, i64* @SEM_TALK, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @close(i32 %41)
  ret void
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @clear_thread_info(...) #1

declare dso_local i32 @add_thread(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @require_notification_of_exec_events(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
