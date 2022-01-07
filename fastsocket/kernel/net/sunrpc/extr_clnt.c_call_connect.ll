; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_call_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_call_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, i32, i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"RPC: %5u call_connect xprt %p %s connected\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"is not\00", align 1
@call_transmit = common dso_local global i32 0, align 4
@call_connect_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_connect(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 3
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %6, %struct.rpc_xprt** %3, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %12 = call i64 @xprt_connected(%struct.rpc_xprt* %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.rpc_xprt* %10, i8* %15)
  %17 = load i32, i32* @call_transmit, align 4
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %21 = call i64 @xprt_connected(%struct.rpc_xprt* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @call_connect_status, align 4
  %25 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %28 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %34 = call i32 @xprt_connect(%struct.rpc_task* %33)
  br label %35

35:                                               ; preds = %31, %32, %1
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_xprt*, i8*) #1

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_connect(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
