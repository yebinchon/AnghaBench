; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_rtm_getaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_rtm_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrmsg = type { i64 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_ifaddr = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet6_rtm_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_getaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ifaddrmsg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.inet6_ifaddr*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %7, align 8
  %22 = load i32, i32* @IFA_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %28 = load i32, i32* @IFA_MAX, align 4
  %29 = load i32, i32* @ifa_ipv6_policy, align 4
  %30 = call i32 @nlmsg_parse(%struct.nlmsghdr* %27, i32 8, %struct.nlattr** %26, i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %113

34:                                               ; preds = %3
  %35 = load i64, i64* @IFA_ADDRESS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = load i64, i64* @IFA_LOCAL, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call %struct.in6_addr* @extract_addr(%struct.nlattr* %37, %struct.nlattr* %40)
  store %struct.in6_addr* %41, %struct.in6_addr** %11, align 8
  %42 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %43 = icmp eq %struct.in6_addr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %15, align 4
  br label %113

47:                                               ; preds = %34
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %49 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %48)
  store %struct.ifaddrmsg* %49, %struct.ifaddrmsg** %8, align 8
  %50 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %51 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.net*, %struct.net** %7, align 8
  %56 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %57 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.net_device* @__dev_get_by_index(%struct.net* %55, i64 %58)
  store %struct.net_device* %59, %struct.net_device** %12, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.net*, %struct.net** %7, align 8
  %62 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %63 = load %struct.net_device*, %struct.net_device** %12, align 8
  %64 = call %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net* %61, %struct.in6_addr* %62, %struct.net_device* %63, i32 1)
  store %struct.inet6_ifaddr* %64, %struct.inet6_ifaddr** %13, align 8
  %65 = icmp eq %struct.inet6_ifaddr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EADDRNOTAVAIL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %113

69:                                               ; preds = %60
  %70 = call i32 (...) @inet6_ifaddr_msgsize()
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.sk_buff* @nlmsg_new(i32 %70, i32 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %14, align 8
  %73 = icmp eq %struct.sk_buff* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOBUFS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %110

77:                                               ; preds = %69
  %78 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %79 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @NETLINK_CB(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %86 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RTM_NEWADDR, align 4
  %89 = call i32 @inet6_fill_ifaddr(%struct.sk_buff* %78, %struct.inet6_ifaddr* %79, i32 %84, i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %77
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @EMSGSIZE, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON(i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  br label %110

101:                                              ; preds = %77
  %102 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %103 = load %struct.net*, %struct.net** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @NETLINK_CB(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rtnl_unicast(%struct.sk_buff* %102, %struct.net* %103, i32 %108)
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %101, %92, %74
  %111 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %112 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %111)
  br label %113

113:                                              ; preds = %110, %66, %44, %33
  %114 = load i32, i32* %15, align 4
  %115 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %115)
  ret i32 %114
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.in6_addr* @extract_addr(%struct.nlattr*, %struct.nlattr*) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet6_ifaddr_msgsize(...) #1

declare dso_local i32 @inet6_fill_ifaddr(%struct.sk_buff*, %struct.inet6_ifaddr*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
