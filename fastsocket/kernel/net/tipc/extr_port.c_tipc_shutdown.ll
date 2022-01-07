; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@TIPC_CONN_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_shutdown(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call %struct.port* @tipc_port_lock(i64 %7)
  store %struct.port* %8, %struct.port** %4, align 8
  %9 = load %struct.port*, %struct.port** %4, align 8
  %10 = icmp ne %struct.port* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.port*, %struct.port** %4, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.port*, %struct.port** %4, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i64 @msg_importance(i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.port*, %struct.port** %4, align 8
  %33 = call i32 @port_peerport(%struct.port* %32)
  %34 = load %struct.port*, %struct.port** %4, align 8
  %35 = call i32 @port_peernode(%struct.port* %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* @tipc_own_addr, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @TIPC_CONN_MSG, align 4
  %40 = load i32, i32* @TIPC_CONN_SHUTDOWN, align 4
  %41 = load %struct.port*, %struct.port** %4, align 8
  %42 = call i32 @port_out_seqno(%struct.port* %41)
  %43 = call %struct.sk_buff* @port_build_proto_msg(i32 %33, i32 %35, i64 %36, i32 %37, i64 %38, i32 %39, i32 %40, i32 %42, i32 0)
  store %struct.sk_buff* %43, %struct.sk_buff** %5, align 8
  br label %44

44:                                               ; preds = %31, %14
  %45 = load %struct.port*, %struct.port** %4, align 8
  %46 = call i32 @tipc_port_unlock(%struct.port* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @tipc_net_route_msg(%struct.sk_buff* %47)
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @tipc_disconnect(i64 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.port* @tipc_port_lock(i64) #1

declare dso_local i64 @msg_importance(i32*) #1

declare dso_local %struct.sk_buff* @port_build_proto_msg(i32, i32, i64, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @port_peerport(%struct.port*) #1

declare dso_local i32 @port_peernode(%struct.port*) #1

declare dso_local i32 @port_out_seqno(%struct.port*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_disconnect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
