; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_fill_packet_ipv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_fill_packet_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32, i32, i32, %struct.net_device*, i8* }
%struct.net_device = type { i32 }
%struct.pktgen_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.udphdr = type { i64, i8*, i8*, i8* }
%struct.iphdr = type { i32, i32, i32, i64, i8*, i64, i8*, i32, i32, i32, i32 }
%struct.pktgen_hdr = type { i8*, i8*, i8*, i8* }
%struct.page = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, %struct.page* }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_MPLS_UC = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PKTGEN_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.pktgen_dev*)* @fill_packet_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fill_packet_ipv4(%struct.net_device* %0, %struct.pktgen_dev* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pktgen_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.pktgen_hdr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.page*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.timeval, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store %struct.pktgen_hdr* null, %struct.pktgen_hdr** %12, align 8
  %26 = load i32, i32* @ETH_P_IP, align 4
  %27 = call i8* @htons(i32 %26)
  store i8* %27, i8** %13, align 8
  store i8** null, i8*** %15, align 8
  store i8** null, i8*** %16, align 8
  store i8** null, i8*** %17, align 8
  store i8** null, i8*** %18, align 8
  %28 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ETH_P_MPLS_UC, align 4
  %34 = call i8* @htons(i32 %33)
  store i8* %34, i8** %13, align 8
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 65535
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ETH_P_8021Q, align 4
  %42 = call i8* @htons(i32 %41)
  store i8* %42, i8** %13, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %45 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %44, i32 0, i32 19
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %19, align 4
  %47 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %48 = call i32 @mod_cur_headers(%struct.pktgen_dev* %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 16
  %53 = and i32 %52, -16
  store i32 %53, i32* %9, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 64
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load i32, i32* @GFP_NOWAIT, align 4
  %66 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %54, i32 %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %6, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %43
  %70 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %70, i32 0, i32 18
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sprintf(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %568

74:                                               ; preds = %43
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @skb_reserve(%struct.sk_buff* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call i64 @skb_push(%struct.sk_buff* %78, i32 14)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %7, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %83 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %81, i32 %87)
  %89 = bitcast %struct.pktgen_hdr* %88 to i32*
  store i32* %89, i32** %14, align 8
  %90 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %74
  %95 = load i32*, i32** %14, align 8
  %96 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %97 = call i32 @mpls_push(i32* %95, %struct.pktgen_dev* %96)
  br label %98

98:                                               ; preds = %94, %74
  %99 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %100 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 65535
  br i1 %102, label %103, label %150

103:                                              ; preds = %98
  %104 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %105 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 65535
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %109, i32 8)
  %111 = bitcast %struct.pktgen_hdr* %110 to i8**
  store i8** %111, i8*** %17, align 8
  %112 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %113 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %116 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %115, i32 0, i32 17
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %119 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %118, i32 0, i32 16
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @build_tci(i32 %114, i32 %117, i32 %120)
  %122 = load i8**, i8*** %17, align 8
  store i8* %121, i8** %122, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %123, i32 8)
  %125 = bitcast %struct.pktgen_hdr* %124 to i8**
  store i8** %125, i8*** %18, align 8
  %126 = load i32, i32* @ETH_P_8021Q, align 4
  %127 = call i8* @htons(i32 %126)
  %128 = load i8**, i8*** %18, align 8
  store i8* %127, i8** %128, align 8
  br label %129

129:                                              ; preds = %108, %103
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %130, i32 8)
  %132 = bitcast %struct.pktgen_hdr* %131 to i8**
  store i8** %132, i8*** %15, align 8
  %133 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %134 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %137 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %136, i32 0, i32 15
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %140 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %139, i32 0, i32 14
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @build_tci(i32 %135, i32 %138, i32 %141)
  %143 = load i8**, i8*** %15, align 8
  store i8* %142, i8** %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %144, i32 8)
  %146 = bitcast %struct.pktgen_hdr* %145 to i8**
  store i8** %146, i8*** %16, align 8
  %147 = load i32, i32* @ETH_P_IP, align 4
  %148 = call i8* @htons(i32 %147)
  %149 = load i8**, i8*** %16, align 8
  store i8* %148, i8** %149, align 8
  br label %150

150:                                              ; preds = %129, %98
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, 64
  %161 = trunc i64 %160 to i32
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %164, i32 96)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %166, i32 %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %169)
  store %struct.iphdr* %170, %struct.iphdr** %11, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %171)
  store %struct.udphdr* %172, %struct.udphdr** %8, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %175 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %174, i32 0, i32 13
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @memcpy(i32* %173, i32 %176, i32 12)
  %178 = load i8*, i8** %13, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 12
  %181 = bitcast i32* %180 to i8**
  store i8* %178, i8** %181, align 8
  %182 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %183 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 14
  %186 = sub nsw i32 %185, 20
  %187 = sub nsw i32 %186, 8
  %188 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %189 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %187, %190
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ult i64 %193, 32
  br i1 %194, label %195, label %196

195:                                              ; preds = %150
  store i32 32, i32* %9, align 4
  br label %196

196:                                              ; preds = %195, %150
  %197 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %198 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @htons(i32 %199)
  %201 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %202 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %201, i32 0, i32 3
  store i8* %200, i8** %202, align 8
  %203 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %204 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @htons(i32 %205)
  %207 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %208 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 8
  %211 = call i8* @htons(i32 %210)
  %212 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %213 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %215 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %214, i32 0, i32 0
  store i64 0, i64* %215, align 8
  %216 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 0
  store i32 5, i32* %217, align 8
  %218 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %219 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %218, i32 0, i32 1
  store i32 4, i32* %219, align 4
  %220 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 2
  store i32 32, i32* %221, align 8
  %222 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %223 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 10
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @IPPROTO_UDP, align 4
  %228 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 9
  store i32 %227, i32* %229, align 8
  %230 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %231 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  %235 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %236 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %235, i32 0, i32 10
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %239 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %238, i32 0, i32 7
  store i32 %237, i32* %239, align 8
  %240 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %241 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @htons(i32 %242)
  %244 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %245 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %244, i32 0, i32 6
  store i8* %243, i8** %245, align 8
  %246 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %247 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %251 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %250, i32 0, i32 5
  store i64 0, i64* %251, align 8
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 28, %252
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i8* @htons(i32 %254)
  %256 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %257 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %256, i32 0, i32 4
  store i8* %255, i8** %257, align 8
  %258 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %259 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  %260 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %261 = bitcast %struct.iphdr* %260 to i8*
  %262 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %263 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @ip_fast_csum(i8* %261, i32 %264)
  %266 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %267 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %266, i32 0, i32 3
  store i64 %265, i64* %267, align 8
  %268 = load i8*, i8** %13, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %270 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %269, i32 0, i32 8
  store i8* %268, i8** %270, align 8
  %271 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %272 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @ETH_HLEN, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %277 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %275, %278
  %280 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %281 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  %282 = load %struct.net_device*, %struct.net_device** %4, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 7
  store %struct.net_device* %282, %struct.net_device** %284, align 8
  %285 = load i32, i32* @PACKET_HOST, align 4
  %286 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %287 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %286, i32 0, i32 6
  store i32 %285, i32* %287, align 8
  %288 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %289 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 4
  %291 = icmp sle i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %196
  %293 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %294 = load i32, i32* %9, align 4
  %295 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %293, i32 %294)
  store %struct.pktgen_hdr* %295, %struct.pktgen_hdr** %12, align 8
  %296 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %12, align 8
  %297 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %296, i64 1
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = sub i64 %299, 32
  %301 = trunc i64 %300 to i32
  %302 = call i32 @memset(%struct.pktgen_hdr* %297, i32 0, i32 %301)
  br label %541

303:                                              ; preds = %196
  %304 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %305 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %20, align 4
  %307 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %308 = bitcast %struct.udphdr* %307 to i8*
  %309 = getelementptr inbounds i8, i8* %308, i64 8
  %310 = bitcast i8* %309 to %struct.pktgen_hdr*
  store %struct.pktgen_hdr* %310, %struct.pktgen_hdr** %12, align 8
  %311 = load i32, i32* %20, align 4
  %312 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %303
  %315 = load i32, i32* @MAX_SKB_FRAGS, align 4
  store i32 %315, i32* %20, align 4
  br label %316

316:                                              ; preds = %314, %303
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %20, align 4
  %319 = load i32, i32* @PAGE_SIZE, align 4
  %320 = mul nsw i32 %318, %319
  %321 = icmp sgt i32 %317, %320
  br i1 %321, label %322, label %336

322:                                              ; preds = %316
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %20, align 4
  %325 = load i32, i32* @PAGE_SIZE, align 4
  %326 = mul nsw i32 %324, %325
  %327 = sub nsw i32 %323, %326
  store i32 %327, i32* %22, align 4
  %328 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %329 = load i32, i32* %22, align 4
  %330 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %328, i32 %329)
  %331 = load i32, i32* %22, align 4
  %332 = call i32 @memset(%struct.pktgen_hdr* %330, i32 0, i32 %331)
  %333 = load i32, i32* %20, align 4
  %334 = load i32, i32* @PAGE_SIZE, align 4
  %335 = mul nsw i32 %333, %334
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %322, %316
  store i32 0, i32* %21, align 4
  br label %337

337:                                              ; preds = %369, %336
  %338 = load i32, i32* %9, align 4
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %422

340:                                              ; preds = %337
  %341 = load i32, i32* @GFP_KERNEL, align 4
  %342 = load i32, i32* @__GFP_ZERO, align 4
  %343 = or i32 %341, %342
  %344 = call %struct.page* @alloc_pages(i32 %343, i32 0)
  store %struct.page* %344, %struct.page** %23, align 8
  %345 = load %struct.page*, %struct.page** %23, align 8
  %346 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %347 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %346)
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %348, align 8
  %350 = load i32, i32* %21, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 2
  store %struct.page* %345, %struct.page** %353, align 8
  %354 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %355 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %354)
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %356, align 8
  %358 = load i32, i32* %21, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 1
  store i64 0, i64* %361, align 8
  %362 = load i32, i32* %9, align 4
  %363 = load i32, i32* @PAGE_SIZE, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %340
  %366 = load i32, i32* %9, align 4
  br label %369

367:                                              ; preds = %340
  %368 = load i32, i32* @PAGE_SIZE, align 4
  br label %369

369:                                              ; preds = %367, %365
  %370 = phi i32 [ %366, %365 ], [ %368, %367 ]
  %371 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %372 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %371)
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %373, align 8
  %375 = load i32, i32* %21, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 0
  store i32 %370, i32* %378, align 8
  %379 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %380 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %379)
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_3__*, %struct.TYPE_3__** %381, align 8
  %383 = load i32, i32* %21, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sub nsw i32 %388, %387
  store i32 %389, i32* %9, align 4
  %390 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %391 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %390)
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_3__*, %struct.TYPE_3__** %392, align 8
  %394 = load i32, i32* %21, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %400 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %401, %398
  store i32 %402, i32* %400, align 8
  %403 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %404 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %403)
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %405, align 8
  %407 = load i32, i32* %21, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %413 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, %411
  store i32 %415, i32* %413, align 4
  %416 = load i32, i32* %21, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %21, align 4
  %418 = load i32, i32* %21, align 4
  %419 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %420 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %419)
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  store i32 %418, i32* %421, align 8
  br label %337

422:                                              ; preds = %337
  br label %423

423:                                              ; preds = %446, %422
  %424 = load i32, i32* %21, align 4
  %425 = load i32, i32* %20, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %540

427:                                              ; preds = %423
  %428 = load i32, i32* %21, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  br label %540

431:                                              ; preds = %427
  %432 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %433 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %432)
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** %434, align 8
  %436 = load i32, i32* %21, align 4
  %437 = sub nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = sdiv i32 %441, 2
  store i32 %442, i32* %24, align 4
  %443 = load i32, i32* %24, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %431
  br label %540

446:                                              ; preds = %431
  %447 = load i32, i32* %24, align 4
  %448 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %449 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %448)
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %450, align 8
  %452 = load i32, i32* %21, align 4
  %453 = sub nsw i32 %452, 1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = sub nsw i32 %457, %447
  store i32 %458, i32* %456, align 8
  %459 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %460 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %459)
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 1
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %461, align 8
  %463 = load i32, i32* %21, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i64 %464
  %466 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %467 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %466)
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %468, align 8
  %470 = load i32, i32* %21, align 4
  %471 = sub nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i64 %472
  %474 = bitcast %struct.TYPE_3__* %465 to i8*
  %475 = bitcast %struct.TYPE_3__* %473 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %474, i8* align 8 %475, i64 24, i1 false)
  %476 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %477 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %476)
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_3__*, %struct.TYPE_3__** %478, align 8
  %480 = load i32, i32* %21, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i32 0, i32 2
  %484 = load %struct.page*, %struct.page** %483, align 8
  %485 = call i32 @get_page(%struct.page* %484)
  %486 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %487 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %486)
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %488, align 8
  %490 = load i32, i32* %21, align 4
  %491 = sub nsw i32 %490, 1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 2
  %495 = load %struct.page*, %struct.page** %494, align 8
  %496 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %497 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %496)
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 1
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** %498, align 8
  %500 = load i32, i32* %21, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 2
  store %struct.page* %495, %struct.page** %503, align 8
  %504 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %505 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %504)
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 1
  %507 = load %struct.TYPE_3__*, %struct.TYPE_3__** %506, align 8
  %508 = load i32, i32* %21, align 4
  %509 = sub nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %507, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = sext i32 %513 to i64
  %515 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %516 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %515)
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 1
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %517, align 8
  %519 = load i32, i32* %21, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 1
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %523, %514
  store i64 %524, i64* %522, align 8
  %525 = load i32, i32* %24, align 4
  %526 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %527 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %526)
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 1
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** %528, align 8
  %530 = load i32, i32* %21, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %532, i32 0, i32 0
  store i32 %525, i32* %533, align 8
  %534 = load i32, i32* %21, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %21, align 4
  %536 = load i32, i32* %21, align 4
  %537 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %538 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %537)
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  store i32 %536, i32* %539, align 8
  br label %423

540:                                              ; preds = %445, %430, %423
  br label %541

541:                                              ; preds = %540, %292
  %542 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %12, align 8
  %543 = icmp ne %struct.pktgen_hdr* %542, null
  br i1 %543, label %544, label %566

544:                                              ; preds = %541
  %545 = load i32, i32* @PKTGEN_MAGIC, align 4
  %546 = call i8* @htonl(i32 %545)
  %547 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %12, align 8
  %548 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %547, i32 0, i32 3
  store i8* %546, i8** %548, align 8
  %549 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %550 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %549, i32 0, i32 9
  %551 = load i32, i32* %550, align 4
  %552 = call i8* @htonl(i32 %551)
  %553 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %12, align 8
  %554 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %553, i32 0, i32 2
  store i8* %552, i8** %554, align 8
  %555 = call i32 @do_gettimeofday(%struct.timeval* %25)
  %556 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = call i8* @htonl(i32 %557)
  %559 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %12, align 8
  %560 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %559, i32 0, i32 1
  store i8* %558, i8** %560, align 8
  %561 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = call i8* @htonl(i32 %562)
  %564 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %12, align 8
  %565 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %564, i32 0, i32 0
  store i8* %563, i8** %565, align 8
  br label %566

566:                                              ; preds = %544, %541
  %567 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %567, %struct.sk_buff** %3, align 8
  br label %568

568:                                              ; preds = %566, %69
  %569 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %569
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mod_cur_headers(%struct.pktgen_dev*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.pktgen_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mpls_push(i32*, %struct.pktgen_dev*) #1

declare dso_local i8* @build_tci(i32, i32, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @memset(%struct.pktgen_hdr*, i32, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
