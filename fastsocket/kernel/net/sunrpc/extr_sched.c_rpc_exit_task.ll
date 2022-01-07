; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_exit_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_exit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_task*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_exit_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %3 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.rpc_task*, i32)* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %15, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(%struct.rpc_task* %17, i32 %20)
  %22 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %11
  %27 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %28 = call i32 @RPC_ASSASSINATED(%struct.rpc_task* %27)
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = call i32 @xprt_release(%struct.rpc_task* %30)
  br label %32

32:                                               ; preds = %26, %11
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RPC_ASSASSINATED(%struct.rpc_task*) #1

declare dso_local i32 @xprt_release(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
