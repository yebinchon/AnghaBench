; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_coredump_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_coredump_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.mm_struct = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.core_thread* }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_11__* null, align 8
@SIGNAL_GROUP_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32)* @coredump_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coredump_finish(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.core_thread*, align 8
  %6 = alloca %struct.core_thread*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %17 = call i32 @__fatal_signal_pending(%struct.TYPE_11__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, 128
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %15, %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @SIGNAL_GROUP_EXIT, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.core_thread*, %struct.core_thread** %45, align 8
  store %struct.core_thread* %46, %struct.core_thread** %6, align 8
  br label %47

47:                                               ; preds = %50, %26
  %48 = load %struct.core_thread*, %struct.core_thread** %6, align 8
  store %struct.core_thread* %48, %struct.core_thread** %5, align 8
  %49 = icmp ne %struct.core_thread* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.core_thread*, %struct.core_thread** %5, align 8
  %52 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %51, i32 0, i32 1
  %53 = load %struct.core_thread*, %struct.core_thread** %52, align 8
  store %struct.core_thread* %53, %struct.core_thread** %6, align 8
  %54 = load %struct.core_thread*, %struct.core_thread** %5, align 8
  %55 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %54, i32 0, i32 0
  %56 = load %struct.task_struct*, %struct.task_struct** %55, align 8
  store %struct.task_struct* %56, %struct.task_struct** %7, align 8
  %57 = call i32 (...) @smp_mb()
  %58 = load %struct.core_thread*, %struct.core_thread** %5, align 8
  %59 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %58, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %59, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %61 = call i32 @wake_up_process(%struct.task_struct* %60)
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %64, align 8
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__fatal_signal_pending(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
