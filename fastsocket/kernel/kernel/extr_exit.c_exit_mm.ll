; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_exit_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_exit_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.mm_struct*, %struct.mm_struct* }
%struct.TYPE_4__ = type { i64 }
%struct.mm_struct = type { i32, i32, i32, %struct.core_state* }
%struct.core_state = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.core_thread = type { %struct.task_struct*, i32 }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@OOM_SCORE_ADJ_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @exit_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_mm(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.core_state*, align 8
  %5 = alloca %struct.core_thread, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %8, %struct.mm_struct** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %11 = call i32 @mm_release(%struct.task_struct* %9, %struct.mm_struct* %10)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = icmp ne %struct.mm_struct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 1
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 3
  %21 = load %struct.core_state*, %struct.core_state** %20, align 8
  store %struct.core_state* %21, %struct.core_state** %4, align 8
  %22 = load %struct.core_state*, %struct.core_state** %4, align 8
  %23 = icmp ne %struct.core_state* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %15
  %25 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 1
  %27 = call i32 @up_read(i32* %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %5, i32 0, i32 0
  store %struct.task_struct* %28, %struct.task_struct** %29, align 8
  %30 = load %struct.core_state*, %struct.core_state** %4, align 8
  %31 = getelementptr inbounds %struct.core_state, %struct.core_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @xchg(i32* %32, %struct.core_thread* %5)
  %34 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.core_state*, %struct.core_state** %4, align 8
  %36 = getelementptr inbounds %struct.core_state, %struct.core_state* %35, i32 0, i32 1
  %37 = call i64 @atomic_dec_and_test(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.core_state*, %struct.core_state** %4, align 8
  %41 = getelementptr inbounds %struct.core_state, %struct.core_state* %40, i32 0, i32 0
  %42 = call i32 @complete(i32* %41)
  br label %43

43:                                               ; preds = %39, %24
  br label %44

44:                                               ; preds = %52, %43
  %45 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %46 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %47 = call i32 @set_task_state(%struct.task_struct* %45, i32 %46)
  %48 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %5, i32 0, i32 0
  %49 = load %struct.task_struct*, %struct.task_struct** %48, align 8
  %50 = icmp ne %struct.task_struct* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %54

52:                                               ; preds = %44
  %53 = call i32 (...) @schedule()
  br label %44

54:                                               ; preds = %51
  %55 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %56 = load i32, i32* @TASK_RUNNING, align 4
  %57 = call i32 @__set_task_state(%struct.task_struct* %55, i32 %56)
  %58 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 1
  %60 = call i32 @down_read(i32* %59)
  br label %61

61:                                               ; preds = %54, %15
  %62 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 2
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 2
  %68 = load %struct.mm_struct*, %struct.mm_struct** %67, align 8
  %69 = icmp ne %struct.mm_struct* %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %73 = call i32 @task_lock(%struct.task_struct* %72)
  %74 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 1
  store %struct.mm_struct* null, %struct.mm_struct** %75, align 8
  %76 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %77 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %76, i32 0, i32 1
  %78 = call i32 @up_read(i32* %77)
  %79 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %80 = load i32, i32* @current, align 4
  %81 = call i32 @enter_lazy_tlb(%struct.mm_struct* %79, i32 %80)
  %82 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %83 = call i32 @clear_freeze_flag(%struct.task_struct* %82)
  %84 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OOM_SCORE_ADJ_MIN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %61
  %92 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %93 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %92, i32 0, i32 0
  %94 = call i32 @atomic_dec(i32* %93)
  br label %95

95:                                               ; preds = %91, %61
  %96 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %97 = call i32 @task_unlock(%struct.task_struct* %96)
  %98 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %99 = call i32 @mm_update_next_owner(%struct.mm_struct* %98)
  %100 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %101 = call i32 @mmput(%struct.mm_struct* %100)
  br label %102

102:                                              ; preds = %95, %14
  ret void
}

declare dso_local i32 @mm_release(%struct.task_struct*, %struct.mm_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @xchg(i32*, %struct.core_thread*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @enter_lazy_tlb(%struct.mm_struct*, i32) #1

declare dso_local i32 @clear_freeze_flag(%struct.task_struct*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @mm_update_next_owner(%struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
