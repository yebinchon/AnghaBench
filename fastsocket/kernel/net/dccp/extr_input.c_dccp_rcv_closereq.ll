; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_closereq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_closereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DCCP_ROLE_CLIENT = common dso_local global i64 0, align 8
@DCCP_PKT_SYNC = common dso_local global i32 0, align 4
@DCCP_CLOSING = common dso_local global i32 0, align 4
@SOCK_WAKE_WAITD = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_rcv_closereq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_rcv_closereq(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.TYPE_3__* @dccp_sk(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DCCP_ROLE_CLIENT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DCCP_PKT_SYNC, align 4
  %20 = call i32 @dccp_send_sync(%struct.sock* %14, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %43 [
    i32 128, label %26
    i32 131, label %32
    i32 130, label %32
    i32 129, label %38
  ]

26:                                               ; preds = %22
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @dccp_send_close(%struct.sock* %27, i32 0)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load i32, i32* @DCCP_CLOSING, align 4
  %31 = call i32 @dccp_set_state(%struct.sock* %29, i32 %30)
  br label %43

32:                                               ; preds = %22, %22
  store i32 1, i32* %6, align 4
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @dccp_fin(%struct.sock* %33, %struct.sk_buff* %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @dccp_set_state(%struct.sock* %36, i32 129)
  br label %38

38:                                               ; preds = %22, %32
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %41 = load i32, i32* @POLL_HUP, align 4
  %42 = call i32 @sk_wake_async(%struct.sock* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %22, %26
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_3__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_send_close(%struct.sock*, i32) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @dccp_fin(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
