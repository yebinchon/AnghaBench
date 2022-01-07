; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6ip6_tnl_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6ip6_tnl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ipv6hdr = type { i32 }
%struct.flowi = type { i32, i64 }
%struct.ipv6_tlv_tnl_enc_lim = type { i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@ICMPV6_PARAMPROB = common dso_local global i32 0, align 4
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@IP6_TNL_F_IGN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IPV6_TCLASS_MASK = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FLOWLABEL = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ip6ip6_tnl_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6ip6_tnl_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.flowi, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6_tlv_tnl_enc_lim*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %15)
  store %struct.ip6_tnl* %16, %struct.ip6_tnl** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %17)
  store %struct.ipv6hdr* %18, %struct.ipv6hdr** %7, align 8
  store i32 -1, i32* %8, align 4
  %19 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %20 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPPROTO_IPV6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %27 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %33 = call i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %37 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %38 = call i64 @ip6_tnl_addr_conflict(%struct.ip6_tnl* %36, %struct.ipv6hdr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %31, %25
  store i32 -1, i32* %3, align 4
  br label %149

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32* @skb_network_header(%struct.sk_buff* %43)
  %45 = call i64 @parse_tlv_tnl_enc_lim(%struct.sk_buff* %42, i32* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32* @skb_network_header(%struct.sk_buff* %49)
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = bitcast i32* %52 to %struct.ipv6_tlv_tnl_enc_lim*
  store %struct.ipv6_tlv_tnl_enc_lim* %53, %struct.ipv6_tlv_tnl_enc_lim** %14, align 8
  %54 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %14, align 8
  %55 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @ICMPV6_PARAMPROB, align 4
  %61 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 2
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = call i32 @icmpv6_send(%struct.sk_buff* %59, i32 %60, i32 %61, i64 %63, %struct.net_device* %66)
  store i32 -1, i32* %3, align 4
  br label %149

68:                                               ; preds = %48
  %69 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %14, align 8
  %70 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %87

73:                                               ; preds = %41
  %74 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %75 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %83 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %73
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %89 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %88, i32 0, i32 1
  %90 = call i32 @memcpy(%struct.flowi* %10, i32* %89, i32 16)
  %91 = load i64, i64* @IPPROTO_IPV6, align 8
  %92 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %94 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %96 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %87
  %103 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %104 = bitcast %struct.ipv6hdr* %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IPV6_TCLASS_MASK, align 4
  %107 = and i32 %105, %106
  %108 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %102, %87
  %112 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %113 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IP6_TNL_F_USE_ORIG_FLOWLABEL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %121 = bitcast %struct.ipv6hdr* %120 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %124 = and i32 %122, %123
  %125 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %119, %111
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @ip6_tnl_xmit2(%struct.sk_buff* %129, %struct.net_device* %130, i32 %131, %struct.flowi* %10, i32 %132, i64* %12)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @EMSGSIZE, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @icmpv6_send(%struct.sk_buff* %142, i32 %143, i32 0, i64 %144, %struct.net_device* %145)
  br label %147

147:                                              ; preds = %141, %136
  store i32 -1, i32* %3, align 4
  br label %149

148:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %147, %58, %40
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl*) #1

declare dso_local i64 @ip6_tnl_addr_conflict(%struct.ip6_tnl*, %struct.ipv6hdr*) #1

declare dso_local i64 @parse_tlv_tnl_enc_lim(%struct.sk_buff*, i32*) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i64, %struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.flowi*, i32*, i32) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @ip6_tnl_xmit2(%struct.sk_buff*, %struct.net_device*, i32, %struct.flowi*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
