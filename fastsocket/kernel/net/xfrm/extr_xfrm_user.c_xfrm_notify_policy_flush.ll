; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_notify_policy_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_notify_policy_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.km_event = type { %struct.TYPE_3__, i32, i32, %struct.net* }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRM_MSG_FLUSHPOLICY = common dso_local global i32 0, align 4
@XFRMNLGRP_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.km_event*)* @xfrm_notify_policy_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_notify_policy_flush(%struct.km_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.km_event*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.km_event* %0, %struct.km_event** %3, align 8
  %7 = load %struct.km_event*, %struct.km_event** %3, align 8
  %8 = getelementptr inbounds %struct.km_event, %struct.km_event* %7, i32 0, i32 3
  %9 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = call i32 (...) @userpolicy_type_attrsize()
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @nlmsg_new(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp eq %struct.sk_buff* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.km_event*, %struct.km_event** %3, align 8
  %21 = getelementptr inbounds %struct.km_event, %struct.km_event* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.km_event*, %struct.km_event** %3, align 8
  %24 = getelementptr inbounds %struct.km_event, %struct.km_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @XFRM_MSG_FLUSHPOLICY, align 4
  %27 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %19, i32 %22, i32 %25, i32 %26, i32 0, i32 0)
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %5, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %29 = icmp eq %struct.nlmsghdr* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %52

31:                                               ; preds = %18
  %32 = load %struct.km_event*, %struct.km_event** %3, align 8
  %33 = getelementptr inbounds %struct.km_event, %struct.km_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @copy_to_user_policy_type(i32 %35, %struct.sk_buff* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %52

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %43 = call i32 @nlmsg_end(%struct.sk_buff* %41, %struct.nlmsghdr* %42)
  %44 = load %struct.net*, %struct.net** %4, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @XFRMNLGRP_POLICY, align 4
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i32 @nlmsg_multicast(i32 %47, %struct.sk_buff* %48, i32 0, i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %39, %30
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  store i32 -1, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %40, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @userpolicy_type_attrsize(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @copy_to_user_policy_type(i32, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_multicast(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
