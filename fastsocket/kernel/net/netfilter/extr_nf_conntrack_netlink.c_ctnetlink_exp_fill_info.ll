; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK_EXP = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i32, %struct.nf_conntrack_expect*)* @ctnetlink_exp_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_exp_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i32 %3, %struct.nf_conntrack_expect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conntrack_expect*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nf_conntrack_expect* %4, %struct.nf_conntrack_expect** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @NLM_F_MULTI, align 4
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @NFNL_SUBSYS_CTNETLINK_EXP, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %26, i64 %27, i64 %28, i32 %29, i32 16, i32 %30)
  store %struct.nlmsghdr* %31, %struct.nlmsghdr** %12, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %33 = icmp eq %struct.nlmsghdr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %62

35:                                               ; preds = %20
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %37 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.nfgenmsg* %37, %struct.nfgenmsg** %13, align 8
  %38 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %44 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @NFNETLINK_V0, align 4
  %46 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %47 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %49 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %52 = call i64 @ctnetlink_exp_dump_expect(%struct.sk_buff* %50, %struct.nf_conntrack_expect* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %58 = call i32 @nlmsg_end(%struct.sk_buff* %56, %struct.nlmsghdr* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %66 = call i32 @nlmsg_cancel(%struct.sk_buff* %64, %struct.nlmsghdr* %65)
  store i32 -1, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @ctnetlink_exp_dump_expect(%struct.sk_buff*, %struct.nf_conntrack_expect*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
