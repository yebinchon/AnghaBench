; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_unreg_event_syscall_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_unreg_event_syscall_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i64 }
%struct.syscall_metadata = type { i8* }

@NR_syscalls = common dso_local global i32 0, align 4
@syscall_trace_lock = common dso_local global i32 0, align 4
@sys_refcount_exit = common dso_local global i32 0, align 4
@enabled_exit_syscalls = common dso_local global i32 0, align 4
@ftrace_syscall_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unreg_event_syscall_exit(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca %struct.ftrace_event_call*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %2, align 8
  %5 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %6 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.syscall_metadata*
  %9 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @syscall_name_to_nr(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NR_syscalls, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %1
  br label %34

20:                                               ; preds = %15
  %21 = call i32 @mutex_lock(i32* @syscall_trace_lock)
  %22 = load i32, i32* @sys_refcount_exit, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @sys_refcount_exit, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @enabled_exit_syscalls, align 4
  %26 = call i32 @clear_bit(i32 %24, i32 %25)
  %27 = load i32, i32* @sys_refcount_exit, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ftrace_syscall_exit, align 4
  %31 = call i32 @unregister_trace_sys_exit(i32 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = call i32 @mutex_unlock(i32* @syscall_trace_lock)
  br label %34

34:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @syscall_name_to_nr(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @unregister_trace_sys_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
