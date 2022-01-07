; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_rateest.c_xt_rateest_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_rateest.c_xt_rateest_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_rateest_match_info* }
%struct.xt_rateest_match_info = type { i32, i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.gnet_stats_rate_est }
%struct.gnet_stats_rate_est = type { i64, i64 }
%struct.TYPE_3__ = type { i32, %struct.gnet_stats_rate_est }

@XT_RATEEST_MATCH_DELTA = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_ABS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_BPS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_PPS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @xt_rateest_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_rateest_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_rateest_match_info*, align 8
  %6 = alloca %struct.gnet_stats_rate_est*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %13, align 8
  store %struct.xt_rateest_match_info* %14, %struct.xt_rateest_match_info** %5, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %16 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %21 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %20, i32 0, i32 5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store %struct.gnet_stats_rate_est* %23, %struct.gnet_stats_rate_est** %6, align 8
  %24 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %25 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XT_RATEEST_MATCH_DELTA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %2
  %31 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %32 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %35 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %40 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %43 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %38
  %48 = phi i64 [ %45, %38 ], [ 0, %46 ]
  store i64 %48, i64* %7, align 8
  %49 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %50 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %53 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %58 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %61 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  br label %65

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %56
  %66 = phi i64 [ %63, %56 ], [ 0, %64 ]
  store i64 %66, i64* %9, align 8
  br label %74

67:                                               ; preds = %2
  %68 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %69 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  %71 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %72 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %67, %65
  %75 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %76 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %75, i32 0, i32 5
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %81 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @XT_RATEEST_MATCH_ABS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %88 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %8, align 8
  %90 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %91 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %10, align 8
  br label %159

93:                                               ; preds = %74
  %94 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %95 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @spin_lock_bh(i32* %97)
  %99 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %100 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store %struct.gnet_stats_rate_est* %102, %struct.gnet_stats_rate_est** %6, align 8
  %103 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %104 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @XT_RATEEST_MATCH_DELTA, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %146

109:                                              ; preds = %93
  %110 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %111 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %114 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %119 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %122 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  br label %126

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125, %117
  %127 = phi i64 [ %124, %117 ], [ 0, %125 ]
  store i64 %127, i64* %8, align 8
  %128 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %129 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %132 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %137 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %140 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  br label %144

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143, %135
  %145 = phi i64 [ %142, %135 ], [ 0, %143 ]
  store i64 %145, i64* %10, align 8
  br label %153

146:                                              ; preds = %93
  %147 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %148 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %8, align 8
  %150 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %6, align 8
  %151 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %146, %144
  %154 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %155 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = call i32 @spin_unlock_bh(i32* %157)
  br label %159

159:                                              ; preds = %153, %86
  %160 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %161 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %250 [
    i32 128, label %163
    i32 129, label %192
    i32 130, label %221
  ]

163:                                              ; preds = %159
  %164 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %165 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = icmp slt i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %11, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %170, %163
  %178 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %179 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp slt i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %184, %177
  br label %250

192:                                              ; preds = %159
  %193 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %194 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* %8, align 8
  %202 = icmp sgt i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %199, %192
  %207 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %208 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* %10, align 8
  %216 = icmp sgt i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %11, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %213, %206
  br label %250

221:                                              ; preds = %159
  %222 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %223 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* %8, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %11, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %11, align 4
  br label %235

235:                                              ; preds = %228, %221
  %236 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %237 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* %10, align 8
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %11, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %11, align 4
  br label %249

249:                                              ; preds = %242, %235
  br label %250

250:                                              ; preds = %159, %249, %220, %191
  %251 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %252 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @XT_RATEEST_MATCH_INVERT, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 1, i32 0
  %259 = load i32, i32* %11, align 4
  %260 = xor i32 %259, %258
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  ret i32 %261
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
