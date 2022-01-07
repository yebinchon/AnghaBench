; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_do_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.ipv6_pinfo = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@TCP_MIB_INERRS = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tcp_v6_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %10)
  store %struct.ipv6_pinfo* %11, %struct.ipv6_pinfo** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IP, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @tcp_v4_do_rcv(%struct.sock* %19, %struct.sk_buff* %20)
  store i32 %21, i32* %3, align 4
  br label %260

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @sk_filter(%struct.sock* %23, %struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %148

28:                                               ; preds = %22
  %29 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %30 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TCP_ESTABLISHED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @TCP_CHECK_TIMER(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sock_rps_save_rxhash(%struct.sock* %47, i32 %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @tcp_hdr(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @tcp_rcv_established(%struct.sock* %52, %struct.sk_buff* %53, i32 %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %144

62:                                               ; preds = %44
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = call i32 @TCP_CHECK_TIMER(%struct.sock* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %162

68:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %260

69:                                               ; preds = %38
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i64 @tcp_hdrlen(%struct.sk_buff* %73)
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i64 @tcp_checksum_complete(%struct.sk_buff* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %69
  br label %157

81:                                               ; preds = %76
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TCP_LISTEN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call %struct.sock* @tcp_v6_hnd_req(%struct.sock* %88, %struct.sk_buff* %89)
  store %struct.sock* %90, %struct.sock** %9, align 8
  %91 = load %struct.sock*, %struct.sock** %9, align 8
  %92 = icmp ne %struct.sock* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %148

94:                                               ; preds = %87
  %95 = load %struct.sock*, %struct.sock** %9, align 8
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = icmp ne %struct.sock* %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load %struct.sock*, %struct.sock** %9, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @sock_rps_save_rxhash(%struct.sock* %99, i32 %102)
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = load %struct.sock*, %struct.sock** %9, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i64 @tcp_child_process(%struct.sock* %104, %struct.sock* %105, %struct.sk_buff* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %144

110:                                              ; preds = %98
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = call i32 @__kfree_skb(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %3, align 4
  br label %260

117:                                              ; preds = %94
  br label %124

118:                                              ; preds = %81
  %119 = load %struct.sock*, %struct.sock** %4, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @sock_rps_save_rxhash(%struct.sock* %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %117
  %125 = load %struct.sock*, %struct.sock** %4, align 8
  %126 = call i32 @TCP_CHECK_TIMER(%struct.sock* %125)
  %127 = load %struct.sock*, %struct.sock** %4, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @tcp_hdr(%struct.sk_buff* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @tcp_rcv_state_process(%struct.sock* %127, %struct.sk_buff* %128, i32 %130, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %144

137:                                              ; preds = %124
  %138 = load %struct.sock*, %struct.sock** %4, align 8
  %139 = call i32 @TCP_CHECK_TIMER(%struct.sock* %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = icmp ne %struct.sk_buff* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %162

143:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %260

144:                                              ; preds = %136, %109, %61
  %145 = load %struct.sock*, %struct.sock** %4, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i32 @tcp_v6_send_reset(%struct.sock* %145, %struct.sk_buff* %146)
  br label %148

148:                                              ; preds = %157, %144, %93, %27
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = call i32 @__kfree_skb(%struct.sk_buff* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 @kfree_skb(%struct.sk_buff* %155)
  store i32 0, i32* %3, align 4
  br label %260

157:                                              ; preds = %80
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = call i32 @sock_net(%struct.sock* %158)
  %160 = load i32, i32* @TCP_MIB_INERRS, align 4
  %161 = call i32 @TCP_INC_STATS_BH(i32 %159, i32 %160)
  br label %148

162:                                              ; preds = %142, %67
  %163 = load %struct.sock*, %struct.sock** %4, align 8
  %164 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %163)
  store %struct.tcp_sock* %164, %struct.tcp_sock** %7, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = call %struct.TYPE_11__* @TCP_SKB_CB(%struct.sk_buff* %165)
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %170 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %257

173:                                              ; preds = %162
  %174 = load %struct.sock*, %struct.sock** %4, align 8
  %175 = getelementptr inbounds %struct.sock, %struct.sock* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 1, %176
  %178 = load i32, i32* @TCPF_CLOSE, align 4
  %179 = load i32, i32* @TCPF_LISTEN, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %257, label %183

183:                                              ; preds = %173
  %184 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %185 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %192 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190, %183
  %198 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %199 = call i32 @inet6_iif(%struct.sk_buff* %198)
  %200 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %201 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %190
  %203 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %204 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %202
  %210 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %211 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %209, %202
  %217 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %218 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %222 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %216, %209
  %224 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %225 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %232 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %231)
  %233 = call i32 @ipv6_tclass(%struct.TYPE_10__* %232)
  %234 = load %struct.sock*, %struct.sock** %4, align 8
  %235 = call %struct.TYPE_9__* @sk_extended(%struct.sock* %234)
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  br label %237

237:                                              ; preds = %230, %223
  %238 = load %struct.sock*, %struct.sock** %4, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %240 = call i64 @ipv6_opt_accepted(%struct.sock* %238, %struct.sk_buff* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %244 = load %struct.sock*, %struct.sock** %4, align 8
  %245 = call i32 @skb_set_owner_r(%struct.sk_buff* %243, %struct.sock* %244)
  %246 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %247 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %246, i32 0, i32 0
  %248 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %249 = call %struct.sk_buff* @xchg(i32* %247, %struct.sk_buff* %248)
  store %struct.sk_buff* %249, %struct.sk_buff** %8, align 8
  br label %256

250:                                              ; preds = %237
  %251 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %252 = call i32 @__kfree_skb(%struct.sk_buff* %251)
  %253 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %254 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %253, i32 0, i32 0
  %255 = call %struct.sk_buff* @xchg(i32* %254, %struct.sk_buff* null)
  store %struct.sk_buff* %255, %struct.sk_buff** %8, align 8
  br label %256

256:                                              ; preds = %250, %242
  br label %257

257:                                              ; preds = %256, %173, %162
  %258 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %259 = call i32 @kfree_skb(%struct.sk_buff* %258)
  store i32 0, i32* %3, align 4
  br label %260

260:                                              ; preds = %257, %154, %143, %116, %68, %18
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @tcp_v4_do_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @TCP_CHECK_TIMER(%struct.sock*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, i32) #1

declare dso_local i64 @tcp_rcv_established(%struct.sock*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @tcp_checksum_complete(%struct.sk_buff*) #1

declare dso_local %struct.sock* @tcp_v6_hnd_req(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @tcp_rcv_state_process(%struct.sock*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @tcp_v6_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_11__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_tclass(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @sk_extended(%struct.sock*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local %struct.sk_buff* @xchg(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
