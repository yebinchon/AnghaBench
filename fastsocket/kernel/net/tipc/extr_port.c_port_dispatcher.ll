; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_dispatcher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_dispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_port = type { i32 }

@queue_lock = common dso_local global i32 0, align 4
@msg_queue_head = common dso_local global %struct.sk_buff* null, align 8
@msg_queue_tail = common dso_local global %struct.sk_buff* null, align 8
@port_dispatcher_sigh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_port*, %struct.sk_buff*)* @port_dispatcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_dispatcher(%struct.tipc_port* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tipc_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.tipc_port* %0, %struct.tipc_port** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %7 = call i32 @spin_lock_bh(i32* @queue_lock)
  %8 = load %struct.sk_buff*, %struct.sk_buff** @msg_queue_head, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** @msg_queue_tail, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  store %struct.sk_buff* %11, %struct.sk_buff** %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** @msg_queue_tail, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** @msg_queue_head, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** @msg_queue_tail, align 8
  %17 = load i64, i64* @port_dispatcher_sigh, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @tipc_k_signal(i32 %18, i32 0)
  br label %20

20:                                               ; preds = %15, %10
  %21 = call i32 @spin_unlock_bh(i32* @queue_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_k_signal(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
