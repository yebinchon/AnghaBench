; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_shutdown_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_shutdown_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"RPC:       shutting down %s client for %s\0A\00", align 1
@destroy_wait = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_shutdown_client(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %3 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  br label %10

10:                                               ; preds = %16, %1
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %11, i32 0, i32 0
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %18 = call i32 @rpc_killall_tasks(%struct.rpc_clnt* %17)
  %19 = load i32, i32* @destroy_wait, align 4
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 1, %23
  %25 = call i32 @wait_event_timeout(i32 %19, i32 %22, i32 %24)
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %28 = call i32 @rpc_release_client(%struct.rpc_clnt* %27)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rpc_killall_tasks(%struct.rpc_clnt*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @rpc_release_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
