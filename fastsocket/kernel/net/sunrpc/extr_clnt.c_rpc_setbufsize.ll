; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_setbufsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_setbufsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_setbufsize(%struct.rpc_clnt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %8, i32 0, i32 0
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %7, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.rpc_xprt*, i32, i32)*, i32 (%struct.rpc_xprt*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.rpc_xprt*, i32, i32)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %19 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.rpc_xprt*, i32, i32)*, i32 (%struct.rpc_xprt*, i32, i32)** %21, align 8
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %22(%struct.rpc_xprt* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
