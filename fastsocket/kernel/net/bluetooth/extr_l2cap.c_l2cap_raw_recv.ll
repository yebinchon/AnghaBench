; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_raw_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_raw_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_2__ = type { %struct.sock* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SOCK_RAW = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sk_buff*)* @l2cap_raw_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_raw_recv(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.l2cap_chan_list*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %9 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %8, i32 0, i32 0
  store %struct.l2cap_chan_list* %9, %struct.l2cap_chan_list** %5, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %10)
  %12 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %5, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %12, i32 0, i32 0
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %5, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %7, align 8
  br label %18

18:                                               ; preds = %51, %2
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_RAW, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %51

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = icmp eq %struct.sock* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %51

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i64 @sock_queue_rcv_skb(%struct.sock* %43, %struct.sk_buff* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %41, %34, %27
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.sock*, %struct.sock** %54, align 8
  store %struct.sock* %55, %struct.sock** %7, align 8
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %5, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %57, i32 0, i32 0
  %59 = call i32 @read_unlock(i32* %58)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
