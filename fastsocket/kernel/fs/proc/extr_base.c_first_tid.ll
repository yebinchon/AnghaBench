; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_first_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_first_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.task_struct* }
%struct.pid_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.task_struct*, i32, i32, %struct.pid_namespace*)* @first_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @first_tid(%struct.task_struct* %0, i32 %1, i32 %2, %struct.pid_namespace* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pid_namespace*, align 8
  %9 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pid_namespace* %3, %struct.pid_namespace** %8, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %19 = call %struct.task_struct* @find_task_by_pid_ns(i32 %17, %struct.pid_namespace* %18)
  store %struct.task_struct* %19, %struct.task_struct** %9, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = icmp eq %struct.task_struct* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %56

29:                                               ; preds = %22, %16
  br label %30

30:                                               ; preds = %29, %13, %4
  store %struct.task_struct* null, %struct.task_struct** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = call i32 @get_nr_threads(%struct.task_struct* %35)
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %59

39:                                               ; preds = %33, %30
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %40, %struct.task_struct** %9, align 8
  br label %41

41:                                               ; preds = %52, %39
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %46 = call %struct.task_struct* @next_thread(%struct.task_struct* %45)
  store %struct.task_struct* %46, %struct.task_struct** %9, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %49 = icmp eq %struct.task_struct* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.task_struct* null, %struct.task_struct** %9, align 8
  br label %59

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %41

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %58 = call i32 @get_task_struct(%struct.task_struct* %57)
  br label %59

59:                                               ; preds = %56, %50, %38
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  ret %struct.task_struct* %61
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @get_nr_threads(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
