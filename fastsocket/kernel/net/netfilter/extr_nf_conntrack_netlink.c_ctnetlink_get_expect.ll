; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_expect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.netlink_dump_control = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@ctnetlink_exp_done = common dso_local global i32 0, align 4
@ctnetlink_exp_dump_table = common dso_local global i32 0, align 4
@CTA_EXPECT_MASTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CTA_EXPECT_ID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPCTNL_MSG_EXP_NEW = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ctnetlink_get_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_get_expect(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conntrack_expect*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.netlink_dump_control, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  %19 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %21 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %20)
  store %struct.nfgenmsg* %21, %struct.nfgenmsg** %13, align 8
  %22 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %23 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NLM_F_DUMP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %16, i32 0, i32 0
  %33 = load i32, i32* @ctnetlink_exp_done, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %16, i32 0, i32 1
  %35 = load i32, i32* @ctnetlink_exp_dump_table, align 4
  store i32 %35, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %39 = call i32 @netlink_dump_start(%struct.sock* %36, %struct.sk_buff* %37, %struct.nlmsghdr* %38, %struct.netlink_dump_control* %16)
  store i32 %39, i32* %5, align 4
  br label %135

40:                                               ; preds = %4
  %41 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %42 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %48 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %47, %struct.nf_conntrack_tuple* %10, i64 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %135

54:                                               ; preds = %46
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %5, align 4
  br label %135

59:                                               ; preds = %54
  %60 = call %struct.nf_conntrack_expect* @nf_ct_expect_find_get(i32* @init_net, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_expect* %60, %struct.nf_conntrack_expect** %11, align 8
  %61 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %62 = icmp ne %struct.nf_conntrack_expect* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %135

66:                                               ; preds = %59
  %67 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %68 = load i64, i64* @CTA_EXPECT_ID, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %74 = load i64, i64* @CTA_EXPECT_ID, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = call i32 @nla_get_be32(%struct.nlattr* %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i64 @ntohl(i32 %78)
  %80 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %81 = ptrtoint %struct.nf_conntrack_expect* %80 to i64
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %85 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %84)
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %135

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.sk_buff* @nlmsg_new(i32 %92, i32 %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %12, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = icmp eq %struct.sk_buff* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %131

98:                                               ; preds = %89
  %99 = call i32 (...) @rcu_read_lock()
  %100 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i32 @NETLINK_CB(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %107 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IPCTNL_MSG_EXP_NEW, align 4
  %110 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %111 = call i32 @ctnetlink_exp_fill_info(%struct.sk_buff* %100, i32 %105, i32 %108, i32 %109, %struct.nf_conntrack_expect* %110)
  store i32 %111, i32* %15, align 4
  %112 = call i32 (...) @rcu_read_unlock()
  %113 = load i32, i32* %15, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %128

116:                                              ; preds = %98
  %117 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %118 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %117)
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i32 @NETLINK_CB(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MSG_DONTWAIT, align 4
  %127 = call i32 @netlink_unicast(%struct.sock* %119, %struct.sk_buff* %120, i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %135

128:                                              ; preds = %115
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = call i32 @kfree_skb(%struct.sk_buff* %129)
  br label %131

131:                                              ; preds = %128, %97
  %132 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %133 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %132)
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %116, %83, %63, %57, %51, %31
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_dump_start(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_find_get(i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_exp_fill_info(%struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_expect*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
