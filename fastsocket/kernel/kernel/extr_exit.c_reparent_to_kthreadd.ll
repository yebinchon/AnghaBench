; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_reparent_to_kthreadd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_reparent_to_kthreadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_13__* null, align 8
@kthreadd_task = common dso_local global %struct.TYPE_14__* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@init_task = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@init_cred = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reparent_to_kthreadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reparent_to_kthreadd() #0 {
  %1 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %2 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %3 = call i32 @ptrace_unlink(%struct.TYPE_13__* %2)
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kthreadd_task, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %8, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = call i32 @list_move_tail(i32* %10, i32* %14)
  %16 = load i32, i32* @SIGCHLD, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %20 = call i64 @task_nice(%struct.TYPE_13__* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %24 = call i32 @set_user_nice(%struct.TYPE_13__* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @init_task, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %30, i32 %33, i32 4)
  %35 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @init_cred, i32 0, i32 0))
  %36 = call i32 @commit_creds(%struct.TYPE_16__* @init_cred)
  %37 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  ret void
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @ptrace_unlink(%struct.TYPE_13__*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i64 @task_nice(%struct.TYPE_13__*) #1

declare dso_local i32 @set_user_nice(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @commit_creds(%struct.TYPE_16__*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
