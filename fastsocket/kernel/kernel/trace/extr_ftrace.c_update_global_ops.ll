; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c_update_global_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ftrace.c_update_global_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@ftrace_global_list = common dso_local global %struct.TYPE_5__* null, align 8
@ftrace_list_end = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ftrace_global_list_func = common dso_local global i32 0, align 4
@ftrace_pids = common dso_local global i32 0, align 4
@ftrace_pid_func = common dso_local global i32 0, align 4
@global_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_global_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_global_ops() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftrace_global_list, align 8
  %3 = icmp eq %struct.TYPE_5__* %2, @ftrace_list_end
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftrace_global_list, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, @ftrace_list_end
  br i1 %8, label %9, label %13

9:                                                ; preds = %4, %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftrace_global_list, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %1, align 4
  br label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ftrace_global_list_func, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = call i32 @list_empty(i32* @ftrace_pids)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @set_ftrace_pid_function(i32 %19)
  %21 = load i32, i32* @ftrace_pid_func, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %1, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global_ops, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @set_ftrace_pid_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
