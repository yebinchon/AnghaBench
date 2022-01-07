; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_rtmsg_ifa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_rtmsg_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV4_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.in_ifaddr*, %struct.nlmsghdr*, i32)* @rtmsg_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmsg_ifa(i32 %0, %struct.in_ifaddr* %1, %struct.nlmsghdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %6, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %14 = icmp ne %struct.nlmsghdr* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %17 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @ENOBUFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %25 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.net* @dev_net(i32 %28)
  store %struct.net* %29, %struct.net** %12, align 8
  %30 = call i32 (...) @inet_nlmsg_size()
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %9, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %62

36:                                               ; preds = %20
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @inet_fill_ifaddr(%struct.sk_buff* %37, %struct.in_ifaddr* %38, i32 %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %62

54:                                               ; preds = %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load %struct.net*, %struct.net** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @RTNLGRP_IPV4_IFADDR, align 4
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @rtnl_notify(%struct.sk_buff* %55, %struct.net* %56, i32 %57, i32 %58, %struct.nlmsghdr* %59, i32 %60)
  br label %70

62:                                               ; preds = %45, %35
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.net*, %struct.net** %12, align 8
  %67 = load i32, i32* @RTNLGRP_IPV4_IFADDR, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @rtnl_set_sk_err(%struct.net* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %54, %65, %62
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet_nlmsg_size(...) #1

declare dso_local i32 @inet_fill_ifaddr(%struct.sk_buff*, %struct.in_ifaddr*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
