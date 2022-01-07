; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/netfilter/extr_dn_rtmsg.c_dnrmg_receive_user_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/netfilter/extr_dn_rtmsg.c_dnrmg_receive_user_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @dnrmg_receive_user_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnrmg_receive_user_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %4)
  store %struct.nlmsghdr* %5, %struct.nlmsghdr** %3, align 8
  %6 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %7 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %1
  br label %33

20:                                               ; preds = %11
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = load i32, i32* @CAP_NET_ADMIN, align 4
  %23 = call i64 @security_netlink_recv(%struct.sk_buff* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @RCV_SKB_FAIL(i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @RCV_SKB_FAIL(i32 %31)
  br label %33

33:                                               ; preds = %29, %19
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i64 @security_netlink_recv(%struct.sk_buff*, i32) #1

declare dso_local i32 @RCV_SKB_FAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
