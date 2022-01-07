; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_prepare_routing_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_prepare_routing_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@INT_H_SIZE = common dso_local global i64 0, align 8
@ROUTE_DISTRIBUTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i64, i64)* @tipc_cltr_prepare_routing_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @INT_H_SIZE, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.sk_buff* @buf_acquire(i64 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %7, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %19 = bitcast %struct.tipc_msg* %18 to i8*
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @memset(i8* %19, i32 0, i64 %20)
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %23 = load i32, i32* @ROUTE_DISTRIBUTOR, align 4
  %24 = load i64, i64* @INT_H_SIZE, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @msg_init(%struct.tipc_msg* %22, i32 %23, i32 0, i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %15, %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %28
}

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
