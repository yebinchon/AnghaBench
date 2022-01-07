; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace_engine = type { i32 }
%struct.utrace = type { i32, %struct.utrace_engine* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utrace_barrier(%struct.task_struct* %0, %struct.utrace_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.utrace_engine*, align 8
  %6 = alloca %struct.utrace*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %5, align 8
  %8 = load i32, i32* @ERESTARTSYS, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %12 = icmp eq %struct.task_struct* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %52, %17
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = load %struct.utrace_engine*, %struct.utrace_engine** %5, align 8
  %21 = call %struct.utrace* @get_utrace_lock(%struct.task_struct* %19, %struct.utrace_engine* %20, i32 0)
  store %struct.utrace* %21, %struct.utrace** %6, align 8
  %22 = load %struct.utrace*, %struct.utrace** %6, align 8
  %23 = call i32 @IS_ERR(%struct.utrace* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.utrace*, %struct.utrace** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.utrace* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %26
  br label %50

35:                                               ; preds = %18
  %36 = load %struct.utrace*, %struct.utrace** %6, align 8
  %37 = getelementptr inbounds %struct.utrace, %struct.utrace* %36, i32 0, i32 1
  %38 = load %struct.utrace_engine*, %struct.utrace_engine** %37, align 8
  %39 = load %struct.utrace_engine*, %struct.utrace_engine** %5, align 8
  %40 = icmp ne %struct.utrace_engine* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.utrace*, %struct.utrace** %6, align 8
  %44 = getelementptr inbounds %struct.utrace, %struct.utrace* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %57

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %34
  %51 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %52

52:                                               ; preds = %50
  %53 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %54 = call i32 @signal_pending(%struct.task_struct* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %18, label %57

57:                                               ; preds = %52, %48, %33
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.utrace* @get_utrace_lock(%struct.task_struct*, %struct.utrace_engine*, i32) #1

declare dso_local i32 @IS_ERR(%struct.utrace*) #1

declare dso_local i32 @PTR_ERR(%struct.utrace*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @signal_pending(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
