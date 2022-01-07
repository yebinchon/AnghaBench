; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_getlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifinfomsg = type { i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @rtnl_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_getlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifinfomsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %8, align 8
  %23 = load i32, i32* @IFLA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %29 = load i32, i32* @IFLA_MAX, align 4
  %30 = load i32, i32* @ifla_policy, align 4
  %31 = call i32 @nlmsg_parse(%struct.nlmsghdr* %28, i32 8, %struct.nlattr** %27, i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %108

36:                                               ; preds = %3
  %37 = call i32 @get_ext_mask(%struct.nlattr** %27)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %39 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.ifinfomsg* %39, %struct.ifinfomsg** %9, align 8
  %40 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %41 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.net*, %struct.net** %8, align 8
  %46 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %47 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.net_device* @dev_get_by_index(%struct.net* %45, i64 %48)
  store %struct.net_device* %49, %struct.net_device** %12, align 8
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = icmp eq %struct.net_device* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %108

55:                                               ; preds = %44
  br label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %108

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @if_nlmsg_size(%struct.net_device* %60, i32 %61)
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sk_buff* @nlmsg_new(i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %13, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %66 = icmp eq %struct.sk_buff* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOBUFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %104

70:                                               ; preds = %59
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %72 = load %struct.net_device*, %struct.net_device** %12, align 8
  %73 = load i32, i32* @RTM_NEWLINK, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @NETLINK_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %80 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @rtnl_fill_ifinfo(%struct.sk_buff* %71, %struct.net_device* %72, i32 %73, i32 %78, i32 %81, i32 0, i32 0, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %70
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @EMSGSIZE, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @WARN_ON(i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  br label %104

95:                                               ; preds = %70
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = load %struct.net*, %struct.net** %8, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @NETLINK_CB(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rtnl_unicast(%struct.sk_buff* %96, %struct.net* %97, i32 %102)
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %95, %86, %67
  %105 = load %struct.net_device*, %struct.net_device** %12, align 8
  %106 = call i32 @dev_put(%struct.net_device* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %108

108:                                              ; preds = %104, %56, %52, %34
  %109 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @get_ext_mask(%struct.nlattr**) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @if_nlmsg_size(%struct.net_device*, i32) #1

declare dso_local i32 @rtnl_fill_ifinfo(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
