; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_good_sigevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_good_sigevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.pid = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@SIGEV_NONE = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pid* (%struct.TYPE_5__*)* @good_sigevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pid* @good_sigevent(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  store %struct.task_struct* %7, %struct.task_struct** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.task_struct* @find_task_by_vpid(i32 %17)
  store %struct.task_struct* %18, %struct.task_struct** %4, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %23 = call i32 @same_thread_group(%struct.task_struct* %21, %struct.TYPE_6__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @SIGEV_SIGNAL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %20, %14
  store %struct.pid* null, %struct.pid** %2, align 8
  br label %59

35:                                               ; preds = %25, %1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* @SIGEV_NONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SIGRTMAX, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %44
  store %struct.pid* null, %struct.pid** %2, align 8
  br label %59

56:                                               ; preds = %49, %35
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = call %struct.pid* @task_pid(%struct.task_struct* %57)
  store %struct.pid* %58, %struct.pid** %2, align 8
  br label %59

59:                                               ; preds = %56, %55, %34
  %60 = load %struct.pid*, %struct.pid** %2, align 8
  ret %struct.pid* %60
}

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.TYPE_6__*) #1

declare dso_local %struct.pid* @task_pid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
