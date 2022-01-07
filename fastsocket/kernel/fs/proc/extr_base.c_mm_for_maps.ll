; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_mm_for_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_mm_for_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm_struct* @mm_for_maps(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock_killable(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mm_struct* @ERR_PTR(i32 %12)
  store %struct.mm_struct* %13, %struct.mm_struct** %2, align 8
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %15)
  store %struct.mm_struct* %16, %struct.mm_struct** %4, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = icmp ne %struct.mm_struct* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  %24 = icmp ne %struct.mm_struct* %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = load i32, i32* @PTRACE_MODE_READ, align 4
  %28 = call i32 @ptrace_may_access(%struct.task_struct* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %32 = call i32 @mmput(%struct.mm_struct* %31)
  %33 = load i32, i32* @EACCES, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.mm_struct* @ERR_PTR(i32 %34)
  store %struct.mm_struct* %35, %struct.mm_struct** %4, align 8
  br label %36

36:                                               ; preds = %30, %25, %19, %14
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %40, %struct.mm_struct** %2, align 8
  br label %41

41:                                               ; preds = %36, %11
  %42 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  ret %struct.mm_struct* %42
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local %struct.mm_struct* @ERR_PTR(i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
