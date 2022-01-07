; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_port = type { i64 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

@TIPC_ERR_OVERLOAD = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_port*, %struct.sk_buff*)* @dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch(%struct.tipc_port* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tipc_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.tipc_port* %0, %struct.tipc_port** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.tipc_port*, %struct.tipc_port** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.sock*
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call i32 @bh_lock_sock(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @sock_owned_by_user(%struct.sock* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @filter_rcv(%struct.sock* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %6, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @sk_add_backlog(%struct.sock* %21, %struct.sk_buff* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @TIPC_OK, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @bh_unlock_sock(%struct.sock* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @filter_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
