; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_in_icmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_in_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i64, i64, i32, i32 }
%struct.icmphdr = type { i32, i32, i64, i64, i32, i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_protocol = type { %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.0*, i32, i32)*, %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.1*, i32, i32)*, i64 }
%struct.ip_vs_iphdr.0 = type opaque
%struct.ip_vs_iphdr.1 = type opaque
%union.nf_inet_addr = type { i32 }

@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@IP_DEFRAG_VS_IN = common dso_local global i32 0, align 4
@IP_DEFRAG_VS_FWD = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Incoming ICMP (%d,%d) %pI4->%pI4\0A\00", align 1
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_SOURCE_QUENCH = common dso_local global i64 0, align 8
@ICMP_TIME_EXCEEDED = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Checking incoming ICMP for\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Incoming ICMP: failed checksum from %pI4!\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i32)* @ip_vs_in_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_in_icmp(%struct.sk_buff* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.icmphdr, align 8
  %10 = alloca %struct.icmphdr*, align 8
  %11 = alloca %struct.iphdr, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.ip_vs_iphdr, align 4
  %14 = alloca %struct.ip_vs_conn*, align 8
  %15 = alloca %struct.ip_vs_protocol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %union.nf_inet_addr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 1, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IP_MF, align 4
  %26 = load i32, i32* @IP_OFFSET, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @htons(i32 %27)
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @IP_DEFRAG_VS_IN, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @IP_DEFRAG_VS_FWD, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i64 @ip_vs_gather_frags(%struct.sk_buff* %32, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @NF_STOLEN, align 4
  store i32 %45, i32* %4, align 4
  br label %236

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %48)
  store %struct.iphdr* %49, %struct.iphdr** %8, align 8
  %50 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 4
  store i32 %53, i32* %17, align 4
  store i32 %53, i32* %16, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* %16, align 4
  %56 = bitcast %struct.icmphdr* %9 to %struct.iphdr*
  %57 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %54, i32 %55, i32 32, %struct.iphdr* %56)
  %58 = bitcast %struct.iphdr* %57 to %struct.icmphdr*
  store %struct.icmphdr* %58, %struct.icmphdr** %10, align 8
  %59 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %60 = icmp eq %struct.icmphdr* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @NF_DROP, align 4
  store i32 %62, i32* %4, align 4
  br label %236

63:                                               ; preds = %47
  %64 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %65 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %68 = bitcast %struct.icmphdr* %67 to %struct.iphdr*
  %69 = call i32 @icmp_id(%struct.iphdr* %68)
  %70 = call i32 @ntohs(i32 %69)
  %71 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %72 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %71, i32 0, i32 4
  %73 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 5
  %75 = call i32 (i32, i8*, i64, ...) @IP_VS_DBG(i32 12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %66, i32 %70, i32* %72, i32* %74)
  %76 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %77 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %63
  %82 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %83 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ICMP_SOURCE_QUENCH, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %89 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ICMP_TIME_EXCEEDED, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %6, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %95, i32* %4, align 4
  br label %236

96:                                               ; preds = %87, %81, %63
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = add i64 %98, 32
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %16, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %101, i32 %102, i32 32, %struct.iphdr* %11)
  store %struct.iphdr* %103, %struct.iphdr** %12, align 8
  %104 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %105 = icmp eq %struct.iphdr* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %107, i32* %4, align 4
  br label %236

108:                                              ; preds = %96
  %109 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %110 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i64 %111)
  store %struct.ip_vs_protocol* %112, %struct.ip_vs_protocol** %15, align 8
  %113 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %114 = icmp ne %struct.ip_vs_protocol* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %116, i32* %4, align 4
  br label %236

117:                                              ; preds = %108
  %118 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IP_OFFSET, align 4
  %122 = call i32 @htons(i32 %121)
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %127 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %125, %117
  %131 = phi i1 [ false, %117 ], [ %129, %125 ]
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %136, i32* %4, align 4
  br label %236

137:                                              ; preds = %130
  %138 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @IP_VS_DBG_PKT(i32 11, %struct.ip_vs_protocol* %138, %struct.sk_buff* %139, i32 %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %143 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %144, 4
  %146 = load i32, i32* %16, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* @AF_INET, align 4
  %149 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %150 = call i32 @ip_vs_fill_iphdr(i32 %148, %struct.iphdr* %149, %struct.ip_vs_iphdr* %13)
  %151 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %152 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %151, i32 0, i32 1
  %153 = load %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.1*, i32, i32)*, %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.1*, i32, i32)** %152, align 8
  %154 = load i32, i32* @AF_INET, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %157 = bitcast %struct.ip_vs_iphdr* %13 to %struct.ip_vs_iphdr.1*
  %158 = load i32, i32* %16, align 4
  %159 = call %struct.ip_vs_conn* %153(i32 %154, %struct.sk_buff* %155, %struct.ip_vs_protocol* %156, %struct.ip_vs_iphdr.1* %157, i32 %158, i32 1)
  store %struct.ip_vs_conn* %159, %struct.ip_vs_conn** %14, align 8
  %160 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %161 = icmp ne %struct.ip_vs_conn* %160, null
  br i1 %161, label %191, label %162

162:                                              ; preds = %137
  %163 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %164 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %163, i32 0, i32 0
  %165 = load %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.0*, i32, i32)*, %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.0*, i32, i32)** %164, align 8
  %166 = load i32, i32* @AF_INET, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %169 = bitcast %struct.ip_vs_iphdr* %13 to %struct.ip_vs_iphdr.0*
  %170 = load i32, i32* %16, align 4
  %171 = call %struct.ip_vs_conn* %165(i32 %166, %struct.sk_buff* %167, %struct.ip_vs_protocol* %168, %struct.ip_vs_iphdr.0* %169, i32 %170, i32 1)
  store %struct.ip_vs_conn* %171, %struct.ip_vs_conn** %14, align 8
  %172 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %173 = icmp ne %struct.ip_vs_conn* %172, null
  br i1 %173, label %174, label %189

174:                                              ; preds = %162
  %175 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = bitcast %union.nf_inet_addr* %19 to i32*
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @AF_INET, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %182 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %185 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @handle_response_icmp(i32 %179, %struct.sk_buff* %180, %union.nf_inet_addr* %19, i64 %183, %struct.ip_vs_conn* %184, %struct.ip_vs_protocol* %185, i32 %186, i32 %187)
  store i32 %188, i32* %4, align 4
  br label %236

189:                                              ; preds = %162
  %190 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %190, i32* %4, align 4
  br label %236

191:                                              ; preds = %137
  %192 = load i32, i32* @NF_DROP, align 4
  store i32 %192, i32* %18, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = call i32 @skb_csum_unnecessary(%struct.sk_buff* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %191
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i64 @ip_vs_checksum_complete(%struct.sk_buff* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %203 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %202, i32 0, i32 4
  %204 = ptrtoint i32* %203 to i64
  %205 = call i32 (i32, i8*, i64, ...) @IP_VS_DBG(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %204)
  br label %232

206:                                              ; preds = %196, %191
  %207 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = call i32 @ip_vs_in_stats(%struct.ip_vs_conn* %207, %struct.sk_buff* %208)
  %210 = load i64, i64* @IPPROTO_TCP, align 8
  %211 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %212 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %206
  %216 = load i64, i64* @IPPROTO_UDP, align 8
  %217 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %216, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %215, %206
  %222 = load i32, i32* %16, align 4
  %223 = zext i32 %222 to i64
  %224 = add i64 %223, 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %16, align 4
  br label %226

226:                                              ; preds = %221, %215
  %227 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %228 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %229 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @ip_vs_icmp_xmit(%struct.sk_buff* %227, %struct.ip_vs_conn* %228, %struct.ip_vs_protocol* %229, i32 %230)
  store i32 %231, i32* %18, align 4
  br label %232

232:                                              ; preds = %226, %201
  %233 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %234 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %233)
  %235 = load i32, i32* %18, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %232, %189, %174, %135, %115, %106, %93, %61, %44
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ip_vs_gather_frags(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i64, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @icmp_id(%struct.iphdr*) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @ip_vs_fill_iphdr(i32, %struct.iphdr*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @handle_response_icmp(i32, %struct.sk_buff*, %union.nf_inet_addr*, i64, %struct.ip_vs_conn*, %struct.ip_vs_protocol*, i32, i32) #1

declare dso_local i32 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @ip_vs_checksum_complete(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_in_stats(%struct.ip_vs_conn*, %struct.sk_buff*) #1

declare dso_local i32 @ip_vs_icmp_xmit(%struct.sk_buff*, %struct.ip_vs_conn*, %struct.ip_vs_protocol*, i32) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
