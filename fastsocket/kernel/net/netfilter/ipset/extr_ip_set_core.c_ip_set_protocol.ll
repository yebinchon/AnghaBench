; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPSET_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_PROTOCOL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ip_set_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_protocol(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %16 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp eq %struct.nlattr* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %4
  %27 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sk_buff* @nlmsg_new(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = icmp eq %struct.sk_buff* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %81

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @NETLINK_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %43 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IPSET_CMD_PROTOCOL, align 4
  %46 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %36, i32 %41, i32 %44, i32 0, i32 %45)
  store %struct.nlmsghdr* %46, %struct.nlmsghdr** %11, align 8
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %48 = icmp ne %struct.nlmsghdr* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %76

50:                                               ; preds = %35
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %53 = load i32, i32* @IPSET_PROTOCOL, align 4
  %54 = call i32 @NLA_PUT_U8(%struct.sk_buff* %51, i64 %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %57 = call i32 @nlmsg_end(%struct.sk_buff* %55, %struct.nlmsghdr* %56)
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @NETLINK_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MSG_DONTWAIT, align 4
  %66 = call i32 @netlink_unicast(%struct.sock* %58, %struct.sk_buff* %59, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %81

71:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %81

72:                                               ; No predecessors!
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %75 = call i32 @nlmsg_cancel(%struct.sk_buff* %73, %struct.nlmsghdr* %74)
  br label %76

76:                                               ; preds = %72, %49
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  %79 = load i32, i32* @EMSGSIZE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %71, %69, %32, %23
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
