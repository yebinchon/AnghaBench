; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*)* }

@.str = private unnamed_addr constant [36 x i8] c"RPC:       destroying transport %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xprt_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_destroy(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rpc_xprt* %3)
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 6
  %7 = call i32 @del_timer_sync(i32* %6)
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %8, i32 0, i32 5
  %10 = call i32 @rpc_destroy_wait_queue(i32* %9)
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 4
  %13 = call i32 @rpc_destroy_wait_queue(i32* %12)
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 3
  %16 = call i32 @rpc_destroy_wait_queue(i32* %15)
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 2
  %19 = call i32 @rpc_destroy_wait_queue(i32* %18)
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 1
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.rpc_xprt*)*, i32 (%struct.rpc_xprt*)** %26, align 8
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %29 = call i32 %27(%struct.rpc_xprt* %28)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_xprt*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
