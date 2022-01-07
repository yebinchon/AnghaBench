; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tfilter_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tfilter_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tcf_proto = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, i64, i32)* @tfilter_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfilter_notify(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.tcf_proto* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store %struct.tcf_proto* %2, %struct.tcf_proto** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @NETLINK_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ]
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sk_buff* @alloc_skb(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %60

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @tcf_fill_node(%struct.sk_buff* %35, %struct.tcf_proto* %36, i64 %37, i32 %38, i32 %41, i32 0, i32 %42)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %34
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @RTNLGRP_TC, align 4
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %55 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NLM_F_ECHO, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @rtnetlink_send(%struct.sk_buff* %51, i32* @init_net, i32 %52, i32 %53, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %45, %31
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tcf_fill_node(%struct.sk_buff*, %struct.tcf_proto*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
