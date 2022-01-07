; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_sendpack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_sendpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.mld2_report = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICMPV6_MLD2_REPORT = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTMCAST = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @mld_sendpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_sendpack(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.mld2_report*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flowi, align 4
  %11 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %12)
  store %struct.ipv6hdr* %13, %struct.ipv6hdr** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i64 @skb_transport_header(%struct.sk_buff* %14)
  %16 = inttoptr i64 %15 to %struct.mld2_report*
  store %struct.mld2_report* %16, %struct.mld2_report** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call %struct.inet6_dev* @in6_dev_get(%struct.TYPE_7__* %19)
  store %struct.inet6_dev* %20, %struct.inet6_dev** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call %struct.net* @dev_net(%struct.TYPE_7__* %23)
  store %struct.net* %24, %struct.net** %8, align 8
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %27 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IP6_UPD_PO_STATS(%struct.net* %25, %struct.inet6_dev* %26, i32 %27, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 12
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %52 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %54 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %53, i32 0, i32 1
  %55 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %56 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = call i64 @skb_transport_header(%struct.sk_buff* %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @csum_partial(i64 %60, i32 %61, i32 0)
  %63 = call i32 @csum_ipv6_magic(i32* %54, i32* %56, i32 %57, i32 %58, i32 %62)
  %64 = load %struct.mld2_report*, %struct.mld2_report** %4, align 8
  %65 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %70 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %70, i32 0, i32 0
  %72 = call %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_7__* %68, i32* null, i32* %71)
  store %struct.dst_entry* %72, %struct.dst_entry** %11, align 8
  %73 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %74 = icmp ne %struct.dst_entry* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %1
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %148

78:                                               ; preds = %1
  %79 = load %struct.net*, %struct.net** %8, align 8
  %80 = getelementptr inbounds %struct.net, %struct.net* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ICMPV6_MLD2_REPORT, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %85 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %85, i32 0, i32 1
  %87 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %88 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @icmpv6_flow_init(i32 %82, %struct.flowi* %10, i32 %83, i32* %86, i32* %89, i32 %94)
  %96 = load %struct.net*, %struct.net** %8, align 8
  %97 = call i32 @xfrm_lookup(%struct.net* %96, %struct.dst_entry** %11, %struct.flowi* %10, i32* null, i32 0)
  store i32 %97, i32* %9, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %99 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %100 = call i32 @skb_dst_set(%struct.sk_buff* %98, %struct.dst_entry* %99)
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %78
  br label %148

104:                                              ; preds = %78
  %105 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @PF_INET6, align 4
  %109 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* @dst_output, align 4
  %115 = call i32 @NF_HOOK(i32 %108, i32 %109, %struct.sk_buff* %110, i32* null, %struct.TYPE_7__* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %148, %104
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %116
  %120 = load %struct.net*, %struct.net** %8, align 8
  %121 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %122 = load i32, i32* @ICMPV6_MLD2_REPORT, align 4
  %123 = call i32 @ICMP6MSGOUT_INC_STATS_BH(%struct.net* %120, %struct.inet6_dev* %121, i32 %122)
  %124 = load %struct.net*, %struct.net** %8, align 8
  %125 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %126 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %127 = call i32 @ICMP6_INC_STATS_BH(%struct.net* %124, %struct.inet6_dev* %125, i32 %126)
  %128 = load %struct.net*, %struct.net** %8, align 8
  %129 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %130 = load i32, i32* @IPSTATS_MIB_OUTMCAST, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @IP6_UPD_PO_STATS_BH(%struct.net* %128, %struct.inet6_dev* %129, i32 %130, i32 %131)
  br label %138

133:                                              ; preds = %116
  %134 = load %struct.net*, %struct.net** %8, align 8
  %135 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %136 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %137 = call i32 @IP6_INC_STATS_BH(%struct.net* %134, %struct.inet6_dev* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %119
  %139 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %140 = icmp ne %struct.inet6_dev* %139, null
  %141 = zext i1 %140 to i32
  %142 = call i64 @likely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %146 = call i32 @in6_dev_put(%struct.inet6_dev* %145)
  br label %147

147:                                              ; preds = %144, %138
  ret void

148:                                              ; preds = %103, %75
  %149 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %150 = call i32 @kfree_skb(%struct.sk_buff* %149)
  br label %116
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.TYPE_7__*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_7__*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @csum_ipv6_magic(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @csum_partial(i64, i32, i32) #1

declare dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @icmpv6_flow_init(i32, %struct.flowi*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, i32*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS_BH(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ICMP6_INC_STATS_BH(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @IP6_UPD_PO_STATS_BH(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
