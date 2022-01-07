; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.dn_skb_cb = type { i32, i32, i32, i32, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i32, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@DN_O = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DN_CR = common dso_local global i64 0, align 8
@NSP_FC_MASK = common dso_local global i32 0, align 4
@NSP_FC_NONE = common dso_local global i32 0, align 4
@decnet_no_fc_max_cwnd = common dso_local global i32 0, align 4
@SDF_WILD = common dso_local global i32 0, align 4
@DN_MENUVER_ACC = common dso_local global i8 0, align 1
@DN_MENUVER_USR = common dso_local global i8 0, align 1
@DN_MENUVER_PRX = common dso_local global i8 0, align 1
@SDF_PROXY = common dso_local global i32 0, align 4
@DN_MENUVER_UIC = common dso_local global i8 0, align 1
@SDF_UICPROXY = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ACC_IMMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @dn_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.dn_skb_cb*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca %struct.dst_entry*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @sock_rcvtimeo(%struct.sock* %20, i32 %23)
  store i64 %24, i64* %15, align 8
  %25 = load %struct.sock*, %struct.sock** %8, align 8
  %26 = call i32 @lock_sock(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_LISTEN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DN_O, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32, %3
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = call i32 @release_sock(%struct.sock* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %325

44:                                               ; preds = %32
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 4
  %47 = call %struct.sk_buff* @skb_dequeue(i32* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %10, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = call %struct.sk_buff* @dn_wait_for_connect(%struct.sock* %51, i64* %15)
  store %struct.sk_buff* %52, %struct.sk_buff** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call i64 @IS_ERR(%struct.sk_buff* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %8, align 8
  %58 = call i32 @release_sock(%struct.sock* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.sk_buff* %59)
  store i32 %60, i32* %4, align 4
  br label %325

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %63)
  store %struct.dn_skb_cb* %64, %struct.dn_skb_cb** %11, align 8
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = call i32 @sock_net(%struct.sock* %69)
  %71 = load %struct.socket*, %struct.socket** %6, align 8
  %72 = load %struct.sock*, %struct.sock** %8, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.sock* @dn_alloc_sock(i32 %70, %struct.socket* %71, i32 %74)
  store %struct.sock* %75, %struct.sock** %9, align 8
  %76 = load %struct.sock*, %struct.sock** %9, align 8
  %77 = icmp eq %struct.sock* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %62
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  %83 = load i32, i32* @ENOBUFS, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %325

85:                                               ; preds = %62
  %86 = load %struct.sock*, %struct.sock** %8, align 8
  %87 = call i32 @release_sock(%struct.sock* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %88)
  store %struct.dst_entry* %89, %struct.dst_entry** %16, align 8
  %90 = load %struct.sock*, %struct.sock** %9, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %93 = call i32 @xchg(i32* %91, %struct.dst_entry* %92)
  %94 = call i32 @dst_release(i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = call i32 @skb_dst_set(%struct.sk_buff* %95, i32* null)
  %97 = load i64, i64* @DN_CR, align 8
  %98 = load %struct.sock*, %struct.sock** %9, align 8
  %99 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  %101 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %102 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sock*, %struct.sock** %9, align 8
  %105 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 12
  store i32 %103, i32* %106, align 8
  %107 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %108 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sock*, %struct.sock** %9, align 8
  %111 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %114 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.sock*, %struct.sock** %9, align 8
  %117 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 11
  store i32 %115, i32* %118, align 4
  %119 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %120 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sock*, %struct.sock** %9, align 8
  %123 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 4
  %125 = load %struct.sock*, %struct.sock** %8, align 8
  %126 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %125)
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.sock*, %struct.sock** %9, align 8
  %130 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  %132 = load %struct.sock*, %struct.sock** %9, align 8
  %133 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 230
  br i1 %136, label %137, label %141

137:                                              ; preds = %85
  %138 = load %struct.sock*, %struct.sock** %9, align 8
  %139 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %138)
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i32 230, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %85
  %142 = load %struct.sock*, %struct.sock** %9, align 8
  %143 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %142)
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @NSP_FC_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @NSP_FC_NONE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load i32, i32* @decnet_no_fc_max_cwnd, align 4
  %152 = load %struct.sock*, %struct.sock** %9, align 8
  %153 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %152)
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 10
  store i32 %151, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %141
  %156 = load i64, i64* @TCP_LISTEN, align 8
  %157 = load %struct.sock*, %struct.sock** %9, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.sock*, %struct.sock** %9, align 8
  %160 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %159)
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 9
  %162 = load %struct.sock*, %struct.sock** %8, align 8
  %163 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %162)
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 9
  %165 = call i32 @memcpy(%struct.TYPE_7__* %161, %struct.TYPE_7__* %164, i32 4)
  %166 = load i32, i32* @SDF_WILD, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.sock*, %struct.sock** %9, align 8
  %169 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %168)
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %167
  store i32 %173, i32* %171, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sock*, %struct.sock** %9, align 8
  %182 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %181)
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 9
  %184 = call i32 @dn_username2sockaddr(i8* %177, i32 %180, %struct.TYPE_7__* %183, i8* %14)
  %185 = call i32 @skb_pull(%struct.sk_buff* %174, i32 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.sock*, %struct.sock** %9, align 8
  %194 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %193)
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 6
  %196 = call i32 @dn_username2sockaddr(i8* %189, i32 %192, %struct.TYPE_7__* %195, i8* %14)
  %197 = call i32 @skb_pull(%struct.sk_buff* %186, i32 %196)
  %198 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %199 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.sock*, %struct.sock** %9, align 8
  %202 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %201)
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  store i32 %200, i32* %207, align 4
  %208 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %209 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.sock*, %struct.sock** %9, align 8
  %212 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i32*
  store i32 %210, i32* %217, align 4
  %218 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i8, i8* %220, align 1
  store i8 %221, i8* %12, align 1
  %222 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %223 = call i32 @skb_pull(%struct.sk_buff* %222, i32 1)
  %224 = load i8, i8* %12, align 1
  %225 = zext i8 %224 to i32
  %226 = load i8, i8* @DN_MENUVER_ACC, align 1
  %227 = zext i8 %226 to i32
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %155
  %231 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %232 = load %struct.sock*, %struct.sock** %9, align 8
  %233 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %232)
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 8
  %235 = call i32 @dn_access_copy(%struct.sk_buff* %231, i32* %234)
  br label %236

236:                                              ; preds = %230, %155
  %237 = load i8, i8* %12, align 1
  %238 = zext i8 %237 to i32
  %239 = load i8, i8* @DN_MENUVER_USR, align 1
  %240 = zext i8 %239 to i32
  %241 = and i32 %238, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %245 = load %struct.sock*, %struct.sock** %9, align 8
  %246 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %245)
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 7
  %248 = call i32 @dn_user_copy(%struct.sk_buff* %244, i32* %247)
  br label %249

249:                                              ; preds = %243, %236
  %250 = load i8, i8* %12, align 1
  %251 = zext i8 %250 to i32
  %252 = load i8, i8* @DN_MENUVER_PRX, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %251, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %249
  %257 = load i32, i32* @SDF_PROXY, align 4
  %258 = load %struct.sock*, %struct.sock** %9, align 8
  %259 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %258)
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %257
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %256, %249
  %265 = load i8, i8* %12, align 1
  %266 = zext i8 %265 to i32
  %267 = load i8, i8* @DN_MENUVER_UIC, align 1
  %268 = zext i8 %267 to i32
  %269 = and i32 %266, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %264
  %272 = load i32, i32* @SDF_UICPROXY, align 4
  %273 = load %struct.sock*, %struct.sock** %9, align 8
  %274 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %273)
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %272
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %271, %264
  %280 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %281 = call i32 @kfree_skb(%struct.sk_buff* %280)
  %282 = load %struct.sock*, %struct.sock** %9, align 8
  %283 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %282)
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 5
  %285 = load %struct.sock*, %struct.sock** %8, align 8
  %286 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %285)
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 5
  %288 = call i32 @memcpy(%struct.TYPE_7__* %284, %struct.TYPE_7__* %287, i32 4)
  %289 = load %struct.sock*, %struct.sock** %9, align 8
  %290 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %289)
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 4
  %292 = load %struct.sock*, %struct.sock** %8, align 8
  %293 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %292)
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 4
  %295 = call i32 @memcpy(%struct.TYPE_7__* %291, %struct.TYPE_7__* %294, i32 4)
  %296 = load %struct.sock*, %struct.sock** %9, align 8
  %297 = call i32 @lock_sock(%struct.sock* %296)
  %298 = load %struct.sock*, %struct.sock** %9, align 8
  %299 = call i32 @dn_hash_sock(%struct.sock* %298)
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %13, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %321

302:                                              ; preds = %279
  %303 = load %struct.sock*, %struct.sock** %9, align 8
  %304 = load i32, i32* @SOCK_ZAPPED, align 4
  %305 = call i32 @sock_reset_flag(%struct.sock* %303, i32 %304)
  %306 = load %struct.sock*, %struct.sock** %9, align 8
  %307 = call i32 @dn_send_conn_ack(%struct.sock* %306)
  %308 = load %struct.sock*, %struct.sock** %9, align 8
  %309 = call %struct.TYPE_8__* @DN_SK(%struct.sock* %308)
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @ACC_IMMED, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %302
  %315 = load %struct.sock*, %struct.sock** %9, align 8
  %316 = load %struct.sock*, %struct.sock** %8, align 8
  %317 = getelementptr inbounds %struct.sock, %struct.sock* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @dn_confirm_accept(%struct.sock* %315, i64* %15, i32 %318)
  store i32 %319, i32* %13, align 4
  br label %320

320:                                              ; preds = %314, %302
  br label %321

321:                                              ; preds = %320, %279
  %322 = load %struct.sock*, %struct.sock** %9, align 8
  %323 = call i32 @release_sock(%struct.sock* %322)
  %324 = load i32, i32* %13, align 4
  store i32 %324, i32* %4, align 4
  br label %325

325:                                              ; preds = %321, %78, %56, %39
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @DN_SK(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @dn_wait_for_connect(%struct.sock*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sock* @dn_alloc_sock(i32, %struct.socket*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_release(i32) #1

declare dso_local i32 @xchg(i32*, %struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_username2sockaddr(i8*, i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dn_access_copy(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dn_user_copy(%struct.sk_buff*, i32*) #1

declare dso_local i32 @dn_hash_sock(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_send_conn_ack(%struct.sock*) #1

declare dso_local i32 @dn_confirm_accept(%struct.sock*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
