; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_wake_futex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_wake_futex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { i32*, %struct.TYPE_2__, %struct.task_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@TASK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_q*)* @wake_futex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_futex(%struct.futex_q* %0) #0 {
  %2 = alloca %struct.futex_q*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.futex_q* %0, %struct.futex_q** %2, align 8
  %4 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %5 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %4, i32 0, i32 2
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call i32 @get_task_struct(%struct.task_struct* %7)
  %9 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %10 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %9, i32 0, i32 1
  %11 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %12 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @plist_del(%struct.TYPE_2__* %10, i32* %13)
  %15 = call i32 (...) @smp_wmb()
  %16 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %17 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = load i32, i32* @TASK_NORMAL, align 4
  %20 = call i32 @wake_up_state(%struct.task_struct* %18, i32 %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call i32 @put_task_struct(%struct.task_struct* %21)
  ret void
}

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @plist_del(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up_state(%struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
