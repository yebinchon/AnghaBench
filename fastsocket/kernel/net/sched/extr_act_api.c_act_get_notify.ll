; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_act_get_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_act_get_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.tc_action = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.nlmsghdr*, %struct.tc_action*, i32)* @act_get_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act_get_notify(i32 %0, %struct.nlmsghdr* %1, %struct.tc_action* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.tc_action*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.tc_action* %2, %struct.tc_action** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff* @alloc_skb(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOBUFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = load %struct.tc_action*, %struct.tc_action** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @tca_get_fill(%struct.sk_buff* %20, %struct.tc_action* %21, i32 %22, i32 %25, i32 0, i32 %26, i32 0, i32 0)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rtnl_unicast(%struct.sk_buff* %35, i32* @init_net, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tca_get_fill(%struct.sk_buff*, %struct.tc_action*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
