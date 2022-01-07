; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_oom_badness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_oom_badness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.mem_cgroup = type { i32 }

@swap_usage = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oom_badness(%struct.task_struct* %0, %struct.mem_cgroup* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @oom_unkillable_task(%struct.task_struct* %11, %struct.mem_cgroup* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

17:                                               ; preds = %4
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* %18)
  store %struct.task_struct* %19, %struct.task_struct** %6, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %89

23:                                               ; preds = %17
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = call i32 @task_unlock(%struct.task_struct* %31)
  store i32 0, i32* %5, align 4
  br label %89

33:                                               ; preds = %23
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i64 1, i64* %9, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i64 @get_mm_rss(%struct.TYPE_5__* %40)
  %42 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  store i64 %47, i64* %10, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* @swap_usage, align 4
  %52 = call i64 @get_mm_counter(%struct.TYPE_5__* %50, i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = mul nsw i64 %55, 1000
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = udiv i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = call i32 @task_unlock(%struct.task_struct* %60)
  %62 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %63 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %64 = call i64 @has_capability_noaudit(%struct.task_struct* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %37
  %67 = load i64, i64* %10, align 8
  %68 = sub nsw i64 %67, 30
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %66, %37
  %70 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %89

80:                                               ; preds = %69
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %81, 1000
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* %10, align 8
  br label %86

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i64 [ %84, %83 ], [ 1000, %85 ]
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %79, %30, %22, %16
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @oom_unkillable_task(%struct.task_struct*, %struct.mem_cgroup*, i32*) #1

declare dso_local %struct.task_struct* @find_lock_task_mm(%struct.task_struct*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i64 @get_mm_rss(%struct.TYPE_5__*) #1

declare dso_local i64 @get_mm_counter(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @has_capability_noaudit(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
