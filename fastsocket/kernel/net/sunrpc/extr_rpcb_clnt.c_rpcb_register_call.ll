; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_register_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_register_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_message = type { i32* }

@RPC_TASK_SOFTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"RPC:       failed to contact local rpcbind server (errno %d).\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.rpc_message*)* @rpcb_register_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_register_call(%struct.rpc_clnt* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rpc_message*, %struct.rpc_message** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store i32* %6, i32** %9, align 8
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %11 = load %struct.rpc_message*, %struct.rpc_message** %5, align 8
  %12 = load i32, i32* @RPC_TASK_SOFTCONN, align 4
  %13 = call i32 @rpc_call_sync(%struct.rpc_clnt* %10, %struct.rpc_message* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
