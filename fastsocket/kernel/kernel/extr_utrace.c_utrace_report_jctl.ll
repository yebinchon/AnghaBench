; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_jctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_jctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.utrace = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@report = common dso_local global i32 0, align 4
@JCTL = common dso_local global i32 0, align 4
@report_jctl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @utrace_report_jctl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.utrace*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = call %struct.utrace* @task_utrace_struct(%struct.task_struct* %8)
  store %struct.utrace* %9, %struct.utrace** %6, align 8
  %10 = load i32, i32* @report, align 4
  %11 = call i32 @INIT_REPORT(i32 %10)
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = load %struct.utrace*, %struct.utrace** %6, align 8
  %19 = load i32, i32* @JCTL, align 4
  %20 = call i32 @UTRACE_EVENT(i32 %19)
  %21 = load i32, i32* @report_jctl, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @REPORT(%struct.task_struct* %17, %struct.utrace* %18, i32* @report, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  ret void
}

declare dso_local %struct.utrace* @task_utrace_struct(%struct.task_struct*) #1

declare dso_local i32 @INIT_REPORT(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @REPORT(%struct.task_struct*, %struct.utrace*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UTRACE_EVENT(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
