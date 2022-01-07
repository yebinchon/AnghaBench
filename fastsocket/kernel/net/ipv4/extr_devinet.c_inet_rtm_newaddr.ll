; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_rtm_newaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_rtm_newaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.in_ifaddr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet_rtm_newaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_newaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.in_ifaddr*, align 8
  %10 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %18 = call %struct.in_ifaddr* @rtm_to_ifaddr(%struct.net* %16, %struct.nlmsghdr* %17)
  store %struct.in_ifaddr* %18, %struct.in_ifaddr** %9, align 8
  %19 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %20 = call i64 @IS_ERR(%struct.in_ifaddr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %24 = call i32 @PTR_ERR(%struct.in_ifaddr* %23)
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @NETLINK_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__inet_insert_ifa(%struct.in_ifaddr* %26, %struct.nlmsghdr* %27, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.in_ifaddr* @rtm_to_ifaddr(%struct.net*, %struct.nlmsghdr*) #1

declare dso_local i64 @IS_ERR(%struct.in_ifaddr*) #1

declare dso_local i32 @PTR_ERR(%struct.in_ifaddr*) #1

declare dso_local i32 @__inet_insert_ifa(%struct.in_ifaddr*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
