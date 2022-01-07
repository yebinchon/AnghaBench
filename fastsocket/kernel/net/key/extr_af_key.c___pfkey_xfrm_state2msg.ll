; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c___pfkey_xfrm_state2msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c___pfkey_xfrm_state2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_11__, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.xfrm_encap_tmpl*, %struct.xfrm_sec_ctx* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.xfrm_encap_tmpl = type { i32, i32, i64 }
%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.sadb_msg = type { i32 }
%struct.sadb_sa = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.sadb_lifetime = type { i32, i32, i32, i8*, i8*, i32 }
%struct.sadb_address = type { i32, i64, i8*, i64, i32 }
%struct.sadb_key = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.sadb_x_sa2 = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.sadb_x_nat_t_type = type { i32, i64*, i64, i32 }
%struct.sadb_x_nat_t_port = type { i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_SASTATE_DYING = common dso_local global i32 0, align 4
@SADB_SASTATE_MATURE = common dso_local global i32 0, align 4
@SADB_SASTATE_LARVAL = common dso_local global i32 0, align 4
@SADB_SASTATE_DEAD = common dso_local global i32 0, align 4
@XFRM_STATE_NOECN = common dso_local global i32 0, align 4
@SADB_SAFLAGS_NOECN = common dso_local global i32 0, align 4
@XFRM_STATE_DECAP_DSCP = common dso_local global i32 0, align 4
@SADB_SAFLAGS_DECAP_DSCP = common dso_local global i32 0, align 4
@XFRM_STATE_NOPMTUDISC = common dso_local global i32 0, align 4
@SADB_SAFLAGS_NOPMTUDISC = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_HARD = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_SOFT = common dso_local global i32 0, align 4
@SADB_EXT_LIFETIME_CURRENT = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_PROXY = common dso_local global i32 0, align 4
@SADB_EXT_KEY_AUTH = common dso_local global i32 0, align 4
@SADB_EXT_KEY_ENCRYPT = common dso_local global i32 0, align 4
@SADB_X_EXT_SA2 = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_TYPE = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_SPORT = common dso_local global i32 0, align 4
@SADB_X_EXT_NAT_T_DPORT = common dso_local global i32 0, align 4
@SADB_X_EXT_SEC_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xfrm_state*, i32, i32)* @__pfkey_xfrm_state2msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__pfkey_xfrm_state2msg(%struct.xfrm_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  %10 = alloca %struct.sadb_sa*, align 8
  %11 = alloca %struct.sadb_lifetime*, align 8
  %12 = alloca %struct.sadb_address*, align 8
  %13 = alloca %struct.sadb_key*, align 8
  %14 = alloca %struct.sadb_x_sa2*, align 8
  %15 = alloca %struct.sadb_x_sec_ctx*, align 8
  %16 = alloca %struct.xfrm_sec_ctx*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.xfrm_encap_tmpl*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.xfrm_algo_desc*, align 8
  %25 = alloca %struct.xfrm_algo_desc*, align 8
  %26 = alloca %struct.xfrm_algo_desc*, align 8
  %27 = alloca %struct.sadb_x_nat_t_type*, align 8
  %28 = alloca %struct.sadb_x_nat_t_port*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store %struct.xfrm_encap_tmpl* null, %struct.xfrm_encap_tmpl** %22, align 8
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pfkey_sockaddr_size(i32 %32)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.sk_buff* @ERR_PTR(i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  br label %888

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i64 40, i64 0
  %46 = add i64 84, %45
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i64 40, i64 0
  %52 = add i64 %46, %51
  %53 = add i64 %52, 80
  %54 = load i32, i32* %21, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add i64 %53, %56
  %58 = add i64 %57, 48
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %18, align 4
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 10
  %62 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %61, align 8
  store %struct.xfrm_sec_ctx* %62, %struct.xfrm_sec_ctx** %16, align 8
  %63 = icmp ne %struct.xfrm_sec_ctx* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %40
  %65 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %66 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PFKEY_ALIGN8(i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 48, %70
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %64, %40
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %78 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @xfrm_addr_cmp(i32* %79, i32* %82, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %76
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 40, %91
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %89, %76
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %97
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 2
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = icmp ne %struct.TYPE_19__* %103, null
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 2
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 2
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 7
  %119 = sdiv i32 %118, 8
  %120 = call i32 @PFKEY_ALIGN8(i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 48, %122
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %112, %105, %100
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %130 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %129, i32 0, i32 1
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = icmp ne %struct.TYPE_20__* %131, null
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %135 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %134, i32 0, i32 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %133
  %141 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %142 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 7
  %147 = sdiv i32 %146, 8
  %148 = call i32 @PFKEY_ALIGN8(i32 %147)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 48, %150
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %140, %133, %128
  br label %157

157:                                              ; preds = %156, %97
  %158 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %159 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %158, i32 0, i32 9
  %160 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %159, align 8
  %161 = icmp ne %struct.xfrm_encap_tmpl* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %164 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %163, i32 0, i32 9
  %165 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %164, align 8
  store %struct.xfrm_encap_tmpl* %165, %struct.xfrm_encap_tmpl** %22, align 8
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %168 = icmp ne %struct.xfrm_encap_tmpl* %167, null
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %171 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %169
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, 32
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %180, 24
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 %184, 24
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %174, %169, %166
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 16
  %190 = load i32, i32* @GFP_ATOMIC, align 4
  %191 = call %struct.sk_buff* @alloc_skb(i32 %189, i32 %190)
  store %struct.sk_buff* %191, %struct.sk_buff** %8, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = icmp eq %struct.sk_buff* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* @ENOBUFS, align 4
  %196 = sub nsw i32 0, %195
  %197 = call %struct.sk_buff* @ERR_PTR(i32 %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %4, align 8
  br label %888

198:                                              ; preds = %187
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = call i64 @skb_put(%struct.sk_buff* %199, i32 4)
  %201 = inttoptr i64 %200 to %struct.sadb_msg*
  store %struct.sadb_msg* %201, %struct.sadb_msg** %9, align 8
  %202 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @memset(%struct.sadb_msg* %202, i32 0, i32 %203)
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = udiv i64 %206, 4
  %208 = trunc i64 %207 to i32
  %209 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %210 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = call i64 @skb_put(%struct.sk_buff* %211, i32 40)
  %213 = inttoptr i64 %212 to %struct.sadb_sa*
  store %struct.sadb_sa* %213, %struct.sadb_sa** %10, align 8
  %214 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %215 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %214, i32 0, i32 0
  store i32 10, i32* %215, align 8
  %216 = load i32, i32* @SADB_EXT_SA, align 4
  %217 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %218 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  %219 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %220 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %224 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %226 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %230 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 4
  %231 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %232 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %231, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  switch i32 %234, label %253 [
    i32 128, label %235
    i32 129, label %249
  ]

235:                                              ; preds = %198
  %236 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %237 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* @SADB_SASTATE_DYING, align 4
  br label %245

243:                                              ; preds = %235
  %244 = load i32, i32* @SADB_SASTATE_MATURE, align 4
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i32 [ %242, %241 ], [ %244, %243 ]
  %247 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %248 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 8
  br label %257

249:                                              ; preds = %198
  %250 = load i32, i32* @SADB_SASTATE_LARVAL, align 4
  %251 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %252 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  br label %257

253:                                              ; preds = %198
  %254 = load i32, i32* @SADB_SASTATE_DEAD, align 4
  %255 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %256 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %253, %249, %245
  %258 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %259 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  %260 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %261 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %260, i32 0, i32 2
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = icmp ne %struct.TYPE_19__* %262, null
  br i1 %263, label %264, label %283

264:                                              ; preds = %257
  %265 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %266 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %265, i32 0, i32 2
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32 %269, i32 0)
  store %struct.xfrm_algo_desc* %270, %struct.xfrm_algo_desc** %24, align 8
  %271 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %24, align 8
  %272 = icmp ne %struct.xfrm_algo_desc* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %264
  %274 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %24, align 8
  %275 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  br label %279

278:                                              ; preds = %264
  br label %279

279:                                              ; preds = %278, %273
  %280 = phi i64 [ %277, %273 ], [ 0, %278 ]
  %281 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %282 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %281, i32 0, i32 3
  store i64 %280, i64* %282, align 8
  br label %283

283:                                              ; preds = %279, %257
  %284 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %285 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %284, i32 0, i32 2
  store i64 0, i64* %285, align 8
  %286 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %287 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %286, i32 0, i32 1
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %287, align 8
  %289 = icmp ne %struct.TYPE_20__* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %292 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %291, i32 0, i32 7
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = icmp ne %struct.TYPE_13__* %293, null
  br label %295

295:                                              ; preds = %290, %283
  %296 = phi i1 [ false, %283 ], [ %294, %290 ]
  %297 = zext i1 %296 to i32
  %298 = call i32 @BUG_ON(i32 %297)
  %299 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %300 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %299, i32 0, i32 1
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %300, align 8
  %302 = icmp ne %struct.TYPE_20__* %301, null
  br i1 %302, label %303, label %322

303:                                              ; preds = %295
  %304 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %305 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %304, i32 0, i32 1
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byname(i32 %308, i32 0)
  store %struct.xfrm_algo_desc* %309, %struct.xfrm_algo_desc** %25, align 8
  %310 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %25, align 8
  %311 = icmp ne %struct.xfrm_algo_desc* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %303
  %313 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %25, align 8
  %314 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  br label %318

317:                                              ; preds = %303
  br label %318

318:                                              ; preds = %317, %312
  %319 = phi i64 [ %316, %312 ], [ 0, %317 ]
  %320 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %321 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %320, i32 0, i32 2
  store i64 %319, i64* %321, align 8
  br label %322

322:                                              ; preds = %318, %295
  %323 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %324 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %323, i32 0, i32 7
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %324, align 8
  %326 = icmp ne %struct.TYPE_13__* %325, null
  br i1 %326, label %327, label %346

327:                                              ; preds = %322
  %328 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %329 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %328, i32 0, i32 7
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call %struct.xfrm_algo_desc* @xfrm_calg_get_byname(i32 %332, i32 0)
  store %struct.xfrm_algo_desc* %333, %struct.xfrm_algo_desc** %26, align 8
  %334 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %26, align 8
  %335 = icmp ne %struct.xfrm_algo_desc* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %327
  %337 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %26, align 8
  %338 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  br label %342

341:                                              ; preds = %327
  br label %342

342:                                              ; preds = %341, %336
  %343 = phi i64 [ %340, %336 ], [ 0, %341 ]
  %344 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %345 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %344, i32 0, i32 2
  store i64 %343, i64* %345, align 8
  br label %346

346:                                              ; preds = %342, %322
  %347 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %348 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %347, i32 0, i32 1
  store i32 0, i32* %348, align 4
  %349 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %350 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @XFRM_STATE_NOECN, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %346
  %357 = load i32, i32* @SADB_SAFLAGS_NOECN, align 4
  %358 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %359 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %357
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %356, %346
  %363 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %364 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @XFRM_STATE_DECAP_DSCP, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %362
  %371 = load i32, i32* @SADB_SAFLAGS_DECAP_DSCP, align 4
  %372 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %373 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 4
  br label %376

376:                                              ; preds = %370, %362
  %377 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %378 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @XFRM_STATE_NOPMTUDISC, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %376
  %385 = load i32, i32* @SADB_SAFLAGS_NOPMTUDISC, align 4
  %386 = load %struct.sadb_sa*, %struct.sadb_sa** %10, align 8
  %387 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = or i32 %388, %385
  store i32 %389, i32* %387, align 4
  br label %390

390:                                              ; preds = %384, %376
  %391 = load i32, i32* %7, align 4
  %392 = and i32 %391, 2
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %429

394:                                              ; preds = %390
  %395 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %396 = call i64 @skb_put(%struct.sk_buff* %395, i32 40)
  %397 = inttoptr i64 %396 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %397, %struct.sadb_lifetime** %11, align 8
  %398 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %399 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %398, i32 0, i32 0
  store i32 10, i32* %399, align 8
  %400 = load i32, i32* @SADB_EXT_LIFETIME_HARD, align 4
  %401 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %402 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %401, i32 0, i32 5
  store i32 %400, i32* %402, align 8
  %403 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %404 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %403, i32 0, i32 6
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 7
  %406 = load i32, i32* %405, align 4
  %407 = call i8* @_X2KEY(i32 %406)
  %408 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %409 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %408, i32 0, i32 4
  store i8* %407, i8** %409, align 8
  %410 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %411 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %410, i32 0, i32 6
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 6
  %413 = load i32, i32* %412, align 8
  %414 = call i8* @_X2KEY(i32 %413)
  %415 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %416 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %415, i32 0, i32 3
  store i8* %414, i8** %416, align 8
  %417 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %418 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %417, i32 0, i32 6
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %422 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %421, i32 0, i32 2
  store i32 %420, i32* %422, align 8
  %423 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %424 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %428 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %427, i32 0, i32 1
  store i32 %426, i32* %428, align 4
  br label %429

429:                                              ; preds = %394, %390
  %430 = load i32, i32* %7, align 4
  %431 = and i32 %430, 1
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %468

433:                                              ; preds = %429
  %434 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %435 = call i64 @skb_put(%struct.sk_buff* %434, i32 40)
  %436 = inttoptr i64 %435 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %436, %struct.sadb_lifetime** %11, align 8
  %437 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %438 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %437, i32 0, i32 0
  store i32 10, i32* %438, align 8
  %439 = load i32, i32* @SADB_EXT_LIFETIME_SOFT, align 4
  %440 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %441 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %440, i32 0, i32 5
  store i32 %439, i32* %441, align 8
  %442 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %443 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %442, i32 0, i32 6
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = call i8* @_X2KEY(i32 %445)
  %447 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %448 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %447, i32 0, i32 4
  store i8* %446, i8** %448, align 8
  %449 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %450 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = call i8* @_X2KEY(i32 %452)
  %454 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %455 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %454, i32 0, i32 3
  store i8* %453, i8** %455, align 8
  %456 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %457 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %456, i32 0, i32 6
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %461 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %460, i32 0, i32 2
  store i32 %459, i32* %461, align 8
  %462 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %463 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %462, i32 0, i32 6
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %467 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %466, i32 0, i32 1
  store i32 %465, i32* %467, align 4
  br label %468

468:                                              ; preds = %433, %429
  %469 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %470 = call i64 @skb_put(%struct.sk_buff* %469, i32 40)
  %471 = inttoptr i64 %470 to %struct.sadb_lifetime*
  store %struct.sadb_lifetime* %471, %struct.sadb_lifetime** %11, align 8
  %472 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %473 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %472, i32 0, i32 0
  store i32 10, i32* %473, align 8
  %474 = load i32, i32* @SADB_EXT_LIFETIME_CURRENT, align 4
  %475 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %476 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %475, i32 0, i32 5
  store i32 %474, i32* %476, align 8
  %477 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %478 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i32 0, i32 3
  %480 = load i8*, i8** %479, align 8
  %481 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %482 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %481, i32 0, i32 4
  store i8* %480, i8** %482, align 8
  %483 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %484 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %484, i32 0, i32 2
  %486 = load i8*, i8** %485, align 8
  %487 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %488 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %487, i32 0, i32 3
  store i8* %486, i8** %488, align 8
  %489 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %490 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %489, i32 0, i32 5
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %494 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %493, i32 0, i32 2
  store i32 %492, i32* %494, align 8
  %495 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %496 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %495, i32 0, i32 5
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.sadb_lifetime*, %struct.sadb_lifetime** %11, align 8
  %500 = getelementptr inbounds %struct.sadb_lifetime, %struct.sadb_lifetime* %499, i32 0, i32 1
  store i32 %498, i32* %500, align 4
  %501 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %502 = load i32, i32* %21, align 4
  %503 = sext i32 %502 to i64
  %504 = add i64 40, %503
  %505 = trunc i64 %504 to i32
  %506 = call i64 @skb_put(%struct.sk_buff* %501, i32 %505)
  %507 = inttoptr i64 %506 to %struct.sadb_address*
  store %struct.sadb_address* %507, %struct.sadb_address** %12, align 8
  %508 = load i32, i32* %21, align 4
  %509 = sext i32 %508 to i64
  %510 = add i64 40, %509
  %511 = udiv i64 %510, 4
  %512 = trunc i64 %511 to i32
  %513 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %514 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %513, i32 0, i32 0
  store i32 %512, i32* %514, align 8
  %515 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %516 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %517 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %516, i32 0, i32 4
  store i32 %515, i32* %517, align 8
  %518 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %519 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %518, i32 0, i32 3
  store i64 0, i64* %519, align 8
  %520 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %521 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %520, i32 0, i32 1
  store i64 0, i64* %521, align 8
  %522 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %523 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i32 0, i32 4
  %525 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %526 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %525, i64 1
  %527 = bitcast %struct.sadb_address* %526 to %struct.sockaddr*
  %528 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %529 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 4
  %532 = call i8* @pfkey_sockaddr_fill(i32* %524, i32 0, %struct.sockaddr* %527, i32 %531)
  %533 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %534 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %533, i32 0, i32 2
  store i8* %532, i8** %534, align 8
  %535 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %536 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %535, i32 0, i32 2
  %537 = load i8*, i8** %536, align 8
  %538 = icmp ne i8* %537, null
  br i1 %538, label %541, label %539

539:                                              ; preds = %468
  %540 = call i32 (...) @BUG()
  br label %541

541:                                              ; preds = %539, %468
  %542 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %543 = load i32, i32* %21, align 4
  %544 = sext i32 %543 to i64
  %545 = add i64 40, %544
  %546 = trunc i64 %545 to i32
  %547 = call i64 @skb_put(%struct.sk_buff* %542, i32 %546)
  %548 = inttoptr i64 %547 to %struct.sadb_address*
  store %struct.sadb_address* %548, %struct.sadb_address** %12, align 8
  %549 = load i32, i32* %21, align 4
  %550 = sext i32 %549 to i64
  %551 = add i64 40, %550
  %552 = udiv i64 %551, 4
  %553 = trunc i64 %552 to i32
  %554 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %555 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %554, i32 0, i32 0
  store i32 %553, i32* %555, align 8
  %556 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %557 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %558 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %557, i32 0, i32 4
  store i32 %556, i32* %558, align 8
  %559 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %560 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %559, i32 0, i32 3
  store i64 0, i64* %560, align 8
  %561 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %562 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %561, i32 0, i32 1
  store i64 0, i64* %562, align 8
  %563 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %564 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %563, i32 0, i32 4
  %565 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %564, i32 0, i32 0
  %566 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %567 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %566, i64 1
  %568 = bitcast %struct.sadb_address* %567 to %struct.sockaddr*
  %569 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %570 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 3
  %572 = load i32, i32* %571, align 4
  %573 = call i8* @pfkey_sockaddr_fill(i32* %565, i32 0, %struct.sockaddr* %568, i32 %572)
  %574 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %575 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %574, i32 0, i32 2
  store i8* %573, i8** %575, align 8
  %576 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %577 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %576, i32 0, i32 2
  %578 = load i8*, i8** %577, align 8
  %579 = icmp ne i8* %578, null
  br i1 %579, label %582, label %580

580:                                              ; preds = %541
  %581 = call i32 (...) @BUG()
  br label %582

582:                                              ; preds = %580, %541
  %583 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %584 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %583, i32 0, i32 3
  %585 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %584, i32 0, i32 1
  %586 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %587 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 4
  %589 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %590 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 3
  %592 = load i32, i32* %591, align 4
  %593 = call i64 @xfrm_addr_cmp(i32* %585, i32* %588, i32 %592)
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %643

595:                                              ; preds = %582
  %596 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %597 = load i32, i32* %21, align 4
  %598 = sext i32 %597 to i64
  %599 = add i64 40, %598
  %600 = trunc i64 %599 to i32
  %601 = call i64 @skb_put(%struct.sk_buff* %596, i32 %600)
  %602 = inttoptr i64 %601 to %struct.sadb_address*
  store %struct.sadb_address* %602, %struct.sadb_address** %12, align 8
  %603 = load i32, i32* %21, align 4
  %604 = sext i32 %603 to i64
  %605 = add i64 40, %604
  %606 = udiv i64 %605, 4
  %607 = trunc i64 %606 to i32
  %608 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %609 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %608, i32 0, i32 0
  store i32 %607, i32* %609, align 8
  %610 = load i32, i32* @SADB_EXT_ADDRESS_PROXY, align 4
  %611 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %612 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %611, i32 0, i32 4
  store i32 %610, i32* %612, align 8
  %613 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %614 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %613, i32 0, i32 3
  %615 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %614, i32 0, i32 3
  %616 = load i32, i32* %615, align 8
  %617 = call i64 @pfkey_proto_from_xfrm(i32 %616)
  %618 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %619 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %618, i32 0, i32 3
  store i64 %617, i64* %619, align 8
  %620 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %621 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %620, i32 0, i32 3
  %622 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %621, i32 0, i32 2
  %623 = load i8*, i8** %622, align 8
  %624 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %625 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %624, i32 0, i32 2
  store i8* %623, i8** %625, align 8
  %626 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %627 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %626, i32 0, i32 1
  store i64 0, i64* %627, align 8
  %628 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %629 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %628, i32 0, i32 3
  %630 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %629, i32 0, i32 1
  %631 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %632 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %631, i32 0, i32 3
  %633 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = load %struct.sadb_address*, %struct.sadb_address** %12, align 8
  %636 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %635, i64 1
  %637 = bitcast %struct.sadb_address* %636 to %struct.sockaddr*
  %638 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %639 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 4
  %642 = call i8* @pfkey_sockaddr_fill(i32* %630, i32 %634, %struct.sockaddr* %637, i32 %641)
  br label %643

643:                                              ; preds = %595, %582
  %644 = load i32, i32* %6, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %692

646:                                              ; preds = %643
  %647 = load i32, i32* %19, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %692

649:                                              ; preds = %646
  %650 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %651 = load i32, i32* %19, align 4
  %652 = sext i32 %651 to i64
  %653 = add i64 48, %652
  %654 = trunc i64 %653 to i32
  %655 = call i64 @skb_put(%struct.sk_buff* %650, i32 %654)
  %656 = inttoptr i64 %655 to %struct.sadb_key*
  store %struct.sadb_key* %656, %struct.sadb_key** %13, align 8
  %657 = load i32, i32* %19, align 4
  %658 = sext i32 %657 to i64
  %659 = add i64 48, %658
  %660 = udiv i64 %659, 4
  %661 = trunc i64 %660 to i32
  %662 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %663 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %662, i32 0, i32 0
  store i32 %661, i32* %663, align 8
  %664 = load i32, i32* @SADB_EXT_KEY_AUTH, align 4
  %665 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %666 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %665, i32 0, i32 8
  store i32 %664, i32* %666, align 8
  %667 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %668 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %667, i32 0, i32 2
  %669 = load %struct.TYPE_19__*, %struct.TYPE_19__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 4
  %672 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %673 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %672, i32 0, i32 1
  store i32 %671, i32* %673, align 4
  %674 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %675 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %674, i32 0, i32 7
  store i64 0, i64* %675, align 8
  %676 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %677 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %676, i64 1
  %678 = bitcast %struct.sadb_key* %677 to %struct.sadb_x_sec_ctx*
  %679 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %680 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %679, i32 0, i32 2
  %681 = load %struct.TYPE_19__*, %struct.TYPE_19__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 4
  %684 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %685 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %684, i32 0, i32 2
  %686 = load %struct.TYPE_19__*, %struct.TYPE_19__** %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 4
  %689 = add nsw i32 %688, 7
  %690 = sdiv i32 %689, 8
  %691 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %678, i32 %683, i32 %690)
  br label %692

692:                                              ; preds = %649, %646, %643
  %693 = load i32, i32* %6, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %741

695:                                              ; preds = %692
  %696 = load i32, i32* %20, align 4
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %741

698:                                              ; preds = %695
  %699 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %700 = load i32, i32* %20, align 4
  %701 = sext i32 %700 to i64
  %702 = add i64 48, %701
  %703 = trunc i64 %702 to i32
  %704 = call i64 @skb_put(%struct.sk_buff* %699, i32 %703)
  %705 = inttoptr i64 %704 to %struct.sadb_key*
  store %struct.sadb_key* %705, %struct.sadb_key** %13, align 8
  %706 = load i32, i32* %20, align 4
  %707 = sext i32 %706 to i64
  %708 = add i64 48, %707
  %709 = udiv i64 %708, 4
  %710 = trunc i64 %709 to i32
  %711 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %712 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %711, i32 0, i32 0
  store i32 %710, i32* %712, align 8
  %713 = load i32, i32* @SADB_EXT_KEY_ENCRYPT, align 4
  %714 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %715 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %714, i32 0, i32 8
  store i32 %713, i32* %715, align 8
  %716 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %717 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %716, i32 0, i32 1
  %718 = load %struct.TYPE_20__*, %struct.TYPE_20__** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 4
  %721 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %722 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %721, i32 0, i32 1
  store i32 %720, i32* %722, align 4
  %723 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %724 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %723, i32 0, i32 7
  store i64 0, i64* %724, align 8
  %725 = load %struct.sadb_key*, %struct.sadb_key** %13, align 8
  %726 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %725, i64 1
  %727 = bitcast %struct.sadb_key* %726 to %struct.sadb_x_sec_ctx*
  %728 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %729 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %728, i32 0, i32 1
  %730 = load %struct.TYPE_20__*, %struct.TYPE_20__** %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %730, i32 0, i32 1
  %732 = load i32, i32* %731, align 4
  %733 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %734 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %733, i32 0, i32 1
  %735 = load %struct.TYPE_20__*, %struct.TYPE_20__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %735, i32 0, i32 0
  %737 = load i32, i32* %736, align 4
  %738 = add nsw i32 %737, 7
  %739 = sdiv i32 %738, 8
  %740 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %727, i32 %732, i32 %739)
  br label %741

741:                                              ; preds = %698, %695, %692
  %742 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %743 = call i64 @skb_put(%struct.sk_buff* %742, i32 48)
  %744 = inttoptr i64 %743 to %struct.sadb_x_sa2*
  store %struct.sadb_x_sa2* %744, %struct.sadb_x_sa2** %14, align 8
  %745 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %746 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %745, i32 0, i32 0
  store i32 12, i32* %746, align 8
  %747 = load i32, i32* @SADB_X_EXT_SA2, align 4
  %748 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %749 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %748, i32 0, i32 6
  store i32 %747, i32* %749, align 8
  %750 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %751 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %750, i32 0, i32 0
  %752 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %751, i32 0, i32 2
  %753 = load i32, i32* %752, align 8
  %754 = call i32 @pfkey_mode_from_xfrm(i32 %753)
  store i32 %754, i32* %23, align 4
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %756, label %762

756:                                              ; preds = %741
  %757 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %758 = call i32 @kfree_skb(%struct.sk_buff* %757)
  %759 = load i32, i32* @EINVAL, align 4
  %760 = sub nsw i32 0, %759
  %761 = call %struct.sk_buff* @ERR_PTR(i32 %760)
  store %struct.sk_buff* %761, %struct.sk_buff** %4, align 8
  br label %888

762:                                              ; preds = %741
  %763 = load i32, i32* %23, align 4
  %764 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %765 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %764, i32 0, i32 1
  store i32 %763, i32* %765, align 4
  %766 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %767 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %766, i32 0, i32 5
  store i64 0, i64* %767, align 8
  %768 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %769 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %768, i32 0, i32 4
  store i64 0, i64* %769, align 8
  %770 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %771 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %770, i32 0, i32 3
  store i64 0, i64* %771, align 8
  %772 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %773 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %772, i32 0, i32 0
  %774 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %773, i32 0, i32 1
  %775 = load i32, i32* %774, align 4
  %776 = load %struct.sadb_x_sa2*, %struct.sadb_x_sa2** %14, align 8
  %777 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %776, i32 0, i32 2
  store i32 %775, i32* %777, align 8
  %778 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %779 = icmp ne %struct.xfrm_encap_tmpl* %778, null
  br i1 %779, label %780, label %841

780:                                              ; preds = %762
  %781 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %782 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %781, i32 0, i32 2
  %783 = load i64, i64* %782, align 8
  %784 = icmp ne i64 %783, 0
  br i1 %784, label %785, label %841

785:                                              ; preds = %780
  %786 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %787 = call i64 @skb_put(%struct.sk_buff* %786, i32 32)
  %788 = inttoptr i64 %787 to %struct.sadb_x_nat_t_type*
  store %struct.sadb_x_nat_t_type* %788, %struct.sadb_x_nat_t_type** %27, align 8
  %789 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %790 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %789, i32 0, i32 0
  store i32 8, i32* %790, align 8
  %791 = load i32, i32* @SADB_X_EXT_NAT_T_TYPE, align 4
  %792 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %793 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %792, i32 0, i32 3
  store i32 %791, i32* %793, align 8
  %794 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %795 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %794, i32 0, i32 2
  %796 = load i64, i64* %795, align 8
  %797 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %798 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %797, i32 0, i32 2
  store i64 %796, i64* %798, align 8
  %799 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %800 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %799, i32 0, i32 1
  %801 = load i64*, i64** %800, align 8
  %802 = getelementptr inbounds i64, i64* %801, i64 0
  store i64 0, i64* %802, align 8
  %803 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %804 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %803, i32 0, i32 1
  %805 = load i64*, i64** %804, align 8
  %806 = getelementptr inbounds i64, i64* %805, i64 1
  store i64 0, i64* %806, align 8
  %807 = load %struct.sadb_x_nat_t_type*, %struct.sadb_x_nat_t_type** %27, align 8
  %808 = getelementptr inbounds %struct.sadb_x_nat_t_type, %struct.sadb_x_nat_t_type* %807, i32 0, i32 1
  %809 = load i64*, i64** %808, align 8
  %810 = getelementptr inbounds i64, i64* %809, i64 2
  store i64 0, i64* %810, align 8
  %811 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %812 = call i64 @skb_put(%struct.sk_buff* %811, i32 24)
  %813 = inttoptr i64 %812 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %813, %struct.sadb_x_nat_t_port** %28, align 8
  %814 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %815 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %814, i32 0, i32 0
  store i32 6, i32* %815, align 8
  %816 = load i32, i32* @SADB_X_EXT_NAT_T_SPORT, align 4
  %817 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %818 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %817, i32 0, i32 3
  store i32 %816, i32* %818, align 4
  %819 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %820 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 4
  %822 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %823 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %822, i32 0, i32 2
  store i32 %821, i32* %823, align 8
  %824 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %825 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %824, i32 0, i32 1
  store i64 0, i64* %825, align 8
  %826 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %827 = call i64 @skb_put(%struct.sk_buff* %826, i32 24)
  %828 = inttoptr i64 %827 to %struct.sadb_x_nat_t_port*
  store %struct.sadb_x_nat_t_port* %828, %struct.sadb_x_nat_t_port** %28, align 8
  %829 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %830 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %829, i32 0, i32 0
  store i32 6, i32* %830, align 8
  %831 = load i32, i32* @SADB_X_EXT_NAT_T_DPORT, align 4
  %832 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %833 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %832, i32 0, i32 3
  store i32 %831, i32* %833, align 4
  %834 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %22, align 8
  %835 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 8
  %837 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %838 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %837, i32 0, i32 2
  store i32 %836, i32* %838, align 8
  %839 = load %struct.sadb_x_nat_t_port*, %struct.sadb_x_nat_t_port** %28, align 8
  %840 = getelementptr inbounds %struct.sadb_x_nat_t_port, %struct.sadb_x_nat_t_port* %839, i32 0, i32 1
  store i64 0, i64* %840, align 8
  br label %841

841:                                              ; preds = %785, %780, %762
  %842 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %843 = icmp ne %struct.xfrm_sec_ctx* %842, null
  br i1 %843, label %844, label %886

844:                                              ; preds = %841
  %845 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %846 = load i32, i32* %17, align 4
  %847 = sext i32 %846 to i64
  %848 = add i64 48, %847
  %849 = trunc i64 %848 to i32
  %850 = call i64 @skb_put(%struct.sk_buff* %845, i32 %849)
  %851 = inttoptr i64 %850 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %851, %struct.sadb_x_sec_ctx** %15, align 8
  %852 = load i32, i32* %17, align 4
  %853 = sext i32 %852 to i64
  %854 = add i64 48, %853
  %855 = udiv i64 %854, 4
  %856 = trunc i64 %855 to i32
  %857 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %858 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %857, i32 0, i32 2
  store i32 %856, i32* %858, align 8
  %859 = load i32, i32* @SADB_X_EXT_SEC_CTX, align 4
  %860 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %861 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %860, i32 0, i32 6
  store i32 %859, i32* %861, align 8
  %862 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %863 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %862, i32 0, i32 3
  %864 = load i32, i32* %863, align 4
  %865 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %866 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %865, i32 0, i32 5
  store i32 %864, i32* %866, align 4
  %867 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %868 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %867, i32 0, i32 2
  %869 = load i32, i32* %868, align 4
  %870 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %871 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %870, i32 0, i32 4
  store i32 %869, i32* %871, align 8
  %872 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %873 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 4
  %875 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %876 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %875, i32 0, i32 3
  store i32 %874, i32* %876, align 4
  %877 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %878 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %877, i64 1
  %879 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %880 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %879, i32 0, i32 1
  %881 = load i32, i32* %880, align 4
  %882 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %16, align 8
  %883 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %882, i32 0, i32 0
  %884 = load i32, i32* %883, align 4
  %885 = call i32 @memcpy(%struct.sadb_x_sec_ctx* %878, i32 %881, i32 %884)
  br label %886

886:                                              ; preds = %844, %841
  %887 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %887, %struct.sk_buff** %4, align 8
  br label %888

888:                                              ; preds = %886, %756, %194, %36
  %889 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %889
}

declare dso_local i32 @pfkey_sockaddr_size(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

declare dso_local i64 @xfrm_addr_cmp(i32*, i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_msg*, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byname(i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_calg_get_byname(i32, i32) #1

declare dso_local i8* @_X2KEY(i32) #1

declare dso_local i8* @pfkey_sockaddr_fill(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @pfkey_proto_from_xfrm(i32) #1

declare dso_local i32 @memcpy(%struct.sadb_x_sec_ctx*, i32, i32) #1

declare dso_local i32 @pfkey_mode_from_xfrm(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
