; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_set_syscall_print_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_set_syscall_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { %struct.TYPE_2__, %struct.syscall_metadata* }
%struct.TYPE_2__ = type { i8* }
%struct.syscall_metadata = type { %struct.ftrace_event_call* }

@.str = private unnamed_addr constant [18 x i8] c"\220x%lx\22, REC->ret\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_syscall_print_fmt(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_event_call*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.syscall_metadata*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  %7 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %8 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %7, i32 0, i32 1
  %9 = load %struct.syscall_metadata*, %struct.syscall_metadata** %8, align 8
  store %struct.syscall_metadata* %9, %struct.syscall_metadata** %6, align 8
  %10 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %11 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %10, i32 0, i32 0
  %12 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %11, align 8
  %13 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %14 = icmp ne %struct.ftrace_event_call* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %17 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i32 0, i32* %2, align 4
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %21 = call i32 @__set_enter_print_fmt(%struct.syscall_metadata* %20, i8* null, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %19
  %32 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @__set_enter_print_fmt(%struct.syscall_metadata* %32, i8* %33, i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %39 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %31, %28, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @__set_enter_print_fmt(%struct.syscall_metadata*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
