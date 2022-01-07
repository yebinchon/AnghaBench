; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_build_self_abort_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_build_self_abort_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.port = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.port*, i64)* @port_build_self_abort_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @port_build_self_abort_msg(%struct.port* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.port*, %struct.port** %4, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i64 @msg_importance(i32* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.port*, %struct.port** %4, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.port*, %struct.port** %4, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @tipc_own_addr, align 4
  %30 = load %struct.port*, %struct.port** %4, align 8
  %31 = call i32 @port_peerport(%struct.port* %30)
  %32 = load %struct.port*, %struct.port** %4, align 8
  %33 = call i32 @port_peernode(%struct.port* %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @TIPC_CONN_MSG, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.port*, %struct.port** %4, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = call %struct.sk_buff* @port_build_proto_msg(i32 %28, i32 %29, i32 %31, i32 %33, i64 %34, i32 %35, i64 %36, i64 %40, i32 0)
  store %struct.sk_buff* %41, %struct.sk_buff** %3, align 8
  br label %42

42:                                               ; preds = %24, %16
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %43
}

declare dso_local i64 @msg_importance(i32*) #1

declare dso_local %struct.sk_buff* @port_build_proto_msg(i32, i32, i32, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @port_peerport(%struct.port*) #1

declare dso_local i32 @port_peernode(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
