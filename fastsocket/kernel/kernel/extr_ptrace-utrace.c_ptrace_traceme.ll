; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_traceme.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_traceme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@PT_UTRACED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_traceme() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %5 = call i32 @ptrace_attach_task(%struct.TYPE_6__* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %1, align 4
  br label %52

11:                                               ; preds = %0
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  %14 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @security_ptrace_traceme(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %11
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PF_EXITING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @PT_UTRACED, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @__ptrace_link(%struct.TYPE_6__* %38, %struct.TYPE_7__* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %25, %11
  %44 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %49 = call i32 @ptrace_abort_attach(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %50, %9
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @ptrace_attach_task(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @security_ptrace_traceme(i32) #1

declare dso_local i32 @__ptrace_link(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @ptrace_abort_attach(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
