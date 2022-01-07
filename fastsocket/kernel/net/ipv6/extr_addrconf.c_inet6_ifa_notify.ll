; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_ifa_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_ifa_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV6_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inet6_ifaddr*)* @inet6_ifa_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet6_ifa_notify(i32 %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %8 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @dev_net(i32 %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @inet6_ifaddr_msgsize()
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @nlmsg_new(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @inet6_fill_ifaddr(%struct.sk_buff* %23, %struct.inet6_ifaddr* %24, i32 0, i32 0, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  br label %44

38:                                               ; preds = %22
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = load i32, i32* @RTNLGRP_IPV6_IFADDR, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i32 @rtnl_notify(%struct.sk_buff* %39, %struct.net* %40, i32 0, i32 %41, i32* null, i32 %42)
  br label %52

44:                                               ; preds = %29, %21
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.net*, %struct.net** %6, align 8
  %49 = load i32, i32* @RTNLGRP_IPV6_IFADDR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtnl_set_sk_err(%struct.net* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %38, %47, %44
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet6_ifaddr_msgsize(...) #1

declare dso_local i32 @inet6_fill_ifaddr(%struct.sk_buff*, %struct.inet6_ifaddr*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
