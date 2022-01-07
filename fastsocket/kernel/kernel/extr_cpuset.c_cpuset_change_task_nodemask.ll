; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_change_task_nodemask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_change_task_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32, i32 }

@TIF_MEMDIE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@MPOL_REBIND_STEP1 = common dso_local global i32 0, align 4
@MPOL_REBIND_STEP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32*)* @cpuset_change_task_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_change_task_nodemask(%struct.task_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %5

5:                                                ; preds = %50, %2
  %6 = load i32, i32* @TIF_MEMDIE, align 4
  %7 = call i32 @test_thread_flag(i32 %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %63

11:                                               ; preds = %5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PF_EXITING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %63

19:                                               ; preds = %11
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call i32 @task_lock(%struct.task_struct* %20)
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nodes_or(i32 %24, i32 %27, i32 %29)
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @MPOL_REBIND_STEP1, align 4
  %34 = call i32 @mpol_rebind_task(%struct.task_struct* %31, i32* %32, i32 %33)
  %35 = call i32 (...) @smp_mb()
  br label %36

36:                                               ; preds = %19
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ACCESS_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = call i32 @task_unlock(%struct.task_struct* %43)
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = call i32 @task_curr(%struct.task_struct* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = call i32 (...) @yield()
  br label %50

50:                                               ; preds = %48, %42
  br label %5

51:                                               ; preds = %36
  %52 = call i32 (...) @smp_mb()
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @MPOL_REBIND_STEP2, align 4
  %56 = call i32 @mpol_rebind_task(%struct.task_struct* %53, i32* %54, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %62 = call i32 @task_unlock(%struct.task_struct* %61)
  br label %63

63:                                               ; preds = %51, %18, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @nodes_or(i32, i32, i32) #1

declare dso_local i32 @mpol_rebind_task(%struct.task_struct*, i32*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @ACCESS_ONCE(i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @task_curr(%struct.task_struct*) #1

declare dso_local i32 @yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
