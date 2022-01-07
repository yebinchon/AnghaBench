; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_task_release_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_task_release_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_clnt*, i32 }
%struct.rpc_clnt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_task_release_client(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 0
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %6, %struct.rpc_clnt** %3, align 8
  %7 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %8 = icmp ne %struct.rpc_clnt* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 0
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %20, align 8
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %22 = call i32 @rpc_release_client(%struct.rpc_clnt* %21)
  br label %23

23:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_release_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
