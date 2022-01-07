; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_attach_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_attach_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32 }
%struct.pid = type { i32 }
%struct.utrace_engine_ops = type { i32 }
%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utrace_engine* @utrace_attach_pid(%struct.pid* %0, i32 %1, %struct.utrace_engine_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.pid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utrace_engine_ops*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.utrace_engine*, align 8
  %10 = alloca %struct.task_struct*, align 8
  store %struct.pid* %0, %struct.pid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.utrace_engine_ops* %2, %struct.utrace_engine_ops** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @ESRCH, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.utrace_engine* @ERR_PTR(i32 %12)
  store %struct.utrace_engine* %13, %struct.utrace_engine** %9, align 8
  %14 = load %struct.pid*, %struct.pid** %5, align 8
  %15 = load i32, i32* @PIDTYPE_PID, align 4
  %16 = call %struct.task_struct* @get_pid_task(%struct.pid* %14, i32 %15)
  store %struct.task_struct* %16, %struct.task_struct** %10, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.utrace_engine_ops*, %struct.utrace_engine_ops** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call %struct.utrace_engine* @utrace_attach_task(%struct.task_struct* %20, i32 %21, %struct.utrace_engine_ops* %22, i8* %23)
  store %struct.utrace_engine* %24, %struct.utrace_engine** %9, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %26 = call i32 @put_task_struct(%struct.task_struct* %25)
  br label %27

27:                                               ; preds = %19, %4
  %28 = load %struct.utrace_engine*, %struct.utrace_engine** %9, align 8
  ret %struct.utrace_engine* %28
}

declare dso_local %struct.utrace_engine* @ERR_PTR(i32) #1

declare dso_local %struct.task_struct* @get_pid_task(%struct.pid*, i32) #1

declare dso_local %struct.utrace_engine* @utrace_attach_task(%struct.task_struct*, i32, %struct.utrace_engine_ops*, i8*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
