; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_hs_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_hs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_message = type { i32 }
%struct.sock = type { i64 }
%struct.sk_buff = type { i64, i8*, %struct.TYPE_2__*, %struct.af_iucv_trans_hdr* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.af_iucv_trans_hdr = type { i32, i64, i32, i32, i32*, i32*, i32*, i32*, i8* }
%struct.iucv_sock = type { i32, i32, i32, %struct.TYPE_2__*, %struct.iucv_message*, %struct.iucv_message*, %struct.iucv_message*, %struct.iucv_message* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_AF_IUCV = common dso_local global i8* null, align 8
@AF_IUCV_FLAG_SYN = common dso_local global i64 0, align 8
@AF_IUCV_FLAG_WIN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_message*, %struct.sock*, %struct.sk_buff*, i64)* @afiucv_hs_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_hs_send(%struct.iucv_message* %0, %struct.sock* %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iucv_message*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iucv_sock*, align 8
  %11 = alloca %struct.af_iucv_trans_hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iucv_message* %0, %struct.iucv_message** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %15)
  store %struct.iucv_sock* %16, %struct.iucv_sock** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 3
  %19 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %18, align 8
  %20 = load i32, i32* @ETH_HLEN, align 4
  %21 = call i32 @memset(%struct.af_iucv_trans_hdr* %19, i32 0, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i64 @skb_push(%struct.sk_buff* %22, i32 64)
  %24 = inttoptr i64 %23 to %struct.af_iucv_trans_hdr*
  store %struct.af_iucv_trans_hdr* %24, %struct.af_iucv_trans_hdr** %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i32 @skb_reset_mac_header(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call i32 @skb_reset_network_header(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load i32, i32* @ETH_HLEN, align 4
  %31 = call i64 @skb_push(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i32 @skb_reset_mac_header(%struct.sk_buff* %32)
  %34 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %35 = call i32 @memset(%struct.af_iucv_trans_hdr* %34, i32 0, i32 64)
  %36 = load i8*, i8** @ETH_P_AF_IUCV, align 8
  %37 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %38 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @AF_IUCV_FLAG_SYN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %49 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %79

53:                                               ; preds = %4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @AF_IUCV_FLAG_WIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %62 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %61, i32 0, i32 1
  %63 = call i32 @atomic_read(i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %71 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AF_IUCV_FLAG_WIN, align 8
  %74 = or i64 %72, %73
  %75 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %76 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %69, %60
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %81 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %80, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %84 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %83, i32 0, i32 7
  %85 = load %struct.iucv_message*, %struct.iucv_message** %84, align 8
  %86 = call i32 @memcpy(i32* %82, %struct.iucv_message* %85, i32 8)
  %87 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %88 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %91 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %90, i32 0, i32 6
  %92 = load %struct.iucv_message*, %struct.iucv_message** %91, align 8
  %93 = call i32 @memcpy(i32* %89, %struct.iucv_message* %92, i32 8)
  %94 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %95 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %98 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %97, i32 0, i32 5
  %99 = load %struct.iucv_message*, %struct.iucv_message** %98, align 8
  %100 = call i32 @memcpy(i32* %96, %struct.iucv_message* %99, i32 8)
  %101 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %102 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %105 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %104, i32 0, i32 4
  %106 = load %struct.iucv_message*, %struct.iucv_message** %105, align 8
  %107 = call i32 @memcpy(i32* %103, %struct.iucv_message* %106, i32 8)
  %108 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %109 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ASCEBC(i32* %110, i32 8)
  %112 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %113 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ASCEBC(i32* %114, i32 8)
  %116 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %117 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ASCEBC(i32* %118, i32 8)
  %120 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %121 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @ASCEBC(i32* %122, i32 8)
  %124 = load %struct.iucv_message*, %struct.iucv_message** %6, align 8
  %125 = icmp ne %struct.iucv_message* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %79
  %127 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %128 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %127, i32 0, i32 3
  %129 = load %struct.iucv_message*, %struct.iucv_message** %6, align 8
  %130 = call i32 @memcpy(i32* %128, %struct.iucv_message* %129, i32 4)
  br label %131

131:                                              ; preds = %126, %79
  %132 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %133 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 2
  store %struct.TYPE_2__* %134, %struct.TYPE_2__** %136, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = icmp ne %struct.TYPE_2__* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %131
  %142 = load i32, i32* @ENODEV, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %233

144:                                              ; preds = %131
  %145 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IFF_UP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = call i32 @netif_carrier_ok(%struct.TYPE_2__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %153, %144
  %160 = load i32, i32* @ENETDOWN, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %233

162:                                              ; preds = %153
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %165, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %162
  %173 = load %struct.sock*, %struct.sock** %7, align 8
  %174 = getelementptr inbounds %struct.sock, %struct.sock* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SOCK_SEQPACKET, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i32, i32* @EMSGSIZE, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %233

181:                                              ; preds = %172
  %182 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @skb_trim(%struct.sk_buff* %182, i64 %187)
  br label %189

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %162
  %191 = load i8*, i8** @ETH_P_AF_IUCV, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = load i32, i32* @GFP_ATOMIC, align 4
  %196 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %194, i32 %195)
  store %struct.sk_buff* %196, %struct.sk_buff** %12, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %190
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %5, align 4
  br label %233

202:                                              ; preds = %190
  %203 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %204 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %203, i32 0, i32 2
  %205 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %206 = call i32 @skb_queue_tail(i32* %204, %struct.sk_buff* %205)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = call i32 @dev_queue_xmit(%struct.sk_buff* %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @net_xmit_eval(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %202
  %213 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %214 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %215 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %214, i32 0, i32 2
  %216 = call i32 @skb_unlink(%struct.sk_buff* %213, i32* %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %218 = call i32 @kfree_skb(%struct.sk_buff* %217)
  br label %230

219:                                              ; preds = %202
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %222 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %221, i32 0, i32 1
  %223 = call i32 @atomic_sub(i32 %220, i32* %222)
  %224 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %225 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %224, i32 0, i32 1
  %226 = call i32 @atomic_read(i32* %225)
  %227 = icmp slt i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @WARN_ON(i32 %228)
  br label %230

230:                                              ; preds = %219, %212
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @net_xmit_eval(i32 %231)
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %230, %199, %178, %159, %141
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.af_iucv_trans_hdr*, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.iucv_message*, i32) #1

declare dso_local i32 @ASCEBC(i32*, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_2__*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
