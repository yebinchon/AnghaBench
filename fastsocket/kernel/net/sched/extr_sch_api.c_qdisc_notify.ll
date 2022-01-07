; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i32, i32 }
%struct.Qdisc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_DELQDISC = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@RTM_NEWQDISC = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*)* @qdisc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_notify(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i32 %2, %struct.Qdisc* %3, %struct.Qdisc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.Qdisc* %3, %struct.Qdisc** %10, align 8
  store %struct.Qdisc* %4, %struct.Qdisc** %11, align 8
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
  br label %102

34:                                               ; preds = %24
  %35 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %36 = icmp ne %struct.Qdisc* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %39 = call i32 @tc_qdisc_dump_ignore(%struct.Qdisc* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %47 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RTM_DELQDISC, align 4
  %50 = call i64 @tc_fill_qdisc(%struct.sk_buff* %42, %struct.Qdisc* %43, i32 %44, i32 %45, i32 %48, i32 0, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %97

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %37, %34
  %55 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %56 = icmp ne %struct.Qdisc* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %59 = call i32 @tc_qdisc_dump_ignore(%struct.Qdisc* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %57
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %67 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %70 = icmp ne %struct.Qdisc* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @NLM_F_REPLACE, align 4
  br label %74

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load i32, i32* @RTM_NEWQDISC, align 4
  %77 = call i64 @tc_fill_qdisc(%struct.sk_buff* %62, %struct.Qdisc* %63, i32 %64, i32 %65, i32 %68, i32 %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %97

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %57, %54
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @RTNLGRP_TC, align 4
  %90 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %91 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NLM_F_ECHO, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @rtnetlink_send(%struct.sk_buff* %87, i32* @init_net, i32 %88, i32 %89, i32 %94)
  store i32 %95, i32* %6, align 4
  br label %102

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %79, %52
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %86, %31
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @tc_qdisc_dump_ignore(%struct.Qdisc*) #1

declare dso_local i64 @tc_fill_qdisc(%struct.sk_buff*, %struct.Qdisc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
