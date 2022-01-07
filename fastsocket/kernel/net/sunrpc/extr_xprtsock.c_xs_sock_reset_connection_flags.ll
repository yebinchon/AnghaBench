; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_sock_reset_connection_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_sock_reset_connection_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }

@XPRT_CONNECTION_ABORT = common dso_local global i32 0, align 4
@XPRT_CONNECTION_CLOSE = common dso_local global i32 0, align 4
@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@XPRT_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xs_sock_reset_connection_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_sock_reset_connection_flags(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = call i32 (...) @smp_mb__before_clear_bit()
  %4 = load i32, i32* @XPRT_CONNECTION_ABORT, align 4
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 0
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = load i32, i32* @XPRT_CONNECTION_CLOSE, align 4
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %9, i32 0, i32 0
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %13, i32 0, i32 0
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @XPRT_CLOSING, align 4
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = call i32 (...) @smp_mb__after_clear_bit()
  ret void
}

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
