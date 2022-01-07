; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_task_oncpu_function_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_task_oncpu_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_oncpu_function_call(%struct.task_struct* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @preempt_disable()
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i32 @task_cpu(%struct.task_struct* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i64 @task_curr(%struct.task_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load void (i8*)*, void (i8*)** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @smp_call_function_single(i32 %15, void (i8*)* %16, i8* %17, i32 1)
  br label %19

19:                                               ; preds = %14, %3
  %20 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

declare dso_local i64 @task_curr(%struct.task_struct*) #1

declare dso_local i32 @smp_call_function_single(i32, void (i8*)*, i8*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
