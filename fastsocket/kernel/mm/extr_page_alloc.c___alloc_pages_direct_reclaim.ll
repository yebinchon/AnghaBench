; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_direct_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_direct_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.reclaim_state* }
%struct.reclaim_state = type { i64 }
%struct.page = type { i32 }
%struct.zonelist = type { i32 }
%struct.zone = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, %struct.zonelist*, i32, i32*, i32, %struct.zone*, i32, i64*)* @__alloc_pages_direct_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__alloc_pages_direct_reclaim(i32 %0, i32 %1, %struct.zonelist* %2, i32 %3, i32* %4, i32 %5, %struct.zone* %6, i32 %7, i64* %8) #0 {
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.zonelist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.zone*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca %struct.page*, align 8
  %21 = alloca %struct.reclaim_state, align 8
  %22 = alloca %struct.task_struct*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store %struct.zonelist* %2, %struct.zonelist** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.zone* %6, %struct.zone** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  store %struct.page* null, %struct.page** %20, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %24, %struct.task_struct** %22, align 8
  store i32 0, i32* %23, align 4
  %25 = call i32 (...) @cond_resched()
  %26 = call i32 (...) @cpuset_memory_pressure_bump()
  %27 = load i32, i32* @PF_MEMALLOC, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @lockdep_set_current_reclaim_state(i32 %32)
  %34 = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %21, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 1
  store %struct.reclaim_state* %21, %struct.reclaim_state** %36, align 8
  %37 = load %struct.zonelist*, %struct.zonelist** %13, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = call i64 @try_to_free_pages(%struct.zonelist* %37, i32 %38, i32 %39, i32* %40)
  %42 = load i64*, i64** %19, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 1
  store %struct.reclaim_state* null, %struct.reclaim_state** %44, align 8
  %45 = call i32 (...) @lockdep_clear_current_reclaim_state()
  %46 = load i32, i32* @PF_MEMALLOC, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = call i32 (...) @cond_resched()
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %9
  %56 = call i32 (...) @drain_all_pages()
  br label %57

57:                                               ; preds = %55, %9
  %58 = load i64*, i64** %19, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store %struct.page* null, %struct.page** %10, align 8
  br label %86

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.zonelist*, %struct.zonelist** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.zone*, %struct.zone** %17, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call %struct.page* @get_page_from_freelist(i32 %68, i32* %69, i32 %70, %struct.zonelist* %71, i32 %72, i32 %73, %struct.zone* %74, i32 %75)
  store %struct.page* %76, %struct.page** %20, align 8
  %77 = load %struct.page*, %struct.page** %20, align 8
  %78 = icmp ne %struct.page* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %23, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = call i32 (...) @drain_all_pages()
  store i32 1, i32* %23, align 4
  br label %67

84:                                               ; preds = %79, %67
  %85 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %85, %struct.page** %10, align 8
  br label %86

86:                                               ; preds = %84, %65
  %87 = load %struct.page*, %struct.page** %10, align 8
  ret %struct.page* %87
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @cpuset_memory_pressure_bump(...) #1

declare dso_local i32 @lockdep_set_current_reclaim_state(i32) #1

declare dso_local i64 @try_to_free_pages(%struct.zonelist*, i32, i32, i32*) #1

declare dso_local i32 @lockdep_clear_current_reclaim_state(...) #1

declare dso_local i32 @drain_all_pages(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @get_page_from_freelist(i32, i32*, i32, %struct.zonelist*, i32, i32, %struct.zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
