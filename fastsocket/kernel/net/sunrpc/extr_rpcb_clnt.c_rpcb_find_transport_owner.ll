; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_find_transport_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_find_transport_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i64, %struct.rpc_clnt*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.rpc_clnt*)* @rpcb_find_transport_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @rpcb_find_transport_owner(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %4 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %4, i32 0, i32 1
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %6, %struct.rpc_clnt** %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %10 = icmp ne %struct.rpc_clnt* %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  store %struct.rpc_clnt* %27, %struct.rpc_clnt** %2, align 8
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %28, i32 0, i32 1
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %29, align 8
  store %struct.rpc_clnt* %30, %struct.rpc_clnt** %3, align 8
  br label %7

31:                                               ; preds = %25, %19, %7
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  ret %struct.rpc_clnt* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
