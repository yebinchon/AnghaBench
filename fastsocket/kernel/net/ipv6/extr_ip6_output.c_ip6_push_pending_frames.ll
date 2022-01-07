; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i64, i32, i32, i32*, i32*, i64, i32, %struct.sk_buff* }
%struct.in6_addr = type { i32 }
%struct.inet_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flowi, i64 }
%struct.flowi = type { i8, i32, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_pinfo = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, %struct.ipv6_txoptions* }
%struct.ipv6_txoptions = type { i64, i64 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i8, %struct.in6_addr, %struct.in6_addr, i32 }
%struct.rt6_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.TYPE_9__ = type { %struct.sk_buff* }
%struct.TYPE_10__ = type { i32 }

@IPV6_PMTUDISC_DO = common dso_local global i64 0, align 8
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i8 0, align 1
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_push_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.ipv6_txoptions*, align 8
  %13 = alloca %struct.rt6_info*, align 8
  %14 = alloca %struct.flowi*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.inet6_dev*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  store %struct.in6_addr* %6, %struct.in6_addr** %7, align 8
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call %struct.inet_sock* @inet_sk(%struct.sock* %18)
  store %struct.inet_sock* %19, %struct.inet_sock** %8, align 8
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %20)
  store %struct.ipv6_pinfo* %21, %struct.ipv6_pinfo** %9, align 8
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call %struct.net* @sock_net(%struct.sock* %22)
  store %struct.net* %23, %struct.net** %10, align 8
  %24 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %25 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %26, align 8
  store %struct.ipv6_txoptions* %27, %struct.ipv6_txoptions** %12, align 8
  %28 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %29 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.rt6_info*
  store %struct.rt6_info* %32, %struct.rt6_info** %13, align 8
  %33 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %34 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.flowi* %35, %struct.flowi** %14, align 8
  %36 = load %struct.flowi*, %struct.flowi** %14, align 8
  %37 = getelementptr inbounds %struct.flowi, %struct.flowi* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  store i8 %38, i8* %15, align 1
  store i32 0, i32* %16, align 4
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 2
  %41 = call %struct.sk_buff* @__skb_dequeue(i32* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %3, align 8
  %42 = icmp eq %struct.sk_buff* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %243

44:                                               ; preds = %1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store %struct.sk_buff** %47, %struct.sk_buff*** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i64 @skb_network_header(%struct.sk_buff* %51)
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i32 @skb_network_offset(%struct.sk_buff* %56)
  %58 = call i32 @__skb_pull(%struct.sk_buff* %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %44
  br label %60

60:                                               ; preds = %65, %59
  %61 = load %struct.sock*, %struct.sock** %2, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 2
  %63 = call %struct.sk_buff* @__skb_dequeue(i32* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %4, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %65, label %101

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @skb_network_header_len(%struct.sk_buff* %67)
  %69 = call i32 @__skb_pull(%struct.sk_buff* %66, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 9
  store %struct.sk_buff** %73, %struct.sk_buff*** %5, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 6
  store i32* null, i32** %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 5
  store i32* null, i32** %100, align 8
  br label %60

101:                                              ; preds = %60
  %102 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %103 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IPV6_PMTUDISC_DO, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %112 = load %struct.flowi*, %struct.flowi** %14, align 8
  %113 = getelementptr inbounds %struct.flowi, %struct.flowi* %112, i32 0, i32 3
  %114 = call i32 @ipv6_addr_copy(%struct.in6_addr* %111, %struct.in6_addr* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = call i32 @skb_network_header_len(%struct.sk_buff* %116)
  %118 = call i32 @__skb_pull(%struct.sk_buff* %115, i32 %117)
  %119 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %12, align 8
  %120 = icmp ne %struct.ipv6_txoptions* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %110
  %122 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %12, align 8
  %123 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %12, align 8
  %129 = call i32 @ipv6_push_frag_opts(%struct.sk_buff* %127, %struct.ipv6_txoptions* %128, i8* %15)
  br label %130

130:                                              ; preds = %126, %121, %110
  %131 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %12, align 8
  %132 = icmp ne %struct.ipv6_txoptions* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %12, align 8
  %135 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %140 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %12, align 8
  %141 = call i32 @ipv6_push_nfrag_opts(%struct.sk_buff* %139, %struct.ipv6_txoptions* %140, i8* %15, %struct.in6_addr** %7)
  br label %142

142:                                              ; preds = %138, %133, %130
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = call i32 @skb_push(%struct.sk_buff* %143, i32 16)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = call i32 @skb_reset_network_header(%struct.sk_buff* %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %147)
  store %struct.ipv6hdr* %148, %struct.ipv6hdr** %11, align 8
  %149 = load %struct.flowi*, %struct.flowi** %14, align 8
  %150 = getelementptr inbounds %struct.flowi, %struct.flowi* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %153 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = shl i32 %156, 20
  %158 = or i32 1610612736, %157
  %159 = call i32 @htonl(i32 %158)
  %160 = or i32 %151, %159
  %161 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %162 = bitcast %struct.ipv6hdr* %161 to i32*
  store i32 %160, i32* %162, align 4
  %163 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %164 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %168 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load i8, i8* %15, align 1
  %170 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %171 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %170, i32 0, i32 0
  store i8 %169, i8* %171, align 4
  %172 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %173 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %172, i32 0, i32 2
  %174 = load %struct.flowi*, %struct.flowi** %14, align 8
  %175 = getelementptr inbounds %struct.flowi, %struct.flowi* %174, i32 0, i32 2
  %176 = call i32 @ipv6_addr_copy(%struct.in6_addr* %173, %struct.in6_addr* %175)
  %177 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %178 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %177, i32 0, i32 1
  %179 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %180 = call i32 @ipv6_addr_copy(%struct.in6_addr* %178, %struct.in6_addr* %179)
  %181 = load %struct.sock*, %struct.sock** %2, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.sock*, %struct.sock** %2, align 8
  %187 = getelementptr inbounds %struct.sock, %struct.sock* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %192 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %193 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = call i32 @dst_clone(i32* %194)
  %196 = call i32 @skb_dst_set(%struct.sk_buff* %191, i32 %195)
  %197 = load %struct.net*, %struct.net** %10, align 8
  %198 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %199 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @IP6_UPD_PO_STATS(%struct.net* %197, i32 %200, i32 %201, i64 %204)
  %206 = load i8, i8* %15, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @IPPROTO_ICMPV6, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %142
  %212 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %213 = call i32 @skb_dst(%struct.sk_buff* %212)
  %214 = call %struct.inet6_dev* @ip6_dst_idev(i32 %213)
  store %struct.inet6_dev* %214, %struct.inet6_dev** %17, align 8
  %215 = load %struct.net*, %struct.net** %10, align 8
  %216 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %218 = call %struct.TYPE_10__* @icmp6_hdr(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @ICMP6MSGOUT_INC_STATS_BH(%struct.net* %215, %struct.inet6_dev* %216, i32 %220)
  %222 = load %struct.net*, %struct.net** %10, align 8
  %223 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %224 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %225 = call i32 @ICMP6_INC_STATS_BH(%struct.net* %222, %struct.inet6_dev* %223, i32 %224)
  br label %226

226:                                              ; preds = %211, %142
  %227 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %228 = call i32 @ip6_local_out(%struct.sk_buff* %227)
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load i32, i32* %16, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %16, align 4
  %236 = call i32 @net_xmit_errno(i32 %235)
  store i32 %236, i32* %16, align 4
  br label %237

237:                                              ; preds = %234, %231
  %238 = load i32, i32* %16, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %248

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %241, %226
  br label %243

243:                                              ; preds = %248, %242, %43
  %244 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %245 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %246 = call i32 @ip6_cork_release(%struct.inet_sock* %244, %struct.ipv6_pinfo* %245)
  %247 = load i32, i32* %16, align 4
  ret i32 %247

248:                                              ; preds = %240
  %249 = load %struct.net*, %struct.net** %10, align 8
  %250 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %251 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %254 = call i32 @IP6_INC_STATS(%struct.net* %249, i32 %252, i32 %253)
  br label %243
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_push_frag_opts(%struct.sk_buff*, %struct.ipv6_txoptions*, i8*) #1

declare dso_local i32 @ipv6_push_nfrag_opts(%struct.sk_buff*, %struct.ipv6_txoptions*, i8*, %struct.in6_addr**) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, i32, i32, i64) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS_BH(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local %struct.TYPE_10__* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ICMP6_INC_STATS_BH(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ip6_local_out(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @ip6_cork_release(%struct.inet_sock*, %struct.ipv6_pinfo*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
