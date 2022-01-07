; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netlink.c_br_ifinfo_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netlink.c_br_ifinfo_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"bridge notify event=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ifinfo_notify(i32 %0, %struct.net_bridge_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %4, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @dev_net(i32 %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load i32, i32* @ENOBUFS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @br_nlmsg_size()
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @nlmsg_new(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @br_fill_ifinfo(%struct.sk_buff* %23, %struct.net_bridge_port* %24, i32 0, i32 0, i32 %25, i32 0)
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
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  br label %44

38:                                               ; preds = %22
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load %struct.net*, %struct.net** %5, align 8
  %41 = load i32, i32* @RTNLGRP_LINK, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i32 @rtnl_notify(%struct.sk_buff* %39, %struct.net* %40, i32 0, i32 %41, i32* null, i32 %42)
  br label %52

44:                                               ; preds = %29, %21
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.net*, %struct.net** %5, align 8
  %49 = load i32, i32* @RTNLGRP_LINK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtnl_set_sk_err(%struct.net* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %38, %47, %44
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @br_nlmsg_size(...) #1

declare dso_local i32 @br_fill_ifinfo(%struct.sk_buff*, %struct.net_bridge_port*, i32, i32, i32, i32) #1

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
