; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_xmit_pow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_xmit_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i8*, i8*, i32, i8*, %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_16__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }

@CVMX_FPA_WQE_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Failed to allocate a work queue entry\0A\00", align 1
@CVMX_FPA_PACKET_POOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Failed to allocate a packet buffer\0A\00", align 1
@CVMX_HELPER_FIRST_MBUFF_SKIP = common dso_local global i32 0, align 4
@pow_send_group = common dso_local global i8* null, align 8
@CVMX_HELPER_INPUT_TAG_TYPE = common dso_local global i32 0, align 4
@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IP_PROTOCOL_TCP = common dso_local global i64 0, align 8
@IP_PROTOCOL_UDP = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@ETH_P_RARP = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_xmit_pow(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.octeon_ethernet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %10)
  store %struct.octeon_ethernet* %11, %struct.octeon_ethernet** %6, align 8
  %12 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %13 = call i8* @cvmx_fpa_alloc(i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DEBUGPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %26 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @dev_kfree_skb(%struct.sk_buff* %30)
  store i32 0, i32* %3, align 4
  br label %303

32:                                               ; preds = %2
  %33 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %34 = call i8* @cvmx_fpa_alloc(i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DEBUGPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %47 = call i32 @DONT_WRITEBACK(i32 1)
  %48 = call i32 @cvmx_fpa_free(%struct.TYPE_17__* %45, i32 %46, i32 %47)
  %49 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %50 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_kfree_skb(%struct.sk_buff* %54)
  store i32 0, i32* %3, align 4
  br label %303

56:                                               ; preds = %32
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr i8, i8* %57, i64 4
  store i8* %58, i8** %8, align 8
  %59 = load i32, i32* @CVMX_HELPER_FIRST_MBUFF_SKIP, align 4
  %60 = add nsw i32 %59, 7
  %61 = and i32 %60, 65528
  %62 = add nsw i32 %61, 6
  %63 = load i8*, i8** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr i8, i8* %63, i64 %64
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(i8* %66, i64 %69, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %85 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %90 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 7
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @pow_send_group, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @CVMX_HELPER_INPUT_TAG_TYPE, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @pow_send_group, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @cvmx_ptr_to_phys(i8* %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 8
  %125 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = ashr i64 %134, 7
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @ETH_P_IP, align 4
  %145 = call i64 @htons(i32 %144)
  %146 = icmp eq i64 %143, %145
  br i1 %146, label %147, label %219

147:                                              ; preds = %56
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  store i32 14, i32* %151, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = call %struct.TYPE_18__* @ip_hdr(%struct.sk_buff* %152)
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IP_PROTOCOL_TCP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %147
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = call %struct.TYPE_18__* @ip_hdr(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IP_PROTOCOL_UDP, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %158, %147
  %166 = phi i1 [ true, %147 ], [ %164, %158 ]
  %167 = zext i1 %166 to i32
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  store i32 %167, i32* %171, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = call %struct.TYPE_18__* @ip_hdr(%struct.sk_buff* %172)
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %165
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = call %struct.TYPE_18__* @ip_hdr(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 16384
  br label %183

183:                                              ; preds = %177, %165
  %184 = phi i1 [ true, %165 ], [ %182, %177 ]
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  store i32 %186, i32* %190, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PACKET_BROADCAST, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  store i32 %196, i32* %200, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @PACKET_MULTICAST, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 5
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 10
  %218 = call i32 @memcpy(i8* %213, i64 %217, i32 8)
  br label %273

219:                                              ; preds = %56
  %220 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* @ETH_P_RARP, align 4
  %224 = call i64 @htons(i32 %223)
  %225 = icmp eq i64 %222, %224
  %226 = zext i1 %225 to i32
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  store i32 %226, i32* %230, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @ETH_P_ARP, align 4
  %235 = call i64 @htons(i32 %234)
  %236 = icmp eq i64 %233, %235
  %237 = zext i1 %236 to i32
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  store i32 %237, i32* %241, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @PACKET_BROADCAST, align 8
  %246 = icmp eq i64 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  store i32 %247, i32* %251, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %253 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @PACKET_MULTICAST, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 3
  store i32 %257, i32* %261, align 4
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 4
  store i32 1, i32* %265, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 3
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %270 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @memcpy(i8* %268, i64 %271, i32 8)
  br label %273

273:                                              ; preds = %219, %183
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 6
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 4
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @cvmx_pow_work_submit(%struct.TYPE_17__* %274, i8* %277, i32 %280, i32 %283, i8* %286)
  %288 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %289 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %294 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %297 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, %295
  store i32 %300, i32* %298, align 4
  %301 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %302 = call i32 @dev_kfree_skb(%struct.sk_buff* %301)
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %273, %40, %20
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cvmx_fpa_alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DEBUGPRINT(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cvmx_fpa_free(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @DONT_WRITEBACK(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_18__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @cvmx_pow_work_submit(%struct.TYPE_17__*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
