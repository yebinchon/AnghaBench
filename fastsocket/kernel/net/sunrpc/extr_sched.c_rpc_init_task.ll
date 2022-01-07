; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_init_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rpc_task = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.rpc_task_setup = type { i32, i64, i32, %struct.TYPE_4__*, i32 }

@RPC_PRIORITY_LOW = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@rpc_prepare_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RPC:       new task initialized, procpid %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.rpc_task_setup*)* @rpc_init_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_init_task(%struct.rpc_task* %0, %struct.rpc_task_setup* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_task_setup*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_task_setup* %1, %struct.rpc_task_setup** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %6 = call i32 @memset(%struct.rpc_task* %5, i32 0, i32 64)
  %7 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 12
  %9 = call i32 @atomic_set(i32* %8, i32 1)
  %10 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 5
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 9
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %30, i32 0, i32 1
  store i32 2, i32* %31, align 4
  %32 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %33 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %32, i32 0, i32 2
  store i32 2, i32* %33, align 8
  %34 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RPC_PRIORITY_LOW, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %39, i32 0, i32 8
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %4, align 8
  %47 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %50 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %52 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %2
  %58 = load i32, i32* @rpc_prepare_task, align 4
  %59 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %60 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %2
  %62 = call i32 (...) @ktime_get()
  %63 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %64 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %66 = call i32 @task_pid_nr(%struct.TYPE_5__* %65)
  %67 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %66)
  ret void
}

declare dso_local i32 @memset(%struct.rpc_task*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
