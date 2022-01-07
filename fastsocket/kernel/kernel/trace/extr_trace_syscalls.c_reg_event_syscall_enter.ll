; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_reg_event_syscall_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_reg_event_syscall_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i64 }
%struct.syscall_metadata = type { i8* }

@NR_syscalls = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@syscall_trace_lock = common dso_local global i32 0, align 4
@sys_refcount_enter = common dso_local global i32 0, align 4
@ftrace_syscall_enter = common dso_local global i32 0, align 4
@enabled_enter_syscalls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_event_syscall_enter(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_event_call*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %8 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.syscall_metadata*
  %11 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @syscall_name_to_nr(i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NR_syscalls, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %17
  %25 = call i32 @mutex_lock(i32* @syscall_trace_lock)
  %26 = load i32, i32* @sys_refcount_enter, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ftrace_syscall_enter, align 4
  %30 = call i32 @register_trace_sys_enter(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @enabled_enter_syscalls, align 4
  %37 = call i32 @set_bit(i32 %35, i32 %36)
  %38 = load i32, i32* @sys_refcount_enter, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @sys_refcount_enter, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = call i32 @mutex_unlock(i32* @syscall_trace_lock)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @syscall_name_to_nr(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_trace_sys_enter(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
