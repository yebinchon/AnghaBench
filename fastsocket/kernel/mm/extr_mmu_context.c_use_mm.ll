; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmu_context.c_use_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmu_context.c_use_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct*, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @use_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = call i32 @task_lock(%struct.task_struct* %6)
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %3, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = icmp ne %struct.mm_struct* %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 1
  store %struct.mm_struct* %18, %struct.mm_struct** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  store %struct.mm_struct* %22, %struct.mm_struct** %24, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = call i32 @switch_mm(%struct.mm_struct* %25, %struct.mm_struct* %26, %struct.task_struct* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = call i32 @task_unlock(%struct.task_struct* %29)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %33 = icmp ne %struct.mm_struct* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %36 = call i32 @mmdrop(%struct.mm_struct* %35)
  br label %37

37:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @switch_mm(%struct.mm_struct*, %struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
