; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_check_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_check_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PT_PTRACED = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@TASK_TRACED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_check_attach(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ESRCH, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @read_lock(i32* @tasklist_lock)
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PT_PTRACED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @current, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i64 @task_is_stopped(%struct.task_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @TASK_TRACED, align 4
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %45

34:                                               ; preds = %21
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = call i32 @task_is_traced(%struct.task_struct* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ESRCH, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %38, %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  br label %51

51:                                               ; preds = %45, %15, %2
  %52 = call i32 @read_unlock(i32* @tasklist_lock)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %60 = load i32, i32* @TASK_TRACED, align 4
  %61 = call i64 @wait_task_inactive(%struct.task_struct* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ESRCH, align 4
  %66 = sub nsw i32 0, %65
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 0, %63 ], [ %66, %64 ]
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %55, %51
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @task_is_stopped(%struct.task_struct*) #1

declare dso_local i32 @task_is_traced(%struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @wait_task_inactive(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
