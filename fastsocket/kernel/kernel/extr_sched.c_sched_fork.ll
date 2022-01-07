; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_fork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.task_struct*)* }
%struct.task_struct = type { i64, i32, i64, i32, %struct.TYPE_5__*, i32, i64, i32, i32, i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i64 0, align 8
@SCHED_RR = common dso_local global i64 0, align 8
@SCHED_NORMAL = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@fair_sched_class = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_fork(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @get_cpu()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call i32 @__sched_fork(%struct.task_struct* %7)
  %9 = load i32, i32* @TASK_RUNNING, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @unlikely(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCHED_FIFO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SCHED_RR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23, %17
  %30 = load i64, i64* @SCHED_NORMAL, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @PRIO_TO_NICE(i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = call i32 @NICE_TO_PRIO(i32 0)
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = call i32 @set_load_weight(%struct.task_struct* %53)
  br label %55

55:                                               ; preds = %44, %38
  %56 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rt_prio(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 4
  store %struct.TYPE_5__* @fair_sched_class, %struct.TYPE_5__** %71, align 8
  br label %72

72:                                               ; preds = %69, %58
  %73 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (%struct.task_struct*)*, i32 (%struct.task_struct*)** %76, align 8
  %78 = icmp ne i32 (%struct.task_struct*)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32 (%struct.task_struct*)*, i32 (%struct.task_struct*)** %83, align 8
  %85 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %86 = call i32 %84(%struct.task_struct* %85)
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @set_task_cpu(%struct.task_struct* %88, i32 %89)
  %91 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %92 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %91, i32 0, i32 1
  %93 = load i32, i32* @MAX_PRIO, align 4
  %94 = call i32 @plist_node_init(i32* %92, i32 %93)
  %95 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @__sched_fork(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @PRIO_TO_NICE(i32) #1

declare dso_local i32 @NICE_TO_PRIO(i32) #1

declare dso_local i32 @set_load_weight(%struct.task_struct*) #1

declare dso_local i32 @rt_prio(i32) #1

declare dso_local i32 @set_task_cpu(%struct.task_struct*, i32) #1

declare dso_local i32 @plist_node_init(i32*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
