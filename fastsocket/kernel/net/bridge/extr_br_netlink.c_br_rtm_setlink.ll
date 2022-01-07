; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netlink.c_br_rtm_setlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netlink.c_br_rtm_setlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifinfomsg = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { %struct.net_bridge_port* }
%struct.net_bridge_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i64 0, align 8
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@BR_KERNEL_STP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @br_rtm_setlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_rtm_setlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifinfomsg*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_bridge_port*, align 8
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %8, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %19 = call i32 @nlmsg_len(%struct.nlmsghdr* %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %111

25:                                               ; preds = %3
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.ifinfomsg* %27, %struct.ifinfomsg** %9, align 8
  %28 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %29 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_BRIDGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EPFNOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %111

36:                                               ; preds = %25
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %38 = load i32, i32* @IFLA_PROTINFO, align 4
  %39 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %37, i32 16, i32 %38)
  store %struct.nlattr* %39, %struct.nlattr** %10, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %44 = call i32 @nla_len(%struct.nlattr* %43)
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %111

50:                                               ; preds = %42
  %51 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %52 = call i64 @nla_get_u8(%struct.nlattr* %51)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %111

59:                                               ; preds = %50
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %62 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.net_device* @__dev_get_by_index(%struct.net* %60, i32 %63)
  store %struct.net_device* %64, %struct.net_device** %11, align 8
  %65 = load %struct.net_device*, %struct.net_device** %11, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %111

70:                                               ; preds = %59
  %71 = load %struct.net_device*, %struct.net_device** %11, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load %struct.net_bridge_port*, %struct.net_bridge_port** %72, align 8
  store %struct.net_bridge_port* %73, %struct.net_bridge_port** %12, align 8
  %74 = load %struct.net_bridge_port*, %struct.net_bridge_port** %12, align 8
  %75 = icmp ne %struct.net_bridge_port* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %111

79:                                               ; preds = %70
  %80 = load %struct.net_bridge_port*, %struct.net_bridge_port** %12, align 8
  %81 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BR_KERNEL_STP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %111

90:                                               ; preds = %79
  %91 = load %struct.net_device*, %struct.net_device** %11, align 8
  %92 = call i32 @netif_running(%struct.net_device* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.net_device*, %struct.net_device** %11, align 8
  %96 = call i32 @netif_carrier_ok(%struct.net_device* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @BR_STATE_DISABLED, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %90
  %103 = load i32, i32* @ENETDOWN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %111

105:                                              ; preds = %98, %94
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.net_bridge_port*, %struct.net_bridge_port** %12, align 8
  %108 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.net_bridge_port*, %struct.net_bridge_port** %12, align 8
  %110 = call i32 @br_log_state(%struct.net_bridge_port* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %105, %102, %87, %76, %67, %56, %47, %33, %22
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @br_log_state(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
