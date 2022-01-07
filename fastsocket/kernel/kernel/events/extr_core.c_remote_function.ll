; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_remote_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_remote_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_function_call = type { i32, i32 (i32)*, i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.remote_function_call*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.remote_function_call*
  store %struct.remote_function_call* %6, %struct.remote_function_call** %3, align 8
  %7 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %8 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 3
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %9, %struct.task_struct** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %16 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i64 @task_cpu(%struct.task_struct* %17)
  %19 = call i64 (...) @smp_processor_id()
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @task_curr(%struct.task_struct* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %12
  br label %37

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %29 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %28, i32 0, i32 1
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %32 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %30(i32 %33)
  %35 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %36 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %27, %25
  ret void
}

declare dso_local i64 @task_cpu(%struct.task_struct*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @task_curr(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
