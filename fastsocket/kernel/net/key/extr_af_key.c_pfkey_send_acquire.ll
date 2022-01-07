; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_send_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_send_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.xfrm_sec_ctx* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i64, i32, i64, i64, i32, i32, i32 }
%struct.sadb_address = type { i32, i8*, i64, i64, i32 }
%struct.sadb_x_policy = type { i32, i32, i32, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i64 0, align 8
@IPPROTO_ESP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@SADB_ACQUIRE = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@IPSEC_POLICY_IPSEC = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@BROADCAST_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*, i32)* @pfkey_send_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_send_acquire(%struct.xfrm_state* %0, %struct.xfrm_tmpl* %1, %struct.xfrm_policy* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.xfrm_tmpl*, align 8
  %8 = alloca %struct.xfrm_policy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sadb_msg*, align 8
  %12 = alloca %struct.sadb_address*, align 8
  %13 = alloca %struct.sadb_x_policy*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sadb_x_sec_ctx*, align 8
  %17 = alloca %struct.xfrm_sec_ctx*, align 8
  %18 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %6, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %7, align 8
  store %struct.xfrm_policy* %2, %struct.xfrm_policy** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pfkey_sockaddr_size(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %302

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = add i64 136, %32
  %34 = add i64 %33, 20
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPPROTO_AH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %44 = call i64 @count_ah_combs(%struct.xfrm_tmpl* %43)
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  br label %64

49:                                               ; preds = %29
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPPROTO_ESP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %58 = call i64 @count_esp_combs(%struct.xfrm_tmpl* %57)
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 3
  %67 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %66, align 8
  store %struct.xfrm_sec_ctx* %67, %struct.xfrm_sec_ctx** %17, align 8
  %68 = icmp ne %struct.xfrm_sec_ctx* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %71 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PFKEY_ALIGN8(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 20, %75
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %69, %64
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 16
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call %struct.sk_buff* @alloc_skb(i32 %83, i32 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %10, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = icmp eq %struct.sk_buff* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %302

91:                                               ; preds = %81
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = call i64 @skb_put(%struct.sk_buff* %92, i32 56)
  %94 = inttoptr i64 %93 to %struct.sadb_msg*
  store %struct.sadb_msg* %94, %struct.sadb_msg** %11, align 8
  %95 = load i32, i32* @PF_KEY_V2, align 4
  %96 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %97 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @SADB_ACQUIRE, align 4
  %99 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %100 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @pfkey_proto2satype(i64 %104)
  %106 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %107 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = udiv i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %113 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %115 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  %116 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %117 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = call i32 (...) @get_acqseq()
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %120 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %123 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %122, i32 0, i32 2
  store i32 %118, i32* %123, align 8
  %124 = load %struct.sadb_msg*, %struct.sadb_msg** %11, align 8
  %125 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 40, %128
  %130 = trunc i64 %129 to i32
  %131 = call i64 @skb_put(%struct.sk_buff* %126, i32 %130)
  %132 = inttoptr i64 %131 to %struct.sadb_address*
  store %struct.sadb_address* %132, %struct.sadb_address** %12, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 40, %134
  %136 = udiv i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %139 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %141 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %142 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %144 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %146 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %148 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %151 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %150, i64 1
  %152 = bitcast %struct.sadb_address* %151 to %struct.sockaddr*
  %153 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %154 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @pfkey_sockaddr_fill(i32* %149, i32 0, %struct.sockaddr* %152, i32 %156)
  %158 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %159 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %161 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %91
  %165 = call i32 (...) @BUG()
  br label %166

166:                                              ; preds = %164, %91
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 40, %169
  %171 = trunc i64 %170 to i32
  %172 = call i64 @skb_put(%struct.sk_buff* %167, i32 %171)
  %173 = inttoptr i64 %172 to %struct.sadb_address*
  store %struct.sadb_address* %173, %struct.sadb_address** %12, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 40, %175
  %177 = udiv i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %180 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %182 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %183 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %185 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  %186 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %187 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  %188 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %189 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %192 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %191, i64 1
  %193 = bitcast %struct.sadb_address* %192 to %struct.sockaddr*
  %194 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %195 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @pfkey_sockaddr_fill(i32* %190, i32 0, %struct.sockaddr* %193, i32 %197)
  %199 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %200 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %202 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %166
  %206 = call i32 (...) @BUG()
  br label %207

207:                                              ; preds = %205, %166
  %208 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %209 = call i64 @skb_put(%struct.sk_buff* %208, i32 20)
  %210 = inttoptr i64 %209 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %210, %struct.sadb_x_policy** %13, align 8
  %211 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %212 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %211, i32 0, i32 0
  store i32 5, i32* %212, align 4
  %213 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %214 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %215 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @IPSEC_POLICY_IPSEC, align 4
  %217 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %218 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %222 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %224 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %13, align 8
  %227 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %229 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @IPPROTO_AH, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %207
  %235 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %236 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %237 = call i32 @dump_ah_combs(%struct.sk_buff* %235, %struct.xfrm_tmpl* %236)
  br label %250

238:                                              ; preds = %207
  %239 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %240 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @IPPROTO_ESP, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %247 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %248 = call i32 @dump_esp_combs(%struct.sk_buff* %246, %struct.xfrm_tmpl* %247)
  br label %249

249:                                              ; preds = %245, %238
  br label %250

250:                                              ; preds = %249, %234
  %251 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %252 = icmp ne %struct.xfrm_sec_ctx* %251, null
  br i1 %252, label %253, label %295

253:                                              ; preds = %250
  %254 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 20, %256
  %258 = trunc i64 %257 to i32
  %259 = call i64 @skb_put(%struct.sk_buff* %254, i32 %258)
  %260 = inttoptr i64 %259 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %260, %struct.sadb_x_sec_ctx** %16, align 8
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = add i64 20, %262
  %264 = udiv i64 %263, 4
  %265 = trunc i64 %264 to i32
  %266 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %16, align 8
  %267 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %269 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %16, align 8
  %270 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 4
  %271 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %272 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %16, align 8
  %275 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %277 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %16, align 8
  %280 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %282 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %16, align 8
  %285 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %16, align 8
  %287 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %286, i64 1
  %288 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %289 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %292 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %287, i32 %290, i32 %293)
  br label %295

295:                                              ; preds = %253, %250
  %296 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %297 = load i32, i32* @GFP_ATOMIC, align 4
  %298 = load i32, i32* @BROADCAST_REGISTERED, align 4
  %299 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %300 = call i32 @xs_net(%struct.xfrm_state* %299)
  %301 = call i32 @pfkey_broadcast(%struct.sk_buff* %296, i32 %297, i32 %298, i32* null, i32 %300)
  store i32 %301, i32* %5, align 4
  br label %302

302:                                              ; preds = %295, %88, %26
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local i64 @count_ah_combs(%struct.xfrm_tmpl*) #1

declare dso_local i64 @count_esp_combs(%struct.xfrm_tmpl*) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pfkey_proto2satype(i64) #1

declare dso_local i32 @get_acqseq(...) #1

declare dso_local i8* @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dump_ah_combs(%struct.sk_buff*, %struct.xfrm_tmpl*) #1

declare dso_local i32 @dump_esp_combs(%struct.sk_buff*, %struct.xfrm_tmpl*) #1

declare dso_local i32 @memcpy(%struct.sadb_x_sec_ctx*, i32, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
