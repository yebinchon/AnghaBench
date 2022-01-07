; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_task_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_task_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.utrace* }
%struct.utrace = type { i32, i32, i32, i32 }

@utrace_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @utrace_task_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utrace_task_alloc(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.utrace*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load i32, i32* @utrace_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.utrace* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.utrace* %7, %struct.utrace** %4, align 8
  %8 = load %struct.utrace*, %struct.utrace** %4, align 8
  %9 = icmp ne %struct.utrace* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.utrace*, %struct.utrace** %4, align 8
  %17 = getelementptr inbounds %struct.utrace, %struct.utrace* %16, i32 0, i32 3
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.utrace*, %struct.utrace** %4, align 8
  %20 = getelementptr inbounds %struct.utrace, %struct.utrace* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.utrace*, %struct.utrace** %4, align 8
  %23 = getelementptr inbounds %struct.utrace, %struct.utrace* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* @UTRACE_RESUME, align 4
  %26 = load %struct.utrace*, %struct.utrace** %4, align 8
  %27 = getelementptr inbounds %struct.utrace, %struct.utrace* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i32 @task_lock(%struct.task_struct* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load %struct.utrace*, %struct.utrace** %31, align 8
  %33 = icmp ne %struct.utrace* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %15
  %39 = call i32 (...) @smp_wmb()
  %40 = load %struct.utrace*, %struct.utrace** %4, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  store %struct.utrace* %40, %struct.utrace** %42, align 8
  br label %43

43:                                               ; preds = %38, %15
  %44 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %45 = call i32 @task_unlock(%struct.task_struct* %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = load %struct.utrace*, %struct.utrace** %47, align 8
  %49 = load %struct.utrace*, %struct.utrace** %4, align 8
  %50 = icmp ne %struct.utrace* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @utrace_cachep, align 4
  %56 = load %struct.utrace*, %struct.utrace** %4, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.utrace* %56)
  br label %58

58:                                               ; preds = %54, %43
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.utrace* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.utrace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
