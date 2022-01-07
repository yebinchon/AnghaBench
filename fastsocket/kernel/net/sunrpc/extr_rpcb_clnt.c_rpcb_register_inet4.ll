; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_register_inet4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_register_inet4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rpc_message = type { i32*, %struct.rpcbind_args* }
%struct.rpcbind_args = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"RPC:       %sregistering [%u, %u, %s, '%s'] with local rpcbind\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@rpcb_procedures4 = common dso_local global i32* null, align 8
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@RPCBPROC_SET = common dso_local global i64 0, align 8
@rpcb_local_clnt4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.rpc_message*)* @rpcb_register_inet4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_register_inet4(%struct.sockaddr* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.rpcbind_args*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %5, align 8
  %11 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  %13 = load %struct.rpcbind_args*, %struct.rpcbind_args** %12, align 8
  store %struct.rpcbind_args* %13, %struct.rpcbind_args** %6, align 8
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call zeroext i16 @ntohs(i32 %16)
  store i16 %17, i16* %7, align 2
  %18 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %19 = call i32 @rpc_sockaddr2uaddr(%struct.sockaddr* %18)
  %20 = load %struct.rpcbind_args*, %struct.rpcbind_args** %6, align 8
  %21 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.rpcbind_args*, %struct.rpcbind_args** %6, align 8
  %28 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rpcbind_args*, %struct.rpcbind_args** %6, align 8
  %31 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rpcbind_args*, %struct.rpcbind_args** %6, align 8
  %34 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rpcbind_args*, %struct.rpcbind_args** %6, align 8
  %37 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load i32*, i32** @rpcb_procedures4, align 8
  %41 = load i64, i64* @RPCBPROC_UNSET, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load i16, i16* %7, align 2
  %46 = icmp ne i16 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load i32*, i32** @rpcb_procedures4, align 8
  %49 = load i64, i64* @RPCBPROC_SET, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %52 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %47, %2
  %54 = load i32, i32* @rpcb_local_clnt4, align 4
  %55 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %56 = call i32 @rpcb_register_call(i32 %54, %struct.rpc_message* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.rpcbind_args*, %struct.rpcbind_args** %6, align 8
  %58 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kfree(i32 %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @rpc_sockaddr2uaddr(%struct.sockaddr*) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rpcb_register_call(i32, %struct.rpc_message*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
