; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netlink.c_br_fill_ifinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netlink.c_br_fill_ifinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_bridge_port = type { i32, %struct.net_device*, %struct.net_bridge* }
%struct.net_device = type { i64, i64, i64, i32, i64, i32, i32, i32 }
%struct.net_bridge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ifinfomsg = type { i64, i64, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }

@IF_OPER_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"br_fill_info event %d port %s master %s\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@IFLA_MASTER = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_OPERSTATE = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_bridge_port*, i32, i32, i32, i32)* @br_fill_ifinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_fill_ifinfo(%struct.sk_buff* %0, %struct.net_bridge_port* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_bridge_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_bridge*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.ifinfomsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %20 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %19, i32 0, i32 2
  %21 = load %struct.net_bridge*, %struct.net_bridge** %20, align 8
  store %struct.net_bridge* %21, %struct.net_bridge** %14, align 8
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %22, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %15, align 8
  %25 = load %struct.net_device*, %struct.net_device** %15, align 8
  %26 = call i64 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load %struct.net_device*, %struct.net_device** %15, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  br label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @IF_OPER_DOWN, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.net_device*, %struct.net_device** %15, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %41 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %46, i32 %47, i32 %48, i32 %49, i32 40, i32 %50)
  store %struct.nlmsghdr* %51, %struct.nlmsghdr** %17, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %53 = icmp eq %struct.nlmsghdr* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %34
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %155

57:                                               ; preds = %34
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %59 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %58)
  store %struct.ifinfomsg* %59, %struct.ifinfomsg** %16, align 8
  %60 = load i32, i32* @AF_BRIDGE, align 4
  %61 = load %struct.ifinfomsg*, %struct.ifinfomsg** %16, align 8
  %62 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ifinfomsg*, %struct.ifinfomsg** %16, align 8
  %64 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %15, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ifinfomsg*, %struct.ifinfomsg** %16, align 8
  %69 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.net_device*, %struct.net_device** %15, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ifinfomsg*, %struct.ifinfomsg** %16, align 8
  %74 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %15, align 8
  %76 = call i32 @dev_get_flags(%struct.net_device* %75)
  %77 = load %struct.ifinfomsg*, %struct.ifinfomsg** %16, align 8
  %78 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ifinfomsg*, %struct.ifinfomsg** %16, align 8
  %80 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = load i32, i32* @IFLA_IFNAME, align 4
  %83 = load %struct.net_device*, %struct.net_device** %15, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %81, i32 %82, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load i32, i32* @IFLA_MASTER, align 4
  %89 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %90 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @NLA_PUT_U32(%struct.sk_buff* %87, i32 %88, i64 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i32, i32* @IFLA_MTU, align 4
  %97 = load %struct.net_device*, %struct.net_device** %15, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @NLA_PUT_U32(%struct.sk_buff* %95, i32 %96, i64 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load i32, i32* @IFLA_OPERSTATE, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @NLA_PUT_U8(%struct.sk_buff* %101, i32 %102, i32 %103)
  %105 = load %struct.net_device*, %struct.net_device** %15, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %57
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = load i32, i32* @IFLA_ADDRESS, align 4
  %112 = load %struct.net_device*, %struct.net_device** %15, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %15, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @NLA_PUT(%struct.sk_buff* %110, i32 %111, i64 %114, i32 %117)
  br label %119

119:                                              ; preds = %109, %57
  %120 = load %struct.net_device*, %struct.net_device** %15, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.net_device*, %struct.net_device** %15, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = load i32, i32* @IFLA_LINK, align 4
  %130 = load %struct.net_device*, %struct.net_device** %15, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @NLA_PUT_U32(%struct.sk_buff* %128, i32 %129, i64 %132)
  br label %134

134:                                              ; preds = %127, %119
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @RTM_NEWLINK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = load i32, i32* @IFLA_PROTINFO, align 4
  %141 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %142 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @NLA_PUT_U8(%struct.sk_buff* %139, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %134
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %148 = call i32 @nlmsg_end(%struct.sk_buff* %146, %struct.nlmsghdr* %147)
  store i32 %148, i32* %7, align 4
  br label %155

149:                                              ; No predecessors!
  %150 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %151 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %152 = call i32 @nlmsg_cancel(%struct.sk_buff* %150, %struct.nlmsghdr* %151)
  %153 = load i32, i32* @EMSGSIZE, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %149, %145, %54
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
