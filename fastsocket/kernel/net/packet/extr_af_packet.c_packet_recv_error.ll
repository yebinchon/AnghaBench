; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_recv_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_recv_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__, i32 (%struct.sock*)*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_TX_TIMESTAMP = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i32)* @packet_recv_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_recv_error(%struct.sock* %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_exterr_skb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_4__* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %99

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @MSG_TRUNC, align 4
  %29 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %35, i32 0, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %96

44:                                               ; preds = %34
  %45 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @sock_recv_timestamp(%struct.msghdr* %45, %struct.sock* %46, %struct.sk_buff* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %49)
  store %struct.sock_exterr_skb* %50, %struct.sock_exterr_skb** %7, align 8
  %51 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %52 = load i32, i32* @SOL_PACKET, align 4
  %53 = load i32, i32* @PACKET_TX_TIMESTAMP, align 4
  %54 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %55 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %54, i32 0, i32 0
  %56 = call i32 @put_cmsg(%struct.msghdr* %51, i32 %52, i32 %53, i32 4, %struct.TYPE_5__* %55)
  %57 = load i32, i32* @MSG_ERRQUEUE, align 4
  %58 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @spin_lock_bh(i32* %65)
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = call %struct.sk_buff* @skb_peek(%struct.TYPE_4__* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %9, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %44
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 1
  %87 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %86, align 8
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = call i32 %87(%struct.sock* %88)
  br label %95

90:                                               ; preds = %44
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  br label %95

95:                                               ; preds = %90, %73
  br label %96

96:                                               ; preds = %95, %43
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call i32 @kfree_skb(%struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %96, %19
  %100 = load i32, i32* %11, align 4
  ret i32 %100
}

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_4__*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sock_recv_timestamp(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
