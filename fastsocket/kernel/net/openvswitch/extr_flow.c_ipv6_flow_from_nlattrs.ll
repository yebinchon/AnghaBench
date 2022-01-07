; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ipv6_flow_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ipv6_flow_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.sw_flow_key = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32*, i32*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.ovs_key_icmpv6 = type { i32, i32 }
%struct.ovs_key_tcp = type { i8*, i8* }
%struct.ovs_key_udp = type { i8*, i8* }
%struct.ovs_key_nd = type { i32, i32, i32 }

@OVS_KEY_ATTR_TCP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ipv6 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@OVS_KEY_ATTR_UDP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ICMPV6 = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ND = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*, i32*, %struct.nlattr**, i32*)* @ipv6_flow_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_flow_from_nlattrs(%struct.sw_flow_key* %0, i32* %1, %struct.nlattr** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ovs_key_icmpv6*, align 8
  %11 = alloca %struct.ovs_key_tcp*, align 8
  %12 = alloca %struct.ovs_key_udp*, align 8
  %13 = alloca %struct.ovs_key_nd*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %15 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %216 [
    i32 129, label %18
    i32 128, label %59
    i32 130, label %100
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %217

28:                                               ; preds = %18
  %29 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ipv6, i32 0, i32 1), align 4
  %36 = call i32 @SW_FLOW_KEY_OFFSET(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %39 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i8* @nla_data(%struct.nlattr* %42)
  %44 = bitcast i8* %43 to %struct.ovs_key_tcp*
  store %struct.ovs_key_tcp* %44, %struct.ovs_key_tcp** %11, align 8
  %45 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %11, align 8
  %46 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %49 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %47, i8** %51, align 8
  %52 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %11, align 8
  %53 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %56 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  br label %216

59:                                               ; preds = %4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %217

69:                                               ; preds = %59
  %70 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ipv6, i32 0, i32 1), align 4
  %77 = call i32 @SW_FLOW_KEY_OFFSET(i32 %76)
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %80 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i8* @nla_data(%struct.nlattr* %83)
  %85 = bitcast i8* %84 to %struct.ovs_key_udp*
  store %struct.ovs_key_udp* %85, %struct.ovs_key_udp** %12, align 8
  %86 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %12, align 8
  %87 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %90 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  %93 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %12, align 8
  %94 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %97 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i8* %95, i8** %99, align 8
  br label %216

100:                                              ; preds = %4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %217

110:                                              ; preds = %100
  %111 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %112 = shl i32 1, %111
  %113 = xor i32 %112, -1
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ipv6, i32 0, i32 1), align 4
  %118 = call i32 @SW_FLOW_KEY_OFFSET(i32 %117)
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  %120 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %121 = load i32, i32* @OVS_KEY_ATTR_ICMPV6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %120, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call i8* @nla_data(%struct.nlattr* %124)
  %126 = bitcast i8* %125 to %struct.ovs_key_icmpv6*
  store %struct.ovs_key_icmpv6* %126, %struct.ovs_key_icmpv6** %10, align 8
  %127 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %10, align 8
  %128 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @htons(i32 %129)
  %131 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %132 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i8* %130, i8** %134, align 8
  %135 = load %struct.ovs_key_icmpv6*, %struct.ovs_key_icmpv6** %10, align 8
  %136 = getelementptr inbounds %struct.ovs_key_icmpv6, %struct.ovs_key_icmpv6* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @htons(i32 %137)
  %139 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %140 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i8* %138, i8** %142, align 8
  %143 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %144 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @NDISC_NEIGHBOUR_SOLICITATION, align 4
  %149 = call i8* @htons(i32 %148)
  %150 = icmp eq i8* %147, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %110
  %152 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %153 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 4
  %158 = call i8* @htons(i32 %157)
  %159 = icmp eq i8* %156, %158
  br i1 %159, label %160, label %215

160:                                              ; preds = %151, %110
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %164 = shl i32 1, %163
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %217

170:                                              ; preds = %160
  %171 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %172 = shl i32 1, %171
  %173 = xor i32 %172, -1
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %173
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ipv6, i32 0, i32 0), align 4
  %178 = call i32 @SW_FLOW_KEY_OFFSET(i32 %177)
  %179 = load i32*, i32** %7, align 8
  store i32 %178, i32* %179, align 4
  %180 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %181 = load i32, i32* @OVS_KEY_ATTR_ND, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %180, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = call i8* @nla_data(%struct.nlattr* %184)
  %186 = bitcast i8* %185 to %struct.ovs_key_nd*
  store %struct.ovs_key_nd* %186, %struct.ovs_key_nd** %13, align 8
  %187 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %188 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %13, align 8
  %192 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @memcpy(i32* %190, i32 %193, i32 4)
  %195 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %196 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %13, align 8
  %201 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @ETH_ALEN, align 4
  %204 = call i32 @memcpy(i32* %199, i32 %202, i32 %203)
  %205 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %206 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.ovs_key_nd*, %struct.ovs_key_nd** %13, align 8
  %211 = getelementptr inbounds %struct.ovs_key_nd, %struct.ovs_key_nd* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ETH_ALEN, align 4
  %214 = call i32 @memcpy(i32* %209, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %170, %151
  br label %216

216:                                              ; preds = %4, %215, %69, %28
  store i32 0, i32* %5, align 4
  br label %217

217:                                              ; preds = %216, %167, %107, %66, %25
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @SW_FLOW_KEY_OFFSET(i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
