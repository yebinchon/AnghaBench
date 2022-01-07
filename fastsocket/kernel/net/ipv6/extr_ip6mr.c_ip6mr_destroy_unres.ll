; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_destroy_unres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_destroy_unres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.nlmsgerr = type { i32 }

@NLMSG_ERROR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfc6_cache*)* @ip6mr_destroy_unres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6mr_destroy_unres(%struct.mfc6_cache* %0) #0 {
  %2 = alloca %struct.mfc6_cache*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  store %struct.mfc6_cache* %0, %struct.mfc6_cache** %2, align 8
  %7 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %8 = call %struct.net* @mfc6_net(%struct.mfc6_cache* %7)
  store %struct.net* %8, %struct.net** %4, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @atomic_dec(i32* %11)
  br label %13

13:                                               ; preds = %58, %1
  %14 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %15 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call %struct.sk_buff* @skb_dequeue(i32* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %3, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i64 @skb_pull(%struct.sk_buff* %27, i32 4)
  %29 = inttoptr i64 %28 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %29, %struct.nlmsghdr** %5, align 8
  %30 = load i32, i32* @NLMSG_ERROR, align 4
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %32 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = call i32 @NLMSG_LENGTH(i32 4)
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %38 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @skb_trim(%struct.sk_buff* %36, i32 %39)
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %44 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %43)
  %45 = inttoptr i64 %44 to %struct.nlmsgerr*
  %46 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = load %struct.net*, %struct.net** %4, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @NETLINK_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rtnl_unicast(%struct.sk_buff* %47, %struct.net* %48, i32 %53)
  br label %58

55:                                               ; preds = %20
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %26
  br label %13

59:                                               ; preds = %13
  %60 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %61 = call i32 @ip6mr_cache_free(%struct.mfc6_cache* %60)
  ret void
}

declare dso_local %struct.net* @mfc6_net(%struct.mfc6_cache*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLMSG_LENGTH(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ip6mr_cache_free(%struct.mfc6_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
