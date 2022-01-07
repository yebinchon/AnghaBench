; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_set_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_set_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }

@rpcb_local_clnt = common dso_local global %struct.rpc_clnt* null, align 8
@rpcb_local_clnt4 = common dso_local global %struct.rpc_clnt* null, align 8
@rpcb_users = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"RPC:       created new rpcb local clients (rpcb_local_clnt: %p, rpcb_local_clnt4: %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_clnt*, %struct.rpc_clnt*)* @rpcb_set_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcb_set_local(%struct.rpc_clnt* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %3, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %4, align 8
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  store %struct.rpc_clnt* %5, %struct.rpc_clnt** @rpcb_local_clnt, align 8
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_clnt* %6, %struct.rpc_clnt** @rpcb_local_clnt4, align 8
  %7 = call i32 (...) @smp_wmb()
  store i32 1, i32* @rpcb_users, align 4
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** @rpcb_local_clnt, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** @rpcb_local_clnt4, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), %struct.rpc_clnt* %8, %struct.rpc_clnt* %9)
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @dprintk(i8*, %struct.rpc_clnt*, %struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
