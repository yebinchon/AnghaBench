; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c___lro_proc_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c___lro_proc_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_lro_mgr = type { i32, i64, i32, %struct.TYPE_4__*, i32, i32, i64 (%struct.skb_frag_struct*, i8*, i8*, i8*, i32*, i8*)* }
%struct.TYPE_4__ = type { i32 }
%struct.skb_frag_struct = type { i32, i32 }
%struct.vlan_group = type { i32 }
%struct.net_lro_desc = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_5__ = type { i64 }

@LRO_MAX_PG_HLEN = common dso_local global i32 0, align 4
@LRO_IPV4 = common dso_local global i32 0, align 4
@LRO_TCP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@LRO_F_EXTRACT_VLAN_ID = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@aggregated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_lro_mgr*, %struct.skb_frag_struct*, i32, i32, %struct.vlan_group*, i32, i8*, i32)* @__lro_proc_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__lro_proc_segment(%struct.net_lro_mgr* %0, %struct.skb_frag_struct* %1, i32 %2, i32 %3, %struct.vlan_group* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_lro_mgr*, align 8
  %11 = alloca %struct.skb_frag_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vlan_group*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_lro_desc*, align 8
  %19 = alloca %struct.iphdr*, align 8
  %20 = alloca %struct.tcphdr*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %10, align 8
  store %struct.skb_frag_struct* %1, %struct.skb_frag_struct** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.vlan_group* %4, %struct.vlan_group** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load i32, i32* @LRO_MAX_PG_HLEN, align 4
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %28 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %29 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %28, i32 0, i32 6
  %30 = load i64 (%struct.skb_frag_struct*, i8*, i8*, i8*, i32*, i8*)*, i64 (%struct.skb_frag_struct*, i8*, i8*, i8*, i32*, i8*)** %29, align 8
  %31 = icmp ne i64 (%struct.skb_frag_struct*, i8*, i8*, i8*, i32*, i8*)* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %8
  %33 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %34 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %33, i32 0, i32 6
  %35 = load i64 (%struct.skb_frag_struct*, i8*, i8*, i8*, i32*, i8*)*, i64 (%struct.skb_frag_struct*, i8*, i8*, i8*, i32*, i8*)** %34, align 8
  %36 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %37 = bitcast i8** %23 to i8*
  %38 = bitcast %struct.iphdr** %19 to i8*
  %39 = bitcast %struct.tcphdr** %20 to i8*
  %40 = load i8*, i8** %16, align 8
  %41 = call i64 %35(%struct.skb_frag_struct* %36, i8* %37, i8* %38, i8* %39, i32* %22, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32, %8
  %44 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %45 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @page_address(i32 %46)
  %48 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %49 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %47, i64 %51
  store i8* %52, i8** %23, align 8
  br label %230

53:                                               ; preds = %32
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* @LRO_IPV4, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* @LRO_TCP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %53
  br label %230

64:                                               ; preds = %58
  %65 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %66 = bitcast %struct.tcphdr* %65 to i8*
  %67 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %68 = call i64 @TCP_HDR_LEN(%struct.tcphdr* %67)
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = load i8*, i8** %23, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %25, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %76 = bitcast %struct.iphdr* %75 to i8*
  %77 = load i8*, i8** %23, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %24, align 4
  %82 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %83 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %84 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %87 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %88 = call %struct.net_lro_desc* @lro_get_desc(%struct.net_lro_mgr* %82, i32 %85, %struct.iphdr* %86, %struct.tcphdr* %87)
  store %struct.net_lro_desc* %88, %struct.net_lro_desc** %18, align 8
  %89 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %90 = icmp ne %struct.net_lro_desc* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %64
  br label %230

92:                                               ; preds = %64
  %93 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %94 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %166, label %97

97:                                               ; preds = %92
  %98 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %99 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %24, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i64 @lro_tcp_ip_check(%struct.iphdr* %98, %struct.tcphdr* %99, i32 %102, %struct.net_lro_desc* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %230

106:                                              ; preds = %97
  %107 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %108 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i8*, i8** %23, align 8
  %112 = load i32, i32* %25, align 4
  %113 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %114 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.sk_buff* @lro_gen_skb(%struct.net_lro_mgr* %107, %struct.skb_frag_struct* %108, i32 %109, i32 %110, i8* %111, i32 %112, i32 0, i32 %115)
  store %struct.sk_buff* %116, %struct.sk_buff** %21, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %106
  br label %242

120:                                              ; preds = %106
  %121 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @ETH_P_8021Q, align 4
  %125 = call i64 @htons(i32 %124)
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %129 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @LRO_F_EXTRACT_VLAN_ID, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @VLAN_HLEN, align 4
  store i32 %135, i32* %26, align 4
  br label %136

136:                                              ; preds = %134, %127, %120
  %137 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %26, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = inttoptr i64 %142 to i8*
  %144 = bitcast i8* %143 to %struct.iphdr*
  store %struct.iphdr* %144, %struct.iphdr** %19, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32, i32* %26, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %153 = call i32 @IP_HDR_LEN(%struct.iphdr* %152)
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = bitcast i32* %155 to i8*
  %157 = bitcast i8* %156 to %struct.tcphdr*
  store %struct.tcphdr* %157, %struct.tcphdr** %20, align 8
  %158 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %160 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %161 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %162 = call i32 @lro_init_desc(%struct.net_lro_desc* %158, %struct.sk_buff* %159, %struct.iphdr* %160, %struct.tcphdr* %161, i32 0, i32* null)
  %163 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %164 = load i32, i32* @aggregated, align 4
  %165 = call i32 @LRO_INC_STATS(%struct.net_lro_mgr* %163, i32 %164)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %244

166:                                              ; preds = %92
  %167 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %168 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %171 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @ntohl(i32 %172)
  %174 = icmp ne i64 %169, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %226

176:                                              ; preds = %166
  %177 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %178 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %24, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %183 = call i64 @lro_tcp_ip_check(%struct.iphdr* %177, %struct.tcphdr* %178, i32 %181, %struct.net_lro_desc* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %226

186:                                              ; preds = %176
  %187 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %192 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %193 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %194 = call i32 @lro_add_frags(%struct.net_lro_desc* %187, i32 %188, i32 %189, i32 %190, %struct.skb_frag_struct* %191, %struct.iphdr* %192, %struct.tcphdr* %193)
  %195 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %196 = load i32, i32* @aggregated, align 4
  %197 = call i32 @LRO_INC_STATS(%struct.net_lro_mgr* %195, i32 %196)
  %198 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %199 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = call %struct.TYPE_5__* @skb_shinfo(%struct.TYPE_6__* %200)
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %205 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp sge i64 %203, %206
  br i1 %207, label %221, label %208

208:                                              ; preds = %186
  %209 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %210 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %209, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %215 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 65535, %218
  %220 = icmp sgt i32 %213, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %208, %186
  %222 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %223 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %224 = call i32 @lro_flush(%struct.net_lro_mgr* %222, %struct.net_lro_desc* %223)
  br label %225

225:                                              ; preds = %221, %208
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %244

226:                                              ; preds = %185, %175
  %227 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %228 = load %struct.net_lro_desc*, %struct.net_lro_desc** %18, align 8
  %229 = call i32 @lro_flush(%struct.net_lro_mgr* %227, %struct.net_lro_desc* %228)
  br label %230

230:                                              ; preds = %226, %105, %91, %63, %43
  %231 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %232 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i8*, i8** %23, align 8
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %10, align 8
  %239 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call %struct.sk_buff* @lro_gen_skb(%struct.net_lro_mgr* %231, %struct.skb_frag_struct* %232, i32 %233, i32 %234, i8* %235, i32 %236, i32 %237, i32 %240)
  store %struct.sk_buff* %241, %struct.sk_buff** %21, align 8
  br label %242

242:                                              ; preds = %230, %119
  %243 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %243, %struct.sk_buff** %9, align 8
  br label %244

244:                                              ; preds = %242, %225, %136
  %245 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %245
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i64 @TCP_HDR_LEN(%struct.tcphdr*) #1

declare dso_local %struct.net_lro_desc* @lro_get_desc(%struct.net_lro_mgr*, i32, %struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i64 @lro_tcp_ip_check(%struct.iphdr*, %struct.tcphdr*, i32, %struct.net_lro_desc*) #1

declare dso_local %struct.sk_buff* @lro_gen_skb(%struct.net_lro_mgr*, %struct.skb_frag_struct*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @IP_HDR_LEN(%struct.iphdr*) #1

declare dso_local i32 @lro_init_desc(%struct.net_lro_desc*, %struct.sk_buff*, %struct.iphdr*, %struct.tcphdr*, i32, i32*) #1

declare dso_local i32 @LRO_INC_STATS(%struct.net_lro_mgr*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @lro_add_frags(%struct.net_lro_desc*, i32, i32, i32, %struct.skb_frag_struct*, %struct.iphdr*, %struct.tcphdr*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.TYPE_6__*) #1

declare dso_local i32 @lro_flush(%struct.net_lro_mgr*, %struct.net_lro_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
