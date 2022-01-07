; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_task_set_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_task_set_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32, i32, i64, i32 }

@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.rpc_clnt*)* @rpc_task_set_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_task_set_client(%struct.rpc_task* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %4, align 8
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %6 = icmp ne %struct.rpc_clnt* %5, null
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = call i32 @rpc_task_release_client(%struct.rpc_task* %8)
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 2
  store %struct.rpc_clnt* %10, %struct.rpc_clnt** %12, align 8
  %13 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %13, i32 0, i32 3
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load i32, i32* @RPC_TASK_SOFT, align 4
  %22 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %7
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %30, i32 0, i32 0
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %32, i32 0, i32 1
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  br label %38

38:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @rpc_task_release_client(%struct.rpc_task*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
