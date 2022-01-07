; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c___ipq_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c___ipq_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32, i32 }

@NLM_F_REQUEST = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@NLMSG_NOOP = common dso_local global i32 0, align 4
@IPQM_MAX = common dso_local global i32 0, align 4
@IPQM_BASE = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@queue_lock = common dso_local global i32 0, align 4
@peer_pid = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @__ipq_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipq_rcv_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %134

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %18)
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %9, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %21 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %17
  br label %134

31:                                               ; preds = %26
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %36 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NLM_F_REQUEST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NLM_F_MULTI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %40, %31
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @RCV_SKB_FAIL(i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MSG_TRUNC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @ECOMM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @RCV_SKB_FAIL(i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %65 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @NLMSG_NOOP, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IPQM_MAX, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %63
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @RCV_SKB_FAIL(i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IPQM_BASE, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %134

83:                                               ; preds = %78
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %85 = load i32, i32* @CAP_NET_ADMIN, align 4
  %86 = call i64 @security_netlink_recv(%struct.sk_buff* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @EPERM, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @RCV_SKB_FAIL(i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = call i32 @write_lock_bh(i32* @queue_lock)
  %94 = load i32, i32* @peer_pid, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* @peer_pid, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i32 @write_unlock_bh(i32* @queue_lock)
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 @RCV_SKB_FAIL(i32 %103)
  br label %105

105:                                              ; preds = %100, %96
  br label %109

106:                                              ; preds = %92
  %107 = call i32 (...) @net_enable_timestamp()
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* @peer_pid, align 4
  br label %109

109:                                              ; preds = %106, %105
  %110 = call i32 @write_unlock_bh(i32* @queue_lock)
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %112 = call i32 @NLMSG_DATA(%struct.nlmsghdr* %111)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = call i64 @NLMSG_LENGTH(i32 0)
  %117 = sub nsw i64 %115, %116
  %118 = call i32 @ipq_receive_peer(i32 %112, i32 %113, i64 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @RCV_SKB_FAIL(i32 %122)
  br label %124

124:                                              ; preds = %121, %109
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @NLM_F_ACK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %131 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %132 = call i32 @netlink_ack(%struct.sk_buff* %130, %struct.nlmsghdr* %131, i32 0)
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %82, %30, %16
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @RCV_SKB_FAIL(i32) #1

declare dso_local i64 @security_netlink_recv(%struct.sk_buff*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @net_enable_timestamp(...) #1

declare dso_local i32 @ipq_receive_peer(i32, i32, i64) #1

declare dso_local i32 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i64 @NLMSG_LENGTH(i32) #1

declare dso_local i32 @netlink_ack(%struct.sk_buff*, %struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
