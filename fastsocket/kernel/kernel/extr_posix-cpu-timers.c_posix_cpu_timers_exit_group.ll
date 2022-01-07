; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timers_exit_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timers_exit_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__, i32, i32, %struct.signal_struct* }
%struct.TYPE_2__ = type { i64 }
%struct.signal_struct = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @posix_cpu_timers_exit_group(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.signal_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 3
  %6 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  store %struct.signal_struct* %6, %struct.signal_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 3
  %9 = load %struct.signal_struct*, %struct.signal_struct** %8, align 8
  %10 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %16 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cputime_add(i32 %14, i32 %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %23 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cputime_add(i32 %21, i32 %24)
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %31 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @cleanup_timers(i32 %11, i32 %18, i32 %25, i64 %33)
  ret void
}

declare dso_local i32 @cleanup_timers(i32, i32, i32, i64) #1

declare dso_local i32 @cputime_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
