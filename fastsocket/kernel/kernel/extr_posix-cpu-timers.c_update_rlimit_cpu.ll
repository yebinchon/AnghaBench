; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_update_rlimit_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_update_rlimit_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__*, %struct.signal_struct* }
%struct.TYPE_3__ = type { i32 }
%struct.signal_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CPUCLOCK_PROF = common dso_local global i64 0, align 8
@cputime_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_rlimit_cpu(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.signal_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @secs_to_cputime(i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  %11 = load %struct.signal_struct*, %struct.signal_struct** %10, align 8
  store %struct.signal_struct* %11, %struct.signal_struct** %6, align 8
  %12 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %13 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* @CPUCLOCK_PROF, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @cputime_zero, align 4
  %20 = call i64 @cputime_eq(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %24 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* @CPUCLOCK_PROF, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @cputime_gt(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %22, %2
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = load i64, i64* @CPUCLOCK_PROF, align 8
  %41 = call i32 @set_process_cpu_timer(%struct.task_struct* %39, i64 %40, i32* %5, i32* null)
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  br label %47

47:                                               ; preds = %33, %22
  ret void
}

declare dso_local i32 @secs_to_cputime(i64) #1

declare dso_local i64 @cputime_eq(i32, i32) #1

declare dso_local i64 @cputime_gt(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_process_cpu_timer(%struct.task_struct*, i64, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
