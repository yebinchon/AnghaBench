; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.netlink_dump_control = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@ctnetlink_done = common dso_local global i32 0, align 4
@ctnetlink_dump_table = common dso_local global i32 0, align 4
@CTA_TUPLE_ORIG = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPCTNL_MSG_CT_NEW = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ctnetlink_get_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_get_conntrack(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_dump_control, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  %19 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %21 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %20)
  store %struct.nfgenmsg* %21, %struct.nfgenmsg** %14, align 8
  %22 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %23 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NLM_F_DUMP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %17, i32 0, i32 0
  %33 = load i32, i32* @ctnetlink_done, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %17, i32 0, i32 1
  %35 = load i32, i32* @ctnetlink_dump_table, align 4
  store i32 %35, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %39 = call i32 @netlink_dump_start(%struct.sock* %36, %struct.sk_buff* %37, %struct.nlmsghdr* %38, %struct.netlink_dump_control* %17)
  store i32 %39, i32* %5, align 4
  br label %132

40:                                               ; preds = %4
  %41 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %42 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %48 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %47, %struct.nf_conntrack_tuple* %11, i64 %48, i32 %49)
  store i32 %50, i32* %16, align 4
  br label %66

51:                                               ; preds = %40
  %52 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %53 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %59 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %58, %struct.nf_conntrack_tuple* %11, i64 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  br label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %132

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %5, align 4
  br label %132

71:                                               ; preds = %66
  %72 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32* @init_net, %struct.nf_conntrack_tuple* %11)
  store %struct.nf_conntrack_tuple_hash* %72, %struct.nf_conntrack_tuple_hash** %10, align 8
  %73 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %10, align 8
  %74 = icmp ne %struct.nf_conntrack_tuple_hash* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %132

78:                                               ; preds = %71
  %79 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %10, align 8
  %80 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %79)
  store %struct.nf_conn* %80, %struct.nf_conn** %12, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.sk_buff* @nlmsg_new(i32 %83, i32 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %13, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = icmp eq %struct.sk_buff* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %90 = call i32 @nf_ct_put(%struct.nf_conn* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %132

93:                                               ; preds = %78
  %94 = call i32 (...) @rcu_read_lock()
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call i32 @NETLINK_CB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %102 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IPCTNL_MSG_CT_NEW, align 4
  %105 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %106 = call i32 @ctnetlink_fill_info(%struct.sk_buff* %95, i32 %100, i32 %103, i32 %104, %struct.nf_conn* %105)
  store i32 %106, i32* %16, align 4
  %107 = call i32 (...) @rcu_read_unlock()
  %108 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %109 = call i32 @nf_ct_put(%struct.nf_conn* %108)
  %110 = load i32, i32* %16, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  br label %127

113:                                              ; preds = %93
  %114 = load %struct.sock*, %struct.sock** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = call i32 @NETLINK_CB(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MSG_DONTWAIT, align 4
  %122 = call i32 @netlink_unicast(%struct.sock* %114, %struct.sk_buff* %115, i32 %120, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %130

126:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %132

127:                                              ; preds = %112
  %128 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %127, %125
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %126, %88, %75, %69, %62, %31
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_dump_start(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_fill_info(%struct.sk_buff*, i32, i32, i32, %struct.nf_conn*) #1

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
