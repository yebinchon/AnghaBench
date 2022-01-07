; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_gnu_kill_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_gnu_kill_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.proc* }
%struct.proc = type { i32 }

@current_inferior = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"terminating...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gnu_kill_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnu_kill_inferior() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_inferior, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load %struct.proc*, %struct.proc** %3, align 8
  store %struct.proc* %4, %struct.proc** %1, align 8
  %5 = load %struct.proc*, %struct.proc** %1, align 8
  %6 = icmp ne %struct.proc* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load %struct.proc*, %struct.proc** %1, align 8
  %9 = call i32 @proc_debug(%struct.proc* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.proc*, %struct.proc** %1, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @task_terminate(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_inferior, align 8
  %15 = call i32 @inf_set_pid(%struct.TYPE_3__* %14, i32 -1)
  br label %16

16:                                               ; preds = %7, %0
  %17 = call i32 (...) @target_mourn_inferior()
  ret void
}

declare dso_local i32 @proc_debug(%struct.proc*, i8*) #1

declare dso_local i32 @task_terminate(i32) #1

declare dso_local i32 @inf_set_pid(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
