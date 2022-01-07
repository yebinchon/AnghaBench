; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_run_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_run_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32* }
%struct.rpc_task_setup = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %0) #0 {
  %2 = alloca %struct.rpc_task_setup*, align 8
  %3 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task_setup* %0, %struct.rpc_task_setup** %2, align 8
  %4 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %2, align 8
  %5 = call %struct.rpc_task* @rpc_new_task(%struct.rpc_task_setup* %4)
  store %struct.rpc_task* %5, %struct.rpc_task** %3, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = call i64 @IS_ERR(%struct.rpc_task* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rpc_task_set_client(%struct.rpc_task* %11, i32 %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %17 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rpc_task_set_rpc_message(%struct.rpc_task* %16, i32 %19)
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %27 = call i32 @rpc_call_start(%struct.rpc_task* %26)
  br label %28

28:                                               ; preds = %25, %10
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %33 = call i32 @rpc_execute(%struct.rpc_task* %32)
  br label %34

34:                                               ; preds = %28, %9
  %35 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  ret %struct.rpc_task* %35
}

declare dso_local %struct.rpc_task* @rpc_new_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_task_set_client(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_task_set_rpc_message(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rpc_execute(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
