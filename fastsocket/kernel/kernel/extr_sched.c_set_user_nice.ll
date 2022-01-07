; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_set_user_nice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_set_user_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_user_nice(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.rq*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = call i64 @TASK_NICE(%struct.task_struct* %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %15, -20
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = icmp sgt i64 %18, 19
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %2
  br label %88

21:                                               ; preds = %17
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call %struct.rq* @task_rq_lock(%struct.task_struct* %22, i64* %8)
  store %struct.rq* %23, %struct.rq** %9, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = call i64 @task_has_rt_policy(%struct.task_struct* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = call i8* @NICE_TO_PRIO(i64 %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %85

32:                                               ; preds = %21
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.rq*, %struct.rq** %9, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = call i32 @dequeue_task(%struct.rq* %40, %struct.task_struct* %41, i32 0)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i64, i64* %4, align 8
  %45 = call i8* @NICE_TO_PRIO(i64 %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %49 = call i32 @set_load_weight(%struct.task_struct* %48)
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %5, align 4
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = call i32 @effective_prio(%struct.task_struct* %53)
  %55 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %43
  %65 = load %struct.rq*, %struct.rq** %9, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %67 = call i32 @enqueue_task(%struct.rq* %65, %struct.task_struct* %66, i32 0)
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.rq*, %struct.rq** %9, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = call i64 @task_running(%struct.rq* %74, %struct.task_struct* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73, %64
  %79 = load %struct.rq*, %struct.rq** %9, align 8
  %80 = getelementptr inbounds %struct.rq, %struct.rq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @resched_task(i32 %81)
  br label %83

83:                                               ; preds = %78, %73, %70
  br label %84

84:                                               ; preds = %83, %43
  br label %85

85:                                               ; preds = %84, %27
  %86 = load %struct.rq*, %struct.rq** %9, align 8
  %87 = call i32 @task_rq_unlock(%struct.rq* %86, i64* %8)
  br label %88

88:                                               ; preds = %85, %20
  ret void
}

declare dso_local i64 @TASK_NICE(%struct.task_struct*) #1

declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct*, i64*) #1

declare dso_local i64 @task_has_rt_policy(%struct.task_struct*) #1

declare dso_local i8* @NICE_TO_PRIO(i64) #1

declare dso_local i32 @dequeue_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @set_load_weight(%struct.task_struct*) #1

declare dso_local i32 @effective_prio(%struct.task_struct*) #1

declare dso_local i32 @enqueue_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i64 @task_running(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @resched_task(i32) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
