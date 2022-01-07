; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_del_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_del_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CTA_TUPLE_ORIG = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CTA_ID = common dso_local global i64 0, align 8
@IPCT_DESTROY = common dso_local global i32 0, align 4
@IPS_DYING_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ctnetlink_del_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_del_conntrack(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %20 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.nfgenmsg* %20, %struct.nfgenmsg** %13, align 8
  %21 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %22 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %25 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %31 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %30, %struct.nf_conntrack_tuple* %11, i64 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  br label %55

34:                                               ; preds = %4
  %35 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %36 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %42 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %41, %struct.nf_conntrack_tuple* %11, i64 %42, i32 %43)
  store i32 %44, i32* %15, align 4
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @NETLINK_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %52 = call i32 @nlmsg_report(%struct.nlmsghdr* %51)
  %53 = call i32 @nf_conntrack_flush_report(i32* @init_net, i32 %50, i32 %52)
  store i32 0, i32* %5, align 4
  br label %120

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %5, align 4
  br label %120

60:                                               ; preds = %55
  %61 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32* @init_net, %struct.nf_conntrack_tuple* %11)
  store %struct.nf_conntrack_tuple_hash* %61, %struct.nf_conntrack_tuple_hash** %10, align 8
  %62 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %10, align 8
  %63 = icmp ne %struct.nf_conntrack_tuple_hash* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %120

67:                                               ; preds = %60
  %68 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %10, align 8
  %69 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %68)
  store %struct.nf_conn* %69, %struct.nf_conn** %12, align 8
  %70 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %71 = load i64, i64* @CTA_ID, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  %76 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %77 = load i64, i64* @CTA_ID, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call i32 @nla_get_be32(%struct.nlattr* %79)
  %81 = call i64 @ntohl(i32 %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %84 = ptrtoint %struct.nf_conn* %83 to i64
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %88 = call i32 @nf_ct_put(%struct.nf_conn* %87)
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %120

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %67
  %93 = load i32, i32* @IPCT_DESTROY, align 4
  %94 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32 @NETLINK_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %101 = call i32 @nlmsg_report(%struct.nlmsghdr* %100)
  %102 = call i64 @nf_conntrack_event_report(i32 %93, %struct.nf_conn* %94, i32 %99, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %106 = call i32 @nf_ct_delete_from_lists(%struct.nf_conn* %105)
  %107 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %108 = call i32 @nf_ct_insert_dying_list(%struct.nf_conn* %107)
  %109 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %110 = call i32 @nf_ct_put(%struct.nf_conn* %109)
  store i32 0, i32* %5, align 4
  br label %120

111:                                              ; preds = %92
  %112 = load i32, i32* @IPS_DYING_BIT, align 4
  %113 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %114 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %113, i32 0, i32 0
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  %116 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %117 = call i32 @nf_ct_kill(%struct.nf_conn* %116)
  %118 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %119 = call i32 @nf_ct_put(%struct.nf_conn* %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %111, %104, %86, %64, %58, %45
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32) #1

declare dso_local i32 @nf_conntrack_flush_report(i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i64 @nf_conntrack_event_report(i32, %struct.nf_conn*, i32, i32) #1

declare dso_local i32 @nf_ct_delete_from_lists(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_insert_dying_list(%struct.nf_conn*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_kill(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
