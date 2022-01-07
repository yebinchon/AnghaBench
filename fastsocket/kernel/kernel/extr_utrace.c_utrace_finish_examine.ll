; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_finish_examine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_finish_examine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.utrace_engine = type { i32 }
%struct.utrace_examiner = type { i64, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utrace_finish_examine(%struct.task_struct* %0, %struct.utrace_engine* %1, %struct.utrace_examiner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca %struct.utrace_examiner*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %6, align 8
  store %struct.utrace_examiner* %2, %struct.utrace_examiner** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %12 = icmp eq %struct.task_struct* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

17:                                               ; preds = %3
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %20 = call i32 @engine_wants_stop(%struct.utrace_engine* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.utrace_examiner*, %struct.utrace_examiner** %7, align 8
  %34 = getelementptr inbounds %struct.utrace_examiner, %struct.utrace_examiner* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %46

43:                                               ; preds = %29
  %44 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %45 = call i32 @get_task_struct(%struct.task_struct* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %26
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = load %struct.utrace_examiner*, %struct.utrace_examiner** %7, align 8
  %58 = getelementptr inbounds %struct.utrace_examiner, %struct.utrace_examiner* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @wait_task_inactive(%struct.task_struct* %56, i64 %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.utrace_examiner*, %struct.utrace_examiner** %7, align 8
  %63 = getelementptr inbounds %struct.utrace_examiner, %struct.utrace_examiner* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %55
  %73 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %74 = call i32 @put_task_struct(%struct.task_struct* %73)
  br label %75

75:                                               ; preds = %72, %47
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @engine_wants_stop(%struct.utrace_engine*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @wait_task_inactive(%struct.task_struct*, i64) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
