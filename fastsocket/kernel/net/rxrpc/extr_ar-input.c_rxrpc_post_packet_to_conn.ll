; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_post_packet_to_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_post_packet_to_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*, %struct.sk_buff*)* @rxrpc_post_packet_to_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_post_packet_to_conn(%struct.rxrpc_connection* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_connection* %5, %struct.sk_buff* %6)
  %8 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %8, i32 0, i32 1
  %10 = call i32 @atomic_inc(i32* %9)
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %11, i32 0, i32 0
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_queue_tail(i32* %12, %struct.sk_buff* %13)
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %16 = call i32 @rxrpc_queue_conn(%struct.rxrpc_connection* %15)
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.rxrpc_connection*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_queue_conn(%struct.rxrpc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
