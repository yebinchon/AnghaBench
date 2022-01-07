; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_peeraddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_peeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i64, i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpc_peeraddr(%struct.rpc_clnt* %0, %struct.sockaddr* %1, i64 %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %9, i32 0, i32 0
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  store %struct.rpc_xprt* %11, %struct.rpc_xprt** %8, align 8
  store i64 4, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %19, i32 0, i32 0
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %20, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %21, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @memcpy(%struct.sockaddr* %18, i32* %22, i64 %23)
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  ret i64 %27
}

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
