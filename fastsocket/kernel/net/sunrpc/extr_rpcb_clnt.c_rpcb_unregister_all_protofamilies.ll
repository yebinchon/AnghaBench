; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_unregister_all_protofamilies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_unregister_all_protofamilies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32*, %struct.rpcbind_args* }
%struct.rpcbind_args = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"RPC:       unregistering [%u, %u, '%s'] with local rpcbind\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rpcb_procedures4 = common dso_local global i32* null, align 8
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@rpcb_local_clnt4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_message*)* @rpcb_unregister_all_protofamilies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_unregister_all_protofamilies(%struct.rpc_message* %0) #0 {
  %2 = alloca %struct.rpc_message*, align 8
  %3 = alloca %struct.rpcbind_args*, align 8
  store %struct.rpc_message* %0, %struct.rpc_message** %2, align 8
  %4 = load %struct.rpc_message*, %struct.rpc_message** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %4, i32 0, i32 1
  %6 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  store %struct.rpcbind_args* %6, %struct.rpcbind_args** %3, align 8
  %7 = load %struct.rpcbind_args*, %struct.rpcbind_args** %3, align 8
  %8 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rpcbind_args*, %struct.rpcbind_args** %3, align 8
  %11 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rpcbind_args*, %struct.rpcbind_args** %3, align 8
  %14 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.rpcbind_args*, %struct.rpcbind_args** %3, align 8
  %18 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i32*, i32** @rpcb_procedures4, align 8
  %20 = load i64, i64* @RPCBPROC_UNSET, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load %struct.rpc_message*, %struct.rpc_message** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* @rpcb_local_clnt4, align 4
  %25 = load %struct.rpc_message*, %struct.rpc_message** %2, align 8
  %26 = call i32 @rpcb_register_call(i32 %24, %struct.rpc_message* %25)
  ret i32 %26
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @rpcb_register_call(i32, %struct.rpc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
