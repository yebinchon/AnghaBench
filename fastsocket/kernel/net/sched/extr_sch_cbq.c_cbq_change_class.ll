; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_change_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_change_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.cbq_sched_data = type { i32, i32, %struct.cbq_class }
%struct.cbq_class = type { i32, i32, i64, i64, i64, i32, %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class*, %struct.qdisc_rate_table*, i32, i32, i32, %struct.Qdisc*, %struct.TYPE_7__, %struct.TYPE_9__*, i32, i32, i32* }
%struct.qdisc_rate_table = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_CBQ_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cbq_policy = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_CBQ_RATE = common dso_local global i64 0, align 8
@TCA_CBQ_RTAB = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@TCA_CBQ_LSSOPT = common dso_local global i64 0, align 8
@TCA_CBQ_WRROPT = common dso_local global i64 0, align 8
@TCA_CBQ_OVL_STRATEGY = common dso_local global i64 0, align 8
@TCA_CBQ_FOPT = common dso_local global i64 0, align 8
@ENOSR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@cbq_ovl_classic = common dso_local global i32 0, align 4
@TCA_CBQ_POLICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*)* @cbq_change_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_change_class(%struct.Qdisc* %0, i32 %1, i32 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cbq_sched_data*, align 8
  %14 = alloca %struct.cbq_class*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.cbq_class*, align 8
  %19 = alloca %struct.qdisc_rate_table*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %23 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %22)
  store %struct.cbq_sched_data* %23, %struct.cbq_sched_data** %13, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.cbq_class*
  store %struct.cbq_class* %26, %struct.cbq_class** %14, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %28 = load i64, i64* @TCA_OPTIONS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  store %struct.nlattr* %30, %struct.nlattr** %15, align 8
  %31 = load i32, i32* @TCA_CBQ_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %16, align 8
  %35 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %19, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %37 = icmp eq %struct.nlattr* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

41:                                               ; preds = %5
  %42 = load i32, i32* @TCA_CBQ_MAX, align 4
  %43 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %44 = load i32, i32* @cbq_policy, align 4
  %45 = call i32 @nla_parse_nested(%struct.nlattr** %35, i32 %42, %struct.nlattr* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

50:                                               ; preds = %41
  %51 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %52 = icmp ne %struct.cbq_class* %51, null
  br i1 %52, label %53, label %221

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %53
  %57 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %58 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %57, i32 0, i32 6
  %59 = load %struct.cbq_class*, %struct.cbq_class** %58, align 8
  %60 = icmp ne %struct.cbq_class* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %63 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %62, i32 0, i32 6
  %64 = load %struct.cbq_class*, %struct.cbq_class** %63, align 8
  %65 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %64, i32 0, i32 14
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

73:                                               ; preds = %61, %56
  %74 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %75 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %74, i32 0, i32 6
  %76 = load %struct.cbq_class*, %struct.cbq_class** %75, align 8
  %77 = icmp ne %struct.cbq_class* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @TC_H_ROOT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85, %53
  %87 = load i64, i64* @TCA_CBQ_RATE, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i64, i64* @TCA_CBQ_RATE, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @nla_data(%struct.nlattr* %94)
  %96 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call %struct.qdisc_rate_table* @qdisc_get_rtab(i32 %95, %struct.nlattr* %98)
  store %struct.qdisc_rate_table* %99, %struct.qdisc_rate_table** %19, align 8
  %100 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %101 = icmp eq %struct.qdisc_rate_table* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %108 = load i64, i64* @TCA_RATE, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %107, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp ne %struct.nlattr* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %114 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %113, i32 0, i32 17
  %115 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %116 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %115, i32 0, i32 16
  %117 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %118 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %117)
  %119 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %120 = load i64, i64* @TCA_RATE, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i32 @gen_replace_estimator(i32* %114, i32* %116, i32 %118, %struct.nlattr* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %112
  %127 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %128 = icmp ne %struct.qdisc_rate_table* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %131 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134, %106
  %136 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %137 = call i32 @sch_tree_lock(%struct.Qdisc* %136)
  %138 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %139 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %138, i32 0, i32 18
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %144 = call i32 @cbq_deactivate_class(%struct.cbq_class* %143)
  br label %145

145:                                              ; preds = %142, %135
  %146 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %147 = icmp ne %struct.qdisc_rate_table* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %150 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %149, i32 0, i32 9
  %151 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %150, align 8
  %152 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %151)
  %153 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %154 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %155 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %154, i32 0, i32 9
  store %struct.qdisc_rate_table* %153, %struct.qdisc_rate_table** %155, align 8
  br label %156

156:                                              ; preds = %148, %145
  %157 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %158 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %157
  %159 = load %struct.nlattr*, %struct.nlattr** %158, align 8
  %160 = icmp ne %struct.nlattr* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %163 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = call i32 @nla_data(%struct.nlattr* %165)
  %167 = call i32 @cbq_set_lss(%struct.cbq_class* %162, i32 %166)
  br label %168

168:                                              ; preds = %161, %156
  %169 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %170 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %169
  %171 = load %struct.nlattr*, %struct.nlattr** %170, align 8
  %172 = icmp ne %struct.nlattr* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %175 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %176 = call i32 @cbq_rmprio(%struct.cbq_sched_data* %174, %struct.cbq_class* %175)
  %177 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %178 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %179 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %178
  %180 = load %struct.nlattr*, %struct.nlattr** %179, align 8
  %181 = call i32 @nla_data(%struct.nlattr* %180)
  %182 = call i32 @cbq_set_wrr(%struct.cbq_class* %177, i32 %181)
  br label %183

183:                                              ; preds = %173, %168
  %184 = load i64, i64* @TCA_CBQ_OVL_STRATEGY, align 8
  %185 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %184
  %186 = load %struct.nlattr*, %struct.nlattr** %185, align 8
  %187 = icmp ne %struct.nlattr* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %190 = load i64, i64* @TCA_CBQ_OVL_STRATEGY, align 8
  %191 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %190
  %192 = load %struct.nlattr*, %struct.nlattr** %191, align 8
  %193 = call i32 @nla_data(%struct.nlattr* %192)
  %194 = call i32 @cbq_set_overlimit(%struct.cbq_class* %189, i32 %193)
  br label %195

195:                                              ; preds = %188, %183
  %196 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %197 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %196
  %198 = load %struct.nlattr*, %struct.nlattr** %197, align 8
  %199 = icmp ne %struct.nlattr* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %202 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %203 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %202
  %204 = load %struct.nlattr*, %struct.nlattr** %203, align 8
  %205 = call i32 @nla_data(%struct.nlattr* %204)
  %206 = call i32 @cbq_set_fopt(%struct.cbq_class* %201, i32 %205)
  br label %207

207:                                              ; preds = %200, %195
  %208 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %209 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %208, i32 0, i32 15
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %217 = call i32 @cbq_activate_class(%struct.cbq_class* %216)
  br label %218

218:                                              ; preds = %215, %207
  %219 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %220 = call i32 @sch_tree_unlock(%struct.Qdisc* %219)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

221:                                              ; preds = %50
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @TC_H_ROOT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

228:                                              ; preds = %221
  %229 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %230 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %229
  %231 = load %struct.nlattr*, %struct.nlattr** %230, align 8
  %232 = icmp eq %struct.nlattr* %231, null
  br i1 %232, label %243, label %233

233:                                              ; preds = %228
  %234 = load i64, i64* @TCA_CBQ_RATE, align 8
  %235 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %234
  %236 = load %struct.nlattr*, %struct.nlattr** %235, align 8
  %237 = icmp eq %struct.nlattr* %236, null
  br i1 %237, label %243, label %238

238:                                              ; preds = %233
  %239 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %240 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %239
  %241 = load %struct.nlattr*, %struct.nlattr** %240, align 8
  %242 = icmp eq %struct.nlattr* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %238, %233, %228
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

246:                                              ; preds = %238
  %247 = load i64, i64* @TCA_CBQ_RATE, align 8
  %248 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %247
  %249 = load %struct.nlattr*, %struct.nlattr** %248, align 8
  %250 = call i32 @nla_data(%struct.nlattr* %249)
  %251 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %252 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %251
  %253 = load %struct.nlattr*, %struct.nlattr** %252, align 8
  %254 = call %struct.qdisc_rate_table* @qdisc_get_rtab(i32 %250, %struct.nlattr* %253)
  store %struct.qdisc_rate_table* %254, %struct.qdisc_rate_table** %19, align 8
  %255 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %256 = icmp eq %struct.qdisc_rate_table* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %246
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

260:                                              ; preds = %246
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %280

263:                                              ; preds = %260
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %268 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = xor i32 %266, %269
  %271 = call i64 @TC_H_MAJ(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %263
  %274 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %275 = load i32, i32* %8, align 4
  %276 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %274, i32 %275)
  %277 = icmp ne %struct.cbq_class* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %273, %263
  br label %528

279:                                              ; preds = %273
  br label %323

280:                                              ; preds = %260
  %281 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %282 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @TC_H_MAKE(i32 %283, i32 32768)
  store i32 %284, i32* %8, align 4
  store i32 0, i32* %21, align 4
  br label %285

285:                                              ; preds = %308, %280
  %286 = load i32, i32* %21, align 4
  %287 = icmp slt i32 %286, 32768
  br i1 %287, label %288, label %311

288:                                              ; preds = %285
  %289 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %290 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 8
  %293 = icmp sge i32 %292, 32768
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %296 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %295, i32 0, i32 0
  store i32 1, i32* %296, align 8
  br label %297

297:                                              ; preds = %294, %288
  %298 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %301 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %299, %302
  %304 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %298, i32 %303)
  %305 = icmp eq %struct.cbq_class* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %297
  br label %311

307:                                              ; preds = %297
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %21, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %21, align 4
  br label %285

311:                                              ; preds = %306, %285
  %312 = load i32, i32* @ENOSR, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %12, align 4
  %314 = load i32, i32* %21, align 4
  %315 = icmp sge i32 %314, 32768
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  br label %528

317:                                              ; preds = %311
  %318 = load i32, i32* %8, align 4
  %319 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %320 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %318, %321
  store i32 %322, i32* %8, align 4
  br label %323

323:                                              ; preds = %317, %279
  %324 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %325 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %324, i32 0, i32 2
  store %struct.cbq_class* %325, %struct.cbq_class** %18, align 8
  %326 = load i32, i32* %9, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %323
  %329 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %330 = load i32, i32* %9, align 4
  %331 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %329, i32 %330)
  store %struct.cbq_class* %331, %struct.cbq_class** %18, align 8
  %332 = load i32, i32* @EINVAL, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %12, align 4
  %334 = load %struct.cbq_class*, %struct.cbq_class** %18, align 8
  %335 = icmp eq %struct.cbq_class* %334, null
  br i1 %335, label %336, label %337

336:                                              ; preds = %328
  br label %528

337:                                              ; preds = %328
  br label %338

338:                                              ; preds = %337, %323
  %339 = load i32, i32* @ENOBUFS, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %12, align 4
  %341 = load i32, i32* @GFP_KERNEL, align 4
  %342 = call %struct.cbq_class* @kzalloc(i32 128, i32 %341)
  store %struct.cbq_class* %342, %struct.cbq_class** %14, align 8
  %343 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %344 = icmp eq %struct.cbq_class* %343, null
  br i1 %344, label %345, label %346

345:                                              ; preds = %338
  br label %528

346:                                              ; preds = %338
  %347 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %348 = load i64, i64* @TCA_RATE, align 8
  %349 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %347, i64 %348
  %350 = load %struct.nlattr*, %struct.nlattr** %349, align 8
  %351 = icmp ne %struct.nlattr* %350, null
  br i1 %351, label %352, label %370

352:                                              ; preds = %346
  %353 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %354 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %353, i32 0, i32 17
  %355 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %356 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %355, i32 0, i32 16
  %357 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %358 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %357)
  %359 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %360 = load i64, i64* @TCA_RATE, align 8
  %361 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %359, i64 %360
  %362 = load %struct.nlattr*, %struct.nlattr** %361, align 8
  %363 = call i32 @gen_new_estimator(i32* %354, i32* %356, i32 %358, %struct.nlattr* %362)
  store i32 %363, i32* %12, align 4
  %364 = load i32, i32* %12, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %352
  %367 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %368 = call i32 @kfree(%struct.cbq_class* %367)
  br label %528

369:                                              ; preds = %352
  br label %370

370:                                              ; preds = %369, %346
  %371 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %372 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %373 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %372, i32 0, i32 9
  store %struct.qdisc_rate_table* %371, %struct.qdisc_rate_table** %373, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %19, align 8
  %374 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %375 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %374, i32 0, i32 0
  store i32 1, i32* %375, align 8
  %376 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %377 = call i32 @qdisc_dev(%struct.Qdisc* %376)
  %378 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %379 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %8, align 4
  %382 = call %struct.TYPE_9__* @qdisc_create_dflt(i32 %377, i32 %380, i32* @pfifo_qdisc_ops, i32 %381)
  %383 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %384 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %383, i32 0, i32 15
  store %struct.TYPE_9__* %382, %struct.TYPE_9__** %384, align 8
  %385 = icmp ne %struct.TYPE_9__* %382, null
  br i1 %385, label %389, label %386

386:                                              ; preds = %370
  %387 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %388 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %387, i32 0, i32 15
  store %struct.TYPE_9__* @noop_qdisc, %struct.TYPE_9__** %388, align 8
  br label %389

389:                                              ; preds = %386, %370
  %390 = load i32, i32* %8, align 4
  %391 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %392 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %391, i32 0, i32 14
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  store i32 %390, i32* %393, align 8
  %394 = load %struct.cbq_class*, %struct.cbq_class** %18, align 8
  %395 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %396 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %395, i32 0, i32 6
  store %struct.cbq_class* %394, %struct.cbq_class** %396, align 8
  %397 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %398 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %399 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %398, i32 0, i32 13
  store %struct.Qdisc* %397, %struct.Qdisc** %399, align 8
  %400 = load %struct.cbq_class*, %struct.cbq_class** %18, align 8
  %401 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %400, i32 0, i32 11
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %404 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %403, i32 0, i32 11
  store i32 %402, i32* %404, align 4
  %405 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %406 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %405, i32 0, i32 11
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %409 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %408, i32 0, i32 12
  store i32 %407, i32* %409, align 8
  %410 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %411 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %410, i32 0, i32 9
  %412 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %411, align 8
  %413 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %417 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %416, i32 0, i32 10
  store i32 %415, i32* %417, align 8
  %418 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %419 = call i32 @sch_tree_lock(%struct.Qdisc* %418)
  %420 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %421 = call i32 @cbq_link_class(%struct.cbq_class* %420)
  %422 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %423 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %422, i32 0, i32 6
  %424 = load %struct.cbq_class*, %struct.cbq_class** %423, align 8
  %425 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %426 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %425, i32 0, i32 8
  store %struct.cbq_class* %424, %struct.cbq_class** %426, align 8
  %427 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %428 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %427, i32 0, i32 6
  %429 = load %struct.cbq_class*, %struct.cbq_class** %428, align 8
  %430 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %431 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %430, i32 0, i32 2
  %432 = icmp ne %struct.cbq_class* %429, %431
  br i1 %432, label %433, label %439

433:                                              ; preds = %389
  %434 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %435 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %434, i32 0, i32 6
  %436 = load %struct.cbq_class*, %struct.cbq_class** %435, align 8
  %437 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %438 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %437, i32 0, i32 7
  store %struct.cbq_class* %436, %struct.cbq_class** %438, align 8
  br label %439

439:                                              ; preds = %433, %389
  %440 = load %struct.cbq_class*, %struct.cbq_class** %18, align 8
  %441 = call i32 @cbq_adjust_levels(%struct.cbq_class* %440)
  %442 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %443 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %442, i32 0, i32 1
  store i32 -2147483647, i32* %443, align 4
  %444 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %445 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %446 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %445
  %447 = load %struct.nlattr*, %struct.nlattr** %446, align 8
  %448 = call i32 @nla_data(%struct.nlattr* %447)
  %449 = call i32 @cbq_set_lss(%struct.cbq_class* %444, i32 %448)
  %450 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %451 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %452 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %451
  %453 = load %struct.nlattr*, %struct.nlattr** %452, align 8
  %454 = call i32 @nla_data(%struct.nlattr* %453)
  %455 = call i32 @cbq_set_wrr(%struct.cbq_class* %450, i32 %454)
  %456 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %457 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %467

460:                                              ; preds = %439
  %461 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %462 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %462, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %466 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %465, i32 0, i32 2
  store i64 %464, i64* %466, align 8
  br label %467

467:                                              ; preds = %460, %439
  %468 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %469 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %468, i32 0, i32 3
  %470 = load i64, i64* %469, align 8
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %479

472:                                              ; preds = %467
  %473 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %474 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %478 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %477, i32 0, i32 3
  store i64 %476, i64* %478, align 8
  br label %479

479:                                              ; preds = %472, %467
  %480 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %481 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %480, i32 0, i32 4
  %482 = load i64, i64* %481, align 8
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %491

484:                                              ; preds = %479
  %485 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %486 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %490 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %489, i32 0, i32 4
  store i64 %488, i64* %490, align 8
  br label %491

491:                                              ; preds = %484, %479
  %492 = load i32, i32* @cbq_ovl_classic, align 4
  %493 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %494 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %493, i32 0, i32 5
  store i32 %492, i32* %494, align 8
  %495 = load i64, i64* @TCA_CBQ_OVL_STRATEGY, align 8
  %496 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %495
  %497 = load %struct.nlattr*, %struct.nlattr** %496, align 8
  %498 = icmp ne %struct.nlattr* %497, null
  br i1 %498, label %499, label %506

499:                                              ; preds = %491
  %500 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %501 = load i64, i64* @TCA_CBQ_OVL_STRATEGY, align 8
  %502 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %501
  %503 = load %struct.nlattr*, %struct.nlattr** %502, align 8
  %504 = call i32 @nla_data(%struct.nlattr* %503)
  %505 = call i32 @cbq_set_overlimit(%struct.cbq_class* %500, i32 %504)
  br label %506

506:                                              ; preds = %499, %491
  %507 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %508 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %507
  %509 = load %struct.nlattr*, %struct.nlattr** %508, align 8
  %510 = icmp ne %struct.nlattr* %509, null
  br i1 %510, label %511, label %518

511:                                              ; preds = %506
  %512 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %513 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %514 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %513
  %515 = load %struct.nlattr*, %struct.nlattr** %514, align 8
  %516 = call i32 @nla_data(%struct.nlattr* %515)
  %517 = call i32 @cbq_set_fopt(%struct.cbq_class* %512, i32 %516)
  br label %518

518:                                              ; preds = %511, %506
  %519 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %520 = call i32 @sch_tree_unlock(%struct.Qdisc* %519)
  %521 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %522 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %13, align 8
  %523 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %522, i32 0, i32 1
  %524 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %521, i32* %523)
  %525 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  %526 = ptrtoint %struct.cbq_class* %525 to i64
  %527 = load i64*, i64** %11, align 8
  store i64 %526, i64* %527, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

528:                                              ; preds = %366, %345, %336, %316, %278
  %529 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %530 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %529)
  %531 = load i32, i32* %12, align 4
  store i32 %531, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %532

532:                                              ; preds = %528, %518, %257, %243, %225, %218, %132, %102, %82, %70, %48, %38
  %533 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %533)
  %534 = load i32, i32* %6, align 4
  ret i32 %534
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(i32, %struct.nlattr*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put_rtab(%struct.qdisc_rate_table*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @cbq_deactivate_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_set_lss(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_rmprio(%struct.cbq_sched_data*, %struct.cbq_class*) #1

declare dso_local i32 @cbq_set_wrr(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_set_overlimit(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_set_fopt(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_activate_class(%struct.cbq_class*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local %struct.cbq_class* @kzalloc(i32, i32) #1

declare dso_local i32 @gen_new_estimator(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @kfree(%struct.cbq_class*) #1

declare dso_local %struct.TYPE_9__* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @cbq_link_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_adjust_levels(%struct.cbq_class*) #1

declare dso_local i32 @qdisc_class_hash_grow(%struct.Qdisc*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
