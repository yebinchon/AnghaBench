; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_freezer.c_refrigerator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_freezer.c_refrigerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s entered refrigerator\0A\00", align 1
@PF_FREEZING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s left refrigerator\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refrigerator() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %3 = call i32 @task_lock(%struct.TYPE_8__* %2)
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %5 = call i64 @freezing(%struct.TYPE_8__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 (...) @frozen_process()
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %10 = call i32 @task_unlock(%struct.TYPE_8__* %9)
  br label %14

11:                                               ; preds = %0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %13 = call i32 @task_unlock(%struct.TYPE_8__* %12)
  br label %60

14:                                               ; preds = %7
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %1, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = call i32 (...) @recalc_sigpending()
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load i32, i32* @PF_FREEZING, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %45, %14
  %39 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %40 = call i32 @set_current_state(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %42 = call i32 @frozen(%struct.TYPE_8__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %47

45:                                               ; preds = %38
  %46 = call i32 (...) @schedule()
  br label %38

47:                                               ; preds = %44
  %48 = load i32, i32* @PF_FREEZING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @__set_current_state(i64 %58)
  br label %60

60:                                               ; preds = %47, %11
  ret void
}

declare dso_local i32 @task_lock(%struct.TYPE_8__*) #1

declare dso_local i64 @freezing(%struct.TYPE_8__*) #1

declare dso_local i32 @frozen_process(...) #1

declare dso_local i32 @task_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @frozen(%struct.TYPE_8__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
