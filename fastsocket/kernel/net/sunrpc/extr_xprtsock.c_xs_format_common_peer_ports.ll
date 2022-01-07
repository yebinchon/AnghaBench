; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_format_common_peer_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_format_common_peer_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i8** }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_DISPLAY_PORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%4hx\00", align 1
@RPC_DISPLAY_HEX_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xs_format_common_peer_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_format_common_peer_ports(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca [128 x i8], align 16
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %6 = call %struct.sockaddr* @xs_addr(%struct.rpc_xprt* %5)
  store %struct.sockaddr* %6, %struct.sockaddr** %3, align 8
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %8 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %9 = call i32 @rpc_get_port(%struct.sockaddr* %8)
  %10 = call i32 @snprintf(i8* %7, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kstrdup(i8* %11, i32 %12)
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i64, i64* @RPC_DISPLAY_PORT, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8* %13, i8** %18, align 8
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %20 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %21 = call i32 @rpc_get_port(%struct.sockaddr* %20)
  %22 = call i32 @snprintf(i8* %19, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* @RPC_DISPLAY_HEX_PORT, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  store i8* %25, i8** %30, align 8
  ret void
}

declare dso_local %struct.sockaddr* @xs_addr(%struct.rpc_xprt*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rpc_get_port(%struct.sockaddr*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
