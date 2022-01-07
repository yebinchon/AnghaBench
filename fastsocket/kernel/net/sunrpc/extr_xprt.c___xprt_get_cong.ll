; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c___xprt_get_cong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c___xprt_get_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32 }
%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"RPC: %5u xprt_cwnd_limited cong = %lu cwnd = %lu\0A\00", align 1
@RPC_CWNDSCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_xprt*, %struct.rpc_task*)* @__xprt_get_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xprt_get_cong(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 1
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %27 = call i64 @RPCXPRT_CONGESTED(%struct.rpc_xprt* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %15
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i64, i64* @RPC_CWNDSCALE, align 8
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %29, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i64 @RPCXPRT_CONGESTED(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
