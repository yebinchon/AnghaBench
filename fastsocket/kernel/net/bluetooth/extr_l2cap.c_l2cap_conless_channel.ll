; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conless_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conless_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"sk %p, len %d\00", align 1
@BT_BOUND = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, i32, %struct.sk_buff*)* @l2cap_conless_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_conless_channel(%struct.l2cap_conn* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sock* @l2cap_get_sock_by_psm(i32 0, i32 %8, i32 %11)
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.sock* %17, i64 %20)
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BT_BOUND, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_CONNECTED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %51

34:                                               ; preds = %27, %16
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %51

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @sock_queue_rcv_skb(%struct.sock* %45, %struct.sk_buff* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43, %33, %15
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %51, %49
  %55 = load %struct.sock*, %struct.sock** %7, align 8
  %56 = icmp ne %struct.sock* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.sock*, %struct.sock** %7, align 8
  %59 = call i32 @bh_unlock_sock(%struct.sock* %58)
  br label %60

60:                                               ; preds = %57, %54
  ret i32 0
}

declare dso_local %struct.sock* @l2cap_get_sock_by_psm(i32, i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i64) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
