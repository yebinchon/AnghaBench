; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_traceme.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_traceme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@PT_PTRACED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_traceme() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EPERM, align 4
  %3 = sub nsw i32 0, %2
  store i32 %3, i32* %1, align 4
  %4 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @security_ptrace_traceme(i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_EXITING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load i64, i64* @PT_PTRACED, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @__ptrace_link(%struct.TYPE_4__* %29, %struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %25, %16, %9
  br label %35

35:                                               ; preds = %34, %0
  %36 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @security_ptrace_traceme(i32) #1

declare dso_local i32 @__ptrace_link(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
