; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-transport.c_rxrpc_cleanup_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-transport.c_rxrpc_cleanup_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_transport = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"DESTROY TRANS %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_transport*)* @rxrpc_cleanup_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_cleanup_transport(%struct.rxrpc_transport* %0) #0 {
  %2 = alloca %struct.rxrpc_transport*, align 8
  store %struct.rxrpc_transport* %0, %struct.rxrpc_transport** %2, align 8
  %3 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %2, align 8
  %4 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @_net(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %2, align 8
  %8 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %7, i32 0, i32 2
  %9 = call i32 @rxrpc_purge_queue(i32* %8)
  %10 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %2, align 8
  %11 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rxrpc_put_local(i32 %12)
  %14 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %2, align 8
  %15 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rxrpc_put_peer(i32 %16)
  %18 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %2, align 8
  %19 = call i32 @kfree(%struct.rxrpc_transport* %18)
  ret void
}

declare dso_local i32 @_net(i8*, i32) #1

declare dso_local i32 @rxrpc_purge_queue(i32*) #1

declare dso_local i32 @rxrpc_put_local(i32) #1

declare dso_local i32 @rxrpc_put_peer(i32) #1

declare dso_local i32 @kfree(%struct.rxrpc_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
