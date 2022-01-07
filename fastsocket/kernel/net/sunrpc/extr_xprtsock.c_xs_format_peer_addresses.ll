; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_format_peer_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_format_peer_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i8** }

@RPC_DISPLAY_PROTO = common dso_local global i64 0, align 8
@RPC_DISPLAY_NETID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, i8*, i8*)* @xs_format_peer_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_format_peer_addresses(%struct.rpc_xprt* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = load i64, i64* @RPC_DISPLAY_PROTO, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  store i8* %7, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i64, i64* @RPC_DISPLAY_NETID, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8* %13, i8** %18, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %20 = call i32 @xs_format_common_peer_addresses(%struct.rpc_xprt* %19)
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %22 = call i32 @xs_format_common_peer_ports(%struct.rpc_xprt* %21)
  ret void
}

declare dso_local i32 @xs_format_common_peer_addresses(%struct.rpc_xprt*) #1

declare dso_local i32 @xs_format_common_peer_ports(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
