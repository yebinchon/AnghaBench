; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_dump_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.task_struct = type { i32 }
%struct.mem_cgroup = type { i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [78 x i8] c"%s invoked oom-killer: gfp_mask=0x%x, order=%d, oom_adj=%d, oom_score_adj=%d\0A\00", align 1
@SHOW_MEM_FILTER_NODES = common dso_local global i32 0, align 4
@sysctl_oom_dump_tasks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, i32, %struct.mem_cgroup*, i32*)* @dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_header(%struct.task_struct* %0, i32 %1, i32 %2, %struct.mem_cgroup* %3, i32* %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i32*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mem_cgroup* %3, %struct.mem_cgroup** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %12 = call i32 @task_lock(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_warning(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %22, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %30 = call i32 @cpuset_print_task_mems_allowed(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %32 = call i32 @task_unlock(%struct.TYPE_7__* %31)
  %33 = call i32 (...) @dump_stack()
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = call i32 @mem_cgroup_print_oom_info(%struct.mem_cgroup* %34, %struct.task_struct* %35)
  %37 = load i32, i32* @SHOW_MEM_FILTER_NODES, align 4
  %38 = call i32 @show_mem(i32 %37)
  %39 = load i64, i64* @sysctl_oom_dump_tasks, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @dump_tasks(%struct.mem_cgroup* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %5
  ret void
}

declare dso_local i32 @task_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpuset_print_task_mems_allowed(%struct.TYPE_7__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @mem_cgroup_print_oom_info(%struct.mem_cgroup*, %struct.task_struct*) #1

declare dso_local i32 @show_mem(i32) #1

declare dso_local i32 @dump_tasks(%struct.mem_cgroup*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
