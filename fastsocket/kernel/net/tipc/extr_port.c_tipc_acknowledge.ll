; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_acknowledge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@tipc_own_addr = common dso_local global i32 0, align 4
@CONN_MANAGER = common dso_local global i32 0, align 4
@CONN_ACK = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_acknowledge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.port* @tipc_port_lock(i32 %7)
  store %struct.port* %8, %struct.port** %5, align 8
  %9 = load %struct.port*, %struct.port** %5, align 8
  %10 = icmp ne %struct.port* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.port*, %struct.port** %5, align 8
  %14 = getelementptr inbounds %struct.port, %struct.port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.port*, %struct.port** %5, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, %19
  store i32 %24, i32* %22, align 8
  %25 = load %struct.port*, %struct.port** %5, align 8
  %26 = call i32 @port_peerport(%struct.port* %25)
  %27 = load %struct.port*, %struct.port** %5, align 8
  %28 = call i32 @port_peernode(%struct.port* %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @tipc_own_addr, align 4
  %31 = load i32, i32* @CONN_MANAGER, align 4
  %32 = load i32, i32* @CONN_ACK, align 4
  %33 = load i32, i32* @TIPC_OK, align 4
  %34 = load %struct.port*, %struct.port** %5, align 8
  %35 = call i32 @port_out_seqno(%struct.port* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.sk_buff* @port_build_proto_msg(i32 %26, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  br label %38

38:                                               ; preds = %18, %12
  %39 = load %struct.port*, %struct.port** %5, align 8
  %40 = call i32 @tipc_port_unlock(%struct.port* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @tipc_net_route_msg(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %38, %11
  ret void
}

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local %struct.sk_buff* @port_build_proto_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @port_peerport(%struct.port*) #1

declare dso_local i32 @port_peernode(%struct.port*) #1

declare dso_local i32 @port_out_seqno(%struct.port*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
