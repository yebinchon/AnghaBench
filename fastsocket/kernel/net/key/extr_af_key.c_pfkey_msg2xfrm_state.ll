; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_msg2xfrm_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_msg2xfrm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_11__, %struct.xfrm_encap_tmpl*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.xfrm_encap_tmpl = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i8*, i8*, i32, i32, i8*, i8* }
%struct.net = type { i32 }
%struct.sadb_msg = type { i64, i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i32 }
%struct.sadb_sa = type { i64, i64, i32, i32, i32 }
%struct.sadb_key = type { i32, i32 }
%struct.sadb_x_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }
%struct.xfrm_algo_desc = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.sadb_x_sa2 = type { i32, i32 }
%struct.sadb_address = type { i32 }
%struct.sadb_x_nat_t_type = type { i32 }
%struct.sadb_x_nat_t_port = type { i32 }

@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SADB_SATYPE_ESP = common dso_local global i64 0, align 8
@SADB_EXT_KEY_ENCRYPT = common dso_local global i32 0, align 4
@SADB_SATYPE_AH = common dso_local global i64 0, align 8
@SADB_EXT_KEY_AUTH = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SADB_AALG_MAX = common dso_local global i64 0, align 8
@SADB_X_SATYPE_IPCOMP = common dso_local global i64 0, align 8
@SADB_X_CALG_MAX = common dso_local global i64 0, align 8
@SADB_EALG_MAX = common dso_local global i64 0, align 8
@SADB_X_AALG_NULL = common dso_local global i64 0, align 8
@SADB_EALG_NULL = common dso_local global i64 0, align 8
@SADB_SAFLAGS_NOECN = common dso_local global i32 0, align 4
@XFRM_STATE_NOECN = common dso_local global i32 0, align 4
@SADB_SAFLAGS_DECAP_DSCP = common dso_local global i32 0, align 4
@XFRM_STATE_DECAP_DSCP = common dso_local global i32 0, align 4
@SADB_SAFLAGS_NOPMTUDISC = common dso_local global i32 0, align 4
@XFRM_STATE_NOPMTUDISC = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SADB_X_EXT_SA2 = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_PROXY = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_TYPE = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_SPORT = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_DPORT = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.net*, %struct.sadb_msg*, i8**)* @pfkey_msg2xfrm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @pfkey_msg2xfrm_state(%struct.net* %0, %struct.sadb_msg* %1, i8** %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sadb_msg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.sadb_lifetime*, align 8
  %10 = alloca %struct.sadb_sa*, align 8
  %11 = alloca %struct.sadb_key*, align 8
  %12 = alloca %struct.sadb_x_sec_ctx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfrm_algo_desc*, align 8
  %18 = alloca %struct.xfrm_algo_desc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.xfrm_algo_desc*, align 8
  %21 = alloca %struct.sadb_x_sa2*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sadb_address*, align 8
  %24 = alloca %struct.sadb_x_nat_t_type*, align 8
  %25 = alloca %struct.xfrm_encap_tmpl*, align 8
  %26 = alloca %struct.sadb_x_nat_t_port*, align 8
  %27 = alloca %struct.sadb_x_nat_t_port*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sadb_msg* %1, %struct.sadb_msg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32, i32* @SADB_EXT_SA, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.sadb_sa*
  store %struct.sadb_sa* %34, %struct.sadb_sa** %10, align 8
  %35 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %36 = icmp ne %struct.sadb_sa* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @present_and_same_family(i8* %43, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %37, %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.xfrm_state* @ERR_PTR(i32 %54)
  store %struct.xfrm_state* %55, %struct.xfrm_state** %4, align 8
  br label %848

56:                                               ; preds = %37
  %57 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %58 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SADB_SATYPE_ESP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* @SADB_EXT_KEY_ENCRYPT, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.xfrm_state* @ERR_PTR(i32 %72)
  store %struct.xfrm_state* %73, %struct.xfrm_state** %4, align 8
  br label %848

74:                                               ; preds = %62, %56
  %75 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %76 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SADB_SATYPE_AH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* @SADB_EXT_KEY_AUTH, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.xfrm_state* @ERR_PTR(i32 %90)
  store %struct.xfrm_state* %91, %struct.xfrm_state** %4, align 8
  br label %848

92:                                               ; preds = %80, %74
  %93 = load i8**, i8*** %7, align 8
  %94 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load i8**, i8*** %7, align 8
  %104 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = icmp ne i32 %102, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %92
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.xfrm_state* @ERR_PTR(i32 %116)
  store %struct.xfrm_state* %117, %struct.xfrm_state** %4, align 8
  br label %848

118:                                              ; preds = %92
  %119 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %120 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @pfkey_satype2proto(i64 %121)
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  %128 = call %struct.xfrm_state* @ERR_PTR(i32 %127)
  store %struct.xfrm_state* %128, %struct.xfrm_state** %4, align 8
  br label %848

129:                                              ; preds = %118
  %130 = load i32, i32* @ENOBUFS, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  %132 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %133 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SADB_AALG_MAX, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %155, label %137

137:                                              ; preds = %129
  %138 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %139 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SADB_X_SATYPE_IPCOMP, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %145 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SADB_X_CALG_MAX, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143, %137
  %150 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %151 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SADB_EALG_MAX, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149, %143, %129
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  %158 = call %struct.xfrm_state* @ERR_PTR(i32 %157)
  store %struct.xfrm_state* %158, %struct.xfrm_state** %4, align 8
  br label %848

159:                                              ; preds = %149
  %160 = load i8**, i8*** %7, align 8
  %161 = load i32, i32* @SADB_EXT_KEY_AUTH, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = bitcast i8* %165 to %struct.sadb_key*
  store %struct.sadb_key* %166, %struct.sadb_key** %11, align 8
  %167 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %168 = icmp ne %struct.sadb_key* %167, null
  br i1 %168, label %169, label %199

169:                                              ; preds = %159
  %170 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %171 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SADB_X_AALG_NULL, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %169
  %176 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %177 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 7
  %180 = sdiv i32 %179, 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %175
  %183 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %184 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 7
  %187 = sdiv i32 %186, 8
  %188 = sext i32 %187 to i64
  %189 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %190 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = icmp ugt i64 %188, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %182, %175
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  %198 = call %struct.xfrm_state* @ERR_PTR(i32 %197)
  store %struct.xfrm_state* %198, %struct.xfrm_state** %4, align 8
  br label %848

199:                                              ; preds = %182, %169, %159
  %200 = load i8**, i8*** %7, align 8
  %201 = load i32, i32* @SADB_EXT_KEY_ENCRYPT, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %200, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast i8* %205 to %struct.sadb_key*
  store %struct.sadb_key* %206, %struct.sadb_key** %11, align 8
  %207 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %208 = icmp ne %struct.sadb_key* %207, null
  br i1 %208, label %209, label %239

209:                                              ; preds = %199
  %210 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %211 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SADB_EALG_NULL, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %239

215:                                              ; preds = %209
  %216 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %217 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 7
  %220 = sdiv i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %215
  %223 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %224 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 7
  %227 = sdiv i32 %226, 8
  %228 = sext i32 %227 to i64
  %229 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %230 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = mul i64 %232, 4
  %234 = icmp ugt i64 %228, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %222, %215
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  %238 = call %struct.xfrm_state* @ERR_PTR(i32 %237)
  store %struct.xfrm_state* %238, %struct.xfrm_state** %4, align 8
  br label %848

239:                                              ; preds = %222, %209, %199
  %240 = load %struct.net*, %struct.net** %5, align 8
  %241 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %240)
  store %struct.xfrm_state* %241, %struct.xfrm_state** %8, align 8
  %242 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %243 = icmp eq %struct.xfrm_state* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = load i32, i32* @ENOBUFS, align 4
  %246 = sub nsw i32 0, %245
  %247 = call %struct.xfrm_state* @ERR_PTR(i32 %246)
  store %struct.xfrm_state* %247, %struct.xfrm_state** %4, align 8
  br label %848

248:                                              ; preds = %239
  %249 = load i64, i64* %13, align 8
  %250 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %251 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 2
  store i64 %249, i64* %252, align 8
  %253 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %254 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %257 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  %259 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %260 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %263 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 8
  store i32 %261, i32* %264, align 4
  %265 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %266 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @SADB_SAFLAGS_NOECN, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %248
  %272 = load i32, i32* @XFRM_STATE_NOECN, align 4
  %273 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %274 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %271, %248
  %279 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %280 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @SADB_SAFLAGS_DECAP_DSCP, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %278
  %286 = load i32, i32* @XFRM_STATE_DECAP_DSCP, align 4
  %287 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %288 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %286
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %285, %278
  %293 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %294 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @SADB_SAFLAGS_NOPMTUDISC, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %292
  %300 = load i32, i32* @XFRM_STATE_NOPMTUDISC, align 4
  %301 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %302 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %300
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %299, %292
  %307 = load i8**, i8*** %7, align 8
  %308 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %307, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = bitcast i8* %312 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %313, %struct.sadb_lifetime** %9, align 8
  %314 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %315 = icmp ne %struct.sadb_lifetime* %314, null
  br i1 %315, label %316, label %343

316:                                              ; preds = %306
  %317 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %318 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = call i8* @_KEY2X(i32 %319)
  %321 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %322 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %321, i32 0, i32 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 7
  store i8* %320, i8** %323, align 8
  %324 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %325 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @_KEY2X(i32 %326)
  %328 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %329 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %328, i32 0, i32 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 6
  store i8* %327, i8** %330, align 8
  %331 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %332 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %335 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %334, i32 0, i32 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 5
  store i32 %333, i32* %336, align 4
  %337 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %338 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %341 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 4
  store i32 %339, i32* %342, align 8
  br label %343

343:                                              ; preds = %316, %306
  %344 = load i8**, i8*** %7, align 8
  %345 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %344, i64 %347
  %349 = load i8*, i8** %348, align 8
  %350 = bitcast i8* %349 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %350, %struct.sadb_lifetime** %9, align 8
  %351 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %352 = icmp ne %struct.sadb_lifetime* %351, null
  br i1 %352, label %353, label %380

353:                                              ; preds = %343
  %354 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %355 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @_KEY2X(i32 %356)
  %358 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %359 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %358, i32 0, i32 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 3
  store i8* %357, i8** %360, align 8
  %361 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %362 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = call i8* @_KEY2X(i32 %363)
  %365 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %366 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %365, i32 0, i32 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 2
  store i8* %364, i8** %367, align 8
  %368 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %369 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %372 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %371, i32 0, i32 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 1
  store i32 %370, i32* %373, align 4
  %374 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %9, align 8
  %375 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %378 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %377, i32 0, i32 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  store i32 %376, i32* %379, align 8
  br label %380

380:                                              ; preds = %353, %343
  %381 = load i8**, i8*** %7, align 8
  %382 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %381, i64 %384
  %386 = load i8*, i8** %385, align 8
  %387 = bitcast i8* %386 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %387, %struct.sadb_x_sec_ctx** %12, align 8
  %388 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %389 = icmp ne %struct.sadb_x_sec_ctx* %388, null
  br i1 %389, label %390, label %406

390:                                              ; preds = %380
  %391 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %12, align 8
  %392 = call %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %391)
  store %struct.xfrm_user_sec_ctx* %392, %struct.xfrm_user_sec_ctx** %15, align 8
  %393 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %15, align 8
  %394 = icmp ne %struct.xfrm_user_sec_ctx* %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %390
  br label %839

396:                                              ; preds = %390
  %397 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %398 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %15, align 8
  %399 = call i32 @security_xfrm_state_alloc(%struct.xfrm_state* %397, %struct.xfrm_user_sec_ctx* %398)
  store i32 %399, i32* %14, align 4
  %400 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %15, align 8
  %401 = call i32 @kfree(%struct.xfrm_user_sec_ctx* %400)
  %402 = load i32, i32* %14, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %396
  br label %839

405:                                              ; preds = %396
  br label %406

406:                                              ; preds = %405, %380
  %407 = load i8**, i8*** %7, align 8
  %408 = load i32, i32* @SADB_EXT_KEY_AUTH, align 4
  %409 = sub nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %407, i64 %410
  %412 = load i8*, i8** %411, align 8
  %413 = bitcast i8* %412 to %struct.sadb_key*
  store %struct.sadb_key* %413, %struct.sadb_key** %11, align 8
  %414 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %415 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %501

418:                                              ; preds = %406
  store i32 0, i32* %16, align 4
  %419 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %420 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byid(i64 %421)
  store %struct.xfrm_algo_desc* %422, %struct.xfrm_algo_desc** %17, align 8
  %423 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %17, align 8
  %424 = icmp ne %struct.xfrm_algo_desc* %423, null
  br i1 %424, label %428, label %425

425:                                              ; preds = %418
  %426 = load i32, i32* @ENOSYS, align 4
  %427 = sub nsw i32 0, %426
  store i32 %427, i32* %14, align 4
  br label %839

428:                                              ; preds = %418
  %429 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %430 = icmp ne %struct.sadb_key* %429, null
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %433 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %434, 7
  %436 = sdiv i32 %435, 8
  store i32 %436, i32* %16, align 4
  br label %437

437:                                              ; preds = %431, %428
  %438 = load i32, i32* %16, align 4
  %439 = sext i32 %438 to i64
  %440 = add i64 16, %439
  %441 = trunc i64 %440 to i32
  %442 = load i32, i32* @GFP_KERNEL, align 4
  %443 = call i8* @kmalloc(i32 %441, i32 %442)
  %444 = bitcast i8* %443 to %struct.TYPE_13__*
  %445 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %446 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %445, i32 0, i32 7
  store %struct.TYPE_13__* %444, %struct.TYPE_13__** %446, align 8
  %447 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %448 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %447, i32 0, i32 7
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %448, align 8
  %450 = icmp ne %struct.TYPE_13__* %449, null
  br i1 %450, label %452, label %451

451:                                              ; preds = %437
  br label %839

452:                                              ; preds = %437
  %453 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %454 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %453, i32 0, i32 7
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %17, align 8
  %459 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @strcpy(i32 %457, i32 %460)
  %462 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %463 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %462, i32 0, i32 7
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 0
  store i32 0, i32* %465, align 4
  %466 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %467 = icmp ne %struct.sadb_key* %466, null
  br i1 %467, label %468, label %485

468:                                              ; preds = %452
  %469 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %470 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %473 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %472, i32 0, i32 7
  %474 = load %struct.TYPE_13__*, %struct.TYPE_13__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %474, i32 0, i32 0
  store i32 %471, i32* %475, align 4
  %476 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %477 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %476, i32 0, i32 7
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %482 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %481, i64 1
  %483 = load i32, i32* %16, align 4
  %484 = call i32 @memcpy(i32 %480, %struct.sadb_key* %482, i32 %483)
  br label %485

485:                                              ; preds = %468, %452
  %486 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %17, align 8
  %487 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %492 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %491, i32 0, i32 7
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 1
  store i32 %490, i32* %494, align 4
  %495 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %496 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %499 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 0
  store i64 %497, i64* %500, align 8
  br label %501

501:                                              ; preds = %485, %406
  %502 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %503 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %631

506:                                              ; preds = %501
  %507 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %508 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = load i64, i64* @SADB_X_SATYPE_IPCOMP, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %512, label %549

512:                                              ; preds = %506
  %513 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %514 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = call %struct.xfrm_algo_desc* @xfrm_calg_get_byid(i64 %515)
  store %struct.xfrm_algo_desc* %516, %struct.xfrm_algo_desc** %18, align 8
  %517 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %18, align 8
  %518 = icmp ne %struct.xfrm_algo_desc* %517, null
  br i1 %518, label %522, label %519

519:                                              ; preds = %512
  %520 = load i32, i32* @ENOSYS, align 4
  %521 = sub nsw i32 0, %520
  store i32 %521, i32* %14, align 4
  br label %839

522:                                              ; preds = %512
  %523 = load i32, i32* @GFP_KERNEL, align 4
  %524 = call i8* @kmalloc(i32 4, i32 %523)
  %525 = bitcast i8* %524 to %struct.TYPE_16__*
  %526 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %527 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %526, i32 0, i32 6
  store %struct.TYPE_16__* %525, %struct.TYPE_16__** %527, align 8
  %528 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %529 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %528, i32 0, i32 6
  %530 = load %struct.TYPE_16__*, %struct.TYPE_16__** %529, align 8
  %531 = icmp ne %struct.TYPE_16__* %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %522
  br label %839

533:                                              ; preds = %522
  %534 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %535 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %534, i32 0, i32 6
  %536 = load %struct.TYPE_16__*, %struct.TYPE_16__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %18, align 8
  %540 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @strcpy(i32 %538, i32 %541)
  %543 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %544 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %543, i32 0, i32 1
  %545 = load i64, i64* %544, align 8
  %546 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %547 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %546, i32 0, i32 2
  %548 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %547, i32 0, i32 1
  store i64 %545, i64* %548, align 8
  br label %630

549:                                              ; preds = %506
  store i32 0, i32* %19, align 4
  %550 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %551 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %550, i32 0, i32 1
  %552 = load i64, i64* %551, align 8
  %553 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byid(i64 %552)
  store %struct.xfrm_algo_desc* %553, %struct.xfrm_algo_desc** %20, align 8
  %554 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %20, align 8
  %555 = icmp ne %struct.xfrm_algo_desc* %554, null
  br i1 %555, label %559, label %556

556:                                              ; preds = %549
  %557 = load i32, i32* @ENOSYS, align 4
  %558 = sub nsw i32 0, %557
  store i32 %558, i32* %14, align 4
  br label %839

559:                                              ; preds = %549
  %560 = load i8**, i8*** %7, align 8
  %561 = load i32, i32* @SADB_EXT_KEY_ENCRYPT, align 4
  %562 = sub nsw i32 %561, 1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8*, i8** %560, i64 %563
  %565 = load i8*, i8** %564, align 8
  %566 = bitcast i8* %565 to %struct.sadb_key*
  store %struct.sadb_key* %566, %struct.sadb_key** %11, align 8
  %567 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %568 = icmp ne %struct.sadb_key* %567, null
  br i1 %568, label %569, label %575

569:                                              ; preds = %559
  %570 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %571 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = add nsw i32 %572, 7
  %574 = sdiv i32 %573, 8
  store i32 %574, i32* %19, align 4
  br label %575

575:                                              ; preds = %569, %559
  %576 = load i32, i32* %19, align 4
  %577 = sext i32 %576 to i64
  %578 = add i64 12, %577
  %579 = trunc i64 %578 to i32
  %580 = load i32, i32* @GFP_KERNEL, align 4
  %581 = call i8* @kmalloc(i32 %579, i32 %580)
  %582 = bitcast i8* %581 to %struct.TYPE_17__*
  %583 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %584 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %583, i32 0, i32 5
  store %struct.TYPE_17__* %582, %struct.TYPE_17__** %584, align 8
  %585 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %586 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %585, i32 0, i32 5
  %587 = load %struct.TYPE_17__*, %struct.TYPE_17__** %586, align 8
  %588 = icmp ne %struct.TYPE_17__* %587, null
  br i1 %588, label %590, label %589

589:                                              ; preds = %575
  br label %839

590:                                              ; preds = %575
  %591 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %592 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %591, i32 0, i32 5
  %593 = load %struct.TYPE_17__*, %struct.TYPE_17__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %20, align 8
  %597 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = call i32 @strcpy(i32 %595, i32 %598)
  %600 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %601 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %600, i32 0, i32 5
  %602 = load %struct.TYPE_17__*, %struct.TYPE_17__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %602, i32 0, i32 0
  store i32 0, i32* %603, align 4
  %604 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %605 = icmp ne %struct.sadb_key* %604, null
  br i1 %605, label %606, label %623

606:                                              ; preds = %590
  %607 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %608 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 4
  %610 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %611 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %610, i32 0, i32 5
  %612 = load %struct.TYPE_17__*, %struct.TYPE_17__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %612, i32 0, i32 0
  store i32 %609, i32* %613, align 4
  %614 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %615 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %614, i32 0, i32 5
  %616 = load %struct.TYPE_17__*, %struct.TYPE_17__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.sadb_key*, %struct.sadb_key** %11, align 8
  %620 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %619, i64 1
  %621 = load i32, i32* %19, align 4
  %622 = call i32 @memcpy(i32 %618, %struct.sadb_key* %620, i32 %621)
  br label %623

623:                                              ; preds = %606, %590
  %624 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %625 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %624, i32 0, i32 1
  %626 = load i64, i64* %625, align 8
  %627 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %628 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %628, i32 0, i32 2
  store i64 %626, i64* %629, align 8
  br label %630

630:                                              ; preds = %623, %533
  br label %631

631:                                              ; preds = %630, %501
  %632 = load i8**, i8*** %7, align 8
  %633 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %634 = sub nsw i32 %633, 1
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8*, i8** %632, i64 %635
  %637 = load i8*, i8** %636, align 8
  %638 = bitcast i8* %637 to %struct.sadb_address*
  %639 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %640 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %639, i32 0, i32 2
  %641 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %640, i32 0, i32 6
  %642 = call i8* @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %638, i32* %641)
  %643 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %644 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %643, i32 0, i32 2
  %645 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %644, i32 0, i32 4
  store i8* %642, i8** %645, align 8
  %646 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %647 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %647, i32 0, i32 4
  %649 = load i8*, i8** %648, align 8
  %650 = icmp ne i8* %649, null
  br i1 %650, label %654, label %651

651:                                              ; preds = %631
  %652 = load i32, i32* @EAFNOSUPPORT, align 4
  %653 = sub nsw i32 0, %652
  store i32 %653, i32* %14, align 4
  br label %839

654:                                              ; preds = %631
  %655 = load i8**, i8*** %7, align 8
  %656 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %657 = sub nsw i32 %656, 1
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8*, i8** %655, i64 %658
  %660 = load i8*, i8** %659, align 8
  %661 = bitcast i8* %660 to %struct.sadb_address*
  %662 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %663 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %662, i32 0, i32 4
  %664 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %663, i32 0, i32 0
  %665 = call i8* @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %661, i32* %664)
  %666 = load i8**, i8*** %7, align 8
  %667 = load i32, i32* @SADB_X_EXT_SA2, align 4
  %668 = sub nsw i32 %667, 1
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i8*, i8** %666, i64 %669
  %671 = load i8*, i8** %670, align 8
  %672 = icmp ne i8* %671, null
  br i1 %672, label %673, label %701

673:                                              ; preds = %654
  %674 = load i8**, i8*** %7, align 8
  %675 = load i32, i32* @SADB_X_EXT_SA2, align 4
  %676 = sub nsw i32 %675, 1
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8*, i8** %674, i64 %677
  %679 = load i8*, i8** %678, align 8
  %680 = bitcast i8* %679 to %struct.sadb_x_sa2*
  store %struct.sadb_x_sa2* %680, %struct.sadb_x_sa2** %21, align 8
  %681 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %21, align 8
  %682 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 4
  %684 = call i32 @pfkey_mode_to_xfrm(i32 %683)
  store i32 %684, i32* %22, align 4
  %685 = load i32, i32* %22, align 4
  %686 = icmp slt i32 %685, 0
  br i1 %686, label %687, label %690

687:                                              ; preds = %673
  %688 = load i32, i32* @EINVAL, align 4
  %689 = sub nsw i32 0, %688
  store i32 %689, i32* %14, align 4
  br label %839

690:                                              ; preds = %673
  %691 = load i32, i32* %22, align 4
  %692 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %693 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %692, i32 0, i32 2
  %694 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %693, i32 0, i32 3
  store i32 %691, i32* %694, align 8
  %695 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %21, align 8
  %696 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %699 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %698, i32 0, i32 2
  %700 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %699, i32 0, i32 5
  store i32 %697, i32* %700, align 8
  br label %701

701:                                              ; preds = %690, %654
  %702 = load i8**, i8*** %7, align 8
  %703 = load i32, i32* @SADB_EXT_ADDRESS_PROXY, align 4
  %704 = sub nsw i32 %703, 1
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds i8*, i8** %702, i64 %705
  %707 = load i8*, i8** %706, align 8
  %708 = icmp ne i8* %707, null
  br i1 %708, label %709, label %731

709:                                              ; preds = %701
  %710 = load i8**, i8*** %7, align 8
  %711 = load i32, i32* @SADB_EXT_ADDRESS_PROXY, align 4
  %712 = sub nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i8*, i8** %710, i64 %713
  %715 = load i8*, i8** %714, align 8
  %716 = bitcast i8* %715 to %struct.sadb_address*
  store %struct.sadb_address* %716, %struct.sadb_address** %23, align 8
  %717 = load %struct.sadb_address*, %struct.sadb_address** %23, align 8
  %718 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %719 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %718, i32 0, i32 3
  %720 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %719, i32 0, i32 2
  %721 = call i8* @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address* %717, i32* %720)
  %722 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %723 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %722, i32 0, i32 3
  %724 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %723, i32 0, i32 0
  store i8* %721, i8** %724, align 8
  %725 = load %struct.sadb_address*, %struct.sadb_address** %23, align 8
  %726 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 4
  %728 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %729 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %728, i32 0, i32 3
  %730 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %729, i32 0, i32 1
  store i32 %727, i32* %730, align 8
  br label %731

731:                                              ; preds = %709, %701
  %732 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %733 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %732, i32 0, i32 3
  %734 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %733, i32 0, i32 0
  %735 = load i8*, i8** %734, align 8
  %736 = icmp ne i8* %735, null
  br i1 %736, label %745, label %737

737:                                              ; preds = %731
  %738 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %739 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %738, i32 0, i32 2
  %740 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %739, i32 0, i32 4
  %741 = load i8*, i8** %740, align 8
  %742 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %743 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %742, i32 0, i32 3
  %744 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %743, i32 0, i32 0
  store i8* %741, i8** %744, align 8
  br label %745

745:                                              ; preds = %737, %731
  %746 = load i8**, i8*** %7, align 8
  %747 = load i32, i32* @SADB_X_EXT_NAT_T_TYPE, align 4
  %748 = sub nsw i32 %747, 1
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i8*, i8** %746, i64 %749
  %751 = load i8*, i8** %750, align 8
  %752 = icmp ne i8* %751, null
  br i1 %752, label %753, label %825

753:                                              ; preds = %745
  %754 = load i32, i32* @GFP_KERNEL, align 4
  %755 = call i8* @kmalloc(i32 16, i32 %754)
  %756 = bitcast i8* %755 to %struct.xfrm_encap_tmpl*
  %757 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %758 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %757, i32 0, i32 1
  store %struct.xfrm_encap_tmpl* %756, %struct.xfrm_encap_tmpl** %758, align 8
  %759 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %760 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %759, i32 0, i32 1
  %761 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %760, align 8
  %762 = icmp ne %struct.xfrm_encap_tmpl* %761, null
  br i1 %762, label %764, label %763

763:                                              ; preds = %753
  br label %839

764:                                              ; preds = %753
  %765 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %766 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %765, i32 0, i32 1
  %767 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %766, align 8
  store %struct.xfrm_encap_tmpl* %767, %struct.xfrm_encap_tmpl** %25, align 8
  %768 = load i8**, i8*** %7, align 8
  %769 = load i32, i32* @SADB_X_EXT_NAT_T_TYPE, align 4
  %770 = sub nsw i32 %769, 1
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i8*, i8** %768, i64 %771
  %773 = load i8*, i8** %772, align 8
  %774 = bitcast i8* %773 to %struct.sadb_x_nat_t_type*
  store %struct.sadb_x_nat_t_type* %774, %struct.sadb_x_nat_t_type** %24, align 8
  %775 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %24, align 8
  %776 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 4
  %778 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %25, align 8
  %779 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %778, i32 0, i32 3
  store i32 %777, i32* %779, align 4
  %780 = load i8**, i8*** %7, align 8
  %781 = load i32, i32* @SADB_X_EXT_NAT_T_SPORT, align 4
  %782 = sub nsw i32 %781, 1
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i8*, i8** %780, i64 %783
  %785 = load i8*, i8** %784, align 8
  %786 = icmp ne i8* %785, null
  br i1 %786, label %787, label %800

787:                                              ; preds = %764
  %788 = load i8**, i8*** %7, align 8
  %789 = load i32, i32* @SADB_X_EXT_NAT_T_SPORT, align 4
  %790 = sub nsw i32 %789, 1
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds i8*, i8** %788, i64 %791
  %793 = load i8*, i8** %792, align 8
  %794 = bitcast i8* %793 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %794, %struct.sadb_x_nat_t_port** %26, align 8
  %795 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %26, align 8
  %796 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 4
  %798 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %25, align 8
  %799 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %798, i32 0, i32 2
  store i32 %797, i32* %799, align 4
  br label %800

800:                                              ; preds = %787, %764
  %801 = load i8**, i8*** %7, align 8
  %802 = load i32, i32* @SADB_X_EXT_NAT_T_DPORT, align 4
  %803 = sub nsw i32 %802, 1
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8*, i8** %801, i64 %804
  %806 = load i8*, i8** %805, align 8
  %807 = icmp ne i8* %806, null
  br i1 %807, label %808, label %821

808:                                              ; preds = %800
  %809 = load i8**, i8*** %7, align 8
  %810 = load i32, i32* @SADB_X_EXT_NAT_T_DPORT, align 4
  %811 = sub nsw i32 %810, 1
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i8*, i8** %809, i64 %812
  %814 = load i8*, i8** %813, align 8
  %815 = bitcast i8* %814 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %815, %struct.sadb_x_nat_t_port** %27, align 8
  %816 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %27, align 8
  %817 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %816, i32 0, i32 0
  %818 = load i32, i32* %817, align 4
  %819 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %25, align 8
  %820 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %819, i32 0, i32 1
  store i32 %818, i32* %820, align 4
  br label %821

821:                                              ; preds = %808, %800
  %822 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %25, align 8
  %823 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %822, i32 0, i32 0
  %824 = call i32 @memset(i32* %823, i32 0, i32 4)
  br label %825

825:                                              ; preds = %821, %745
  %826 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %827 = call i32 @xfrm_init_state(%struct.xfrm_state* %826)
  store i32 %827, i32* %14, align 4
  %828 = load i32, i32* %14, align 4
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %830, label %831

830:                                              ; preds = %825
  br label %839

831:                                              ; preds = %825
  %832 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %833 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %832, i32 0, i32 1
  %834 = load i32, i32* %833, align 8
  %835 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %836 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %835, i32 0, i32 0
  %837 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %836, i32 0, i32 1
  store i32 %834, i32* %837, align 4
  %838 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  store %struct.xfrm_state* %838, %struct.xfrm_state** %4, align 8
  br label %848

839:                                              ; preds = %830, %763, %687, %651, %589, %556, %532, %519, %451, %425, %404, %395
  %840 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %841 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %842 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %841, i32 0, i32 0
  %843 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %842, i32 0, i32 0
  store i32 %840, i32* %843, align 8
  %844 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %845 = call i32 @xfrm_state_put(%struct.xfrm_state* %844)
  %846 = load i32, i32* %14, align 4
  %847 = call %struct.xfrm_state* @ERR_PTR(i32 %846)
  store %struct.xfrm_state* %847, %struct.xfrm_state** %4, align 8
  br label %848

848:                                              ; preds = %839, %831, %244, %235, %195, %155, %125, %114, %88, %70, %52
  %849 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  ret %struct.xfrm_state* %849
}

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local %struct.xfrm_state* @ERR_PTR(i32) #1

declare dso_local i64 @pfkey_satype2proto(i64) #1

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

declare dso_local i8* @_KEY2X(i32) #1

declare dso_local %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx*) #1

declare dso_local i32 @security_xfrm_state_alloc(%struct.xfrm_state*, %struct.xfrm_user_sec_ctx*) #1

declare dso_local i32 @kfree(%struct.xfrm_user_sec_ctx*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byid(i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.sadb_key*, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_calg_get_byid(i64) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byid(i64) #1

declare dso_local i8* @pfkey_sadb_addr2xfrm_addr(%struct.sadb_address*, i32*) #1

declare dso_local i32 @pfkey_mode_to_xfrm(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @xfrm_init_state(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
