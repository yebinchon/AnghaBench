; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_request_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_4__*, %struct.rpc_rqst* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_rqst = type { i32, i32*, i32*, %struct.rpc_xprt*, %struct.rpc_task*, i32, i32 }
%struct.rpc_xprt = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"RPC: %5u reserved req %p xid %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.rpc_xprt*)* @xprt_request_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_request_init(%struct.rpc_task* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 2
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  store %struct.rpc_rqst* %8, %struct.rpc_rqst** %5, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 6
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %23 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %22, i32 0, i32 4
  store %struct.rpc_task* %21, %struct.rpc_task** %23, align 8
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %25 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %26 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %25, i32 0, i32 3
  store %struct.rpc_xprt* %24, %struct.rpc_xprt** %26, align 8
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %30 = call i32 @xprt_alloc_xid(%struct.rpc_xprt* %29)
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %36 = call i32 @xprt_reset_majortimeo(%struct.rpc_rqst* %35)
  %37 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ntohl(i32 %43)
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39, %struct.rpc_rqst* %40, i32 %44)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xprt_alloc_xid(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_reset_majortimeo(%struct.rpc_rqst*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_rqst*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
