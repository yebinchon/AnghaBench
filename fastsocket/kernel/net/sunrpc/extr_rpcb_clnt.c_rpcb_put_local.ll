; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_put_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_put_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }

@rpcb_local_clnt = common dso_local global %struct.rpc_clnt* null, align 8
@rpcb_local_clnt4 = common dso_local global %struct.rpc_clnt* null, align 8
@rpcb_clnt_lock = common dso_local global i32 0, align 4
@rpcb_users = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcb_put_local() #0 {
  %1 = alloca %struct.rpc_clnt*, align 8
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.rpc_clnt*, %struct.rpc_clnt** @rpcb_local_clnt, align 8
  store %struct.rpc_clnt* %4, %struct.rpc_clnt** %1, align 8
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** @rpcb_local_clnt4, align 8
  store %struct.rpc_clnt* %5, %struct.rpc_clnt** %2, align 8
  %6 = call i32 @spin_lock(i32* @rpcb_clnt_lock)
  %7 = load i64, i64* @rpcb_users, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @rpcb_users, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store %struct.rpc_clnt* null, %struct.rpc_clnt** @rpcb_local_clnt, align 8
  store %struct.rpc_clnt* null, %struct.rpc_clnt** @rpcb_local_clnt4, align 8
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i64, i64* @rpcb_users, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = call i32 @spin_unlock(i32* @rpcb_clnt_lock)
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %21 = icmp ne %struct.rpc_clnt* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %24 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %1, align 8
  %27 = icmp ne %struct.rpc_clnt* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.rpc_clnt*, %struct.rpc_clnt** %1, align 8
  %30 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
