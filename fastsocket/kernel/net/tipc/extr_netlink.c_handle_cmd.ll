; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_netlink.c_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_netlink.c_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.tipc_genlmsghdr*, %struct.nlmsghdr* }
%struct.tipc_genlmsghdr = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GENL_HDRLEN = common dso_local global i64 0, align 8
@TIPC_GENL_HDRLEN = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@TIPC_CMD_NOT_NET_ADMIN = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.tipc_genlmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %7, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load %struct.tipc_genlmsghdr*, %struct.tipc_genlmsghdr** %16, align 8
  store %struct.tipc_genlmsghdr* %17, %struct.tipc_genlmsghdr** %8, align 8
  %18 = load i64, i64* @GENL_HDRLEN, align 8
  %19 = load i64, i64* @TIPC_GENL_HDRLEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @NLMSG_SPACE(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.tipc_genlmsghdr*, %struct.tipc_genlmsghdr** %8, align 8
  %23 = getelementptr inbounds %struct.tipc_genlmsghdr, %struct.tipc_genlmsghdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 49152
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @CAP_NET_ADMIN, align 4
  %29 = call i32 @capable(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @TIPC_CMD_NOT_NET_ADMIN, align 4
  store i32 %32, i32* %10, align 4
  br label %37

33:                                               ; preds = %27, %2
  %34 = load %struct.tipc_genlmsghdr*, %struct.tipc_genlmsghdr** %8, align 8
  %35 = getelementptr inbounds %struct.tipc_genlmsghdr, %struct.tipc_genlmsghdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load %struct.tipc_genlmsghdr*, %struct.tipc_genlmsghdr** %8, align 8
  %39 = getelementptr inbounds %struct.tipc_genlmsghdr, %struct.tipc_genlmsghdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %43 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %42)
  %44 = load i64, i64* @GENL_HDRLEN, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @TIPC_GENL_HDRLEN, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %49 = load i64, i64* @GENL_HDRLEN, align 8
  %50 = load i64, i64* @TIPC_GENL_HDRLEN, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @NLMSG_PAYLOAD(%struct.nlmsghdr* %48, i64 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.sk_buff* @tipc_cfg_do_cmd(i32 %40, i32 %41, i64 %47, i32 %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %37
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @skb_push(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %61)
  store %struct.nlmsghdr* %62, %struct.nlmsghdr** %6, align 8
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @memcpy(%struct.nlmsghdr* %63, %struct.nlmsghdr* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %71 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @NETLINK_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @genlmsg_unicast(i32* @init_net, %struct.sk_buff* %72, i32 %77)
  br label %79

79:                                               ; preds = %57, %37
  ret i32 0
}

declare dso_local i32 @NLMSG_SPACE(i64) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_do_cmd(i32, i32, i64, i32, i32) #1

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @NLMSG_PAYLOAD(%struct.nlmsghdr*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.nlmsghdr*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_unicast(i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
