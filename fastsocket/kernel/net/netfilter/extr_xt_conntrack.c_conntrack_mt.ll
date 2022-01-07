; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_conntrack.c_conntrack_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_conntrack.c_conntrack_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32, %struct.xt_conntrack_mtinfo2* }
%struct.xt_conntrack_mtinfo2 = type { i32, i32, i64, i64 }

@nf_conntrack_untracked = common dso_local global %struct.nf_conn zeroinitializer, align 8
@XT_CONNTRACK_STATE_UNTRACKED = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_INVALID = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE = common dso_local global i32 0, align 4
@IPS_SRC_NAT_BIT = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_SNAT = common dso_local global i32 0, align 4
@IPS_DST_NAT_BIT = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_DNAT = common dso_local global i32 0, align 4
@XT_CONNTRACK_DIRECTION = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@XT_CONNTRACK_ORIGSRC = common dso_local global i32 0, align 4
@XT_CONNTRACK_ORIGDST = common dso_local global i32 0, align 4
@XT_CONNTRACK_REPLSRC = common dso_local global i32 0, align 4
@XT_CONNTRACK_REPLDST = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATUS = common dso_local global i32 0, align 4
@XT_CONNTRACK_EXPIRES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*, i32, i32)* @conntrack_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conntrack_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xt_match_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xt_conntrack_mtinfo2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %16 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %15, i32 0, i32 1
  %17 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %16, align 8
  store %struct.xt_conntrack_mtinfo2* %17, %struct.xt_conntrack_mtinfo2** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %18, i32* %11)
  store %struct.nf_conn* %19, %struct.nf_conn** %12, align 8
  %20 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %21 = icmp eq %struct.nf_conn* %20, @nf_conntrack_untracked
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @XT_CONNTRACK_STATE_UNTRACKED, align 4
  store i32 %23, i32* %13, align 4
  br label %33

24:                                               ; preds = %4
  %25 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %26 = icmp ne %struct.nf_conn* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @XT_CONNTRACK_STATE_BIT(i32 %28)
  store i32 %29, i32* %13, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @XT_CONNTRACK_STATE_INVALID, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %35 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XT_CONNTRACK_STATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %33
  %41 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %42 = icmp ne %struct.nf_conn* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* @IPS_SRC_NAT_BIT, align 4
  %45 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %46 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @XT_CONNTRACK_STATE_SNAT, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* @IPS_DST_NAT_BIT, align 4
  %55 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %56 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %55, i32 0, i32 0
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @XT_CONNTRACK_STATE_DNAT, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %73 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XT_CONNTRACK_STATE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = xor i32 %71, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %305

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %33
  %85 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %86 = icmp eq %struct.nf_conn* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %89 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XT_CONNTRACK_STATE, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %5, align 4
  br label %305

93:                                               ; preds = %84
  %94 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %95 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @XT_CONNTRACK_DIRECTION, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %93
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @CTINFO2DIR(i32 %101)
  %103 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %107 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XT_CONNTRACK_DIRECTION, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = xor i32 %105, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %305

118:                                              ; preds = %100, %93
  %119 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %120 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @XT_CONNTRACK_ORIGSRC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %118
  %126 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %127 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %128 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %129 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @conntrack_mt_origsrc(%struct.nf_conn* %126, %struct.xt_conntrack_mtinfo2* %127, i32 %130)
  %132 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %133 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @XT_CONNTRACK_ORIGSRC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = xor i32 %131, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %305

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %118
  %145 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %146 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @XT_CONNTRACK_ORIGDST, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %153 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %154 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %155 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @conntrack_mt_origdst(%struct.nf_conn* %152, %struct.xt_conntrack_mtinfo2* %153, i32 %156)
  %158 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %159 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @XT_CONNTRACK_ORIGDST, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = xor i32 %157, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  store i32 0, i32* %5, align 4
  br label %305

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169, %144
  %171 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %172 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @XT_CONNTRACK_REPLSRC, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %170
  %178 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %179 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %180 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %181 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @conntrack_mt_replsrc(%struct.nf_conn* %178, %struct.xt_conntrack_mtinfo2* %179, i32 %182)
  %184 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %185 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @XT_CONNTRACK_REPLSRC, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = xor i32 %183, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %305

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %195, %170
  %197 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %198 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @XT_CONNTRACK_REPLDST, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %222

203:                                              ; preds = %196
  %204 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %205 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %206 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %207 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @conntrack_mt_repldst(%struct.nf_conn* %204, %struct.xt_conntrack_mtinfo2* %205, i32 %208)
  %210 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %211 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @XT_CONNTRACK_REPLDST, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = xor i32 %209, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %203
  store i32 0, i32* %5, align 4
  br label %305

221:                                              ; preds = %203
  br label %222

222:                                              ; preds = %221, %196
  %223 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %224 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %225 = call i32 @ct_proto_port_check(%struct.xt_conntrack_mtinfo2* %223, %struct.nf_conn* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  store i32 0, i32* %5, align 4
  br label %305

228:                                              ; preds = %222
  %229 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %230 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @XT_CONNTRACK_STATUS, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %228
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %238 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %236, %239
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %246 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @XT_CONNTRACK_STATUS, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = xor i32 %244, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %305

256:                                              ; preds = %235, %228
  %257 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %258 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @XT_CONNTRACK_EXPIRES, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %304

263:                                              ; preds = %256
  store i64 0, i64* %14, align 8
  %264 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %265 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %264, i32 0, i32 1
  %266 = call i64 @timer_pending(%struct.TYPE_2__* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %270 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @jiffies, align 8
  %274 = sub i64 %272, %273
  %275 = load i64, i64* @HZ, align 8
  %276 = udiv i64 %274, %275
  store i64 %276, i64* %14, align 8
  br label %277

277:                                              ; preds = %268, %263
  %278 = load i64, i64* %14, align 8
  %279 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %280 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp uge i64 %278, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load i64, i64* %14, align 8
  %285 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %286 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ule i64 %284, %287
  br label %289

289:                                              ; preds = %283, %277
  %290 = phi i1 [ false, %277 ], [ %288, %283 ]
  %291 = zext i1 %290 to i32
  %292 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %293 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @XT_CONNTRACK_EXPIRES, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = xor i32 %291, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %289
  store i32 0, i32* %5, align 4
  br label %305

303:                                              ; preds = %289
  br label %304

304:                                              ; preds = %303, %256
  store i32 1, i32* %5, align 4
  br label %305

305:                                              ; preds = %304, %302, %255, %227, %220, %194, %168, %142, %117, %87, %82
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @XT_CONNTRACK_STATE_BIT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @conntrack_mt_origsrc(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @conntrack_mt_origdst(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @conntrack_mt_replsrc(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @conntrack_mt_repldst(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @ct_proto_port_check(%struct.xt_conntrack_mtinfo2*, %struct.nf_conn*) #1

declare dso_local i64 @timer_pending(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
