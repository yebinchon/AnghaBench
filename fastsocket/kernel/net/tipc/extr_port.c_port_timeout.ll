; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@PROBING = common dso_local global i64 0, align 8
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i32 0, align 4
@CONN_MANAGER = common dso_local global i32 0, align 4
@CONN_PROBE = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @port_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.port* @tipc_port_lock(i64 %5)
  store %struct.port* %6, %struct.port** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %7 = load %struct.port*, %struct.port** %3, align 8
  %8 = icmp ne %struct.port* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.port*, %struct.port** %3, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.port*, %struct.port** %3, align 8
  %18 = call i32 @tipc_port_unlock(%struct.port* %17)
  br label %61

19:                                               ; preds = %10
  %20 = load %struct.port*, %struct.port** %3, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PROBING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.port*, %struct.port** %3, align 8
  %27 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  %28 = call %struct.sk_buff* @port_build_self_abort_msg(%struct.port* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  br label %56

29:                                               ; preds = %19
  %30 = load %struct.port*, %struct.port** %3, align 8
  %31 = call i32 @port_peerport(%struct.port* %30)
  %32 = load %struct.port*, %struct.port** %3, align 8
  %33 = call i32 @port_peernode(%struct.port* %32)
  %34 = load %struct.port*, %struct.port** %3, align 8
  %35 = getelementptr inbounds %struct.port, %struct.port* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @tipc_own_addr, align 4
  %39 = load i32, i32* @CONN_MANAGER, align 4
  %40 = load i32, i32* @CONN_PROBE, align 4
  %41 = load i32, i32* @TIPC_OK, align 4
  %42 = load %struct.port*, %struct.port** %3, align 8
  %43 = call i32 @port_out_seqno(%struct.port* %42)
  %44 = call %struct.sk_buff* @port_build_proto_msg(i32 %31, i32 %33, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %43, i32 0)
  store %struct.sk_buff* %44, %struct.sk_buff** %4, align 8
  %45 = load %struct.port*, %struct.port** %3, align 8
  %46 = call i32 @port_incr_out_seqno(%struct.port* %45)
  %47 = load i64, i64* @PROBING, align 8
  %48 = load %struct.port*, %struct.port** %3, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.port*, %struct.port** %3, align 8
  %51 = getelementptr inbounds %struct.port, %struct.port* %50, i32 0, i32 2
  %52 = load %struct.port*, %struct.port** %3, align 8
  %53 = getelementptr inbounds %struct.port, %struct.port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @k_start_timer(i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %29, %25
  %57 = load %struct.port*, %struct.port** %3, align 8
  %58 = call i32 @tipc_port_unlock(%struct.port* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @tipc_net_route_msg(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %56, %16, %9
  ret void
}

declare dso_local %struct.port* @tipc_port_lock(i64) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local %struct.sk_buff* @port_build_self_abort_msg(%struct.port*, i32) #1

declare dso_local %struct.sk_buff* @port_build_proto_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @port_peerport(%struct.port*) #1

declare dso_local i32 @port_peernode(%struct.port*) #1

declare dso_local i32 @port_out_seqno(%struct.port*) #1

declare dso_local i32 @port_incr_out_seqno(%struct.port*) #1

declare dso_local i32 @k_start_timer(i32*, i32) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
