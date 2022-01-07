; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_mm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mm_struct = type { i32, i64, i64, i32, i32, i32, i64, i32*, i32, i32, i32, i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@MMF_INIT_MASK = common dso_local global i32 0, align 4
@default_dump_filter = common dso_local global i32 0, align 4
@file_rss = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@swap_usage = common dso_local global i32 0, align 4
@TASK_UNMAPPED_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mm_struct* (%struct.mm_struct*, %struct.task_struct*)* @mm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mm_struct* @mm_init(%struct.mm_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i32 0, i32 11
  %8 = call i32 @atomic_set(i32* %7, i32 1)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 10
  %11 = call i32 @atomic_set(i32* %10, i32 1)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 9
  %14 = call i32 @init_rwsem(i32* %13)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 8
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMF_INIT_MASK, align 4
  %29 = and i32 %27, %28
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @default_dump_filter, align 4
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %29, %22 ], [ %31, %30 ]
  %34 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %41 = load i32, i32* @file_rss, align 4
  %42 = call i32 @set_mm_counter(%struct.mm_struct* %40, i32 %41, i32 0)
  %43 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %44 = load i32, i32* @anon_rss, align 4
  %45 = call i32 @set_mm_counter(%struct.mm_struct* %43, i32 %44, i32 0)
  %46 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %47 = load i32, i32* @swap_usage, align 4
  %48 = call i32 @set_mm_counter(%struct.mm_struct* %46, i32 %47, i32 0)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 5
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load i32, i32* @TASK_UNMAPPED_BASE, align 4
  %53 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 1
  store i64 -1, i64* %56, align 8
  %57 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %58 = call i32 @mm_init_aio(%struct.mm_struct* %57)
  %59 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %61 = call i32 @mm_init_owner(%struct.mm_struct* %59, %struct.task_struct* %60)
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 3
  %64 = call i32 @atomic_set(i32* %63, i32 0)
  %65 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %66 = call i32 @mm_alloc_pgd(%struct.mm_struct* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %32
  %73 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %76 = call i32 @mmu_notifier_mm_init(%struct.mm_struct* %75)
  %77 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %77, %struct.mm_struct** %3, align 8
  br label %81

78:                                               ; preds = %32
  %79 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %80 = call i32 @free_mm(%struct.mm_struct* %79)
  store %struct.mm_struct* null, %struct.mm_struct** %3, align 8
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  ret %struct.mm_struct* %82
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_mm_counter(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mm_init_aio(%struct.mm_struct*) #1

declare dso_local i32 @mm_init_owner(%struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mm_alloc_pgd(%struct.mm_struct*) #1

declare dso_local i32 @mmu_notifier_mm_init(%struct.mm_struct*) #1

declare dso_local i32 @free_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
