; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_change_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_change_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.Qdisc = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.hfsc_sched = type { i32, %struct.hfsc_class }
%struct.hfsc_class = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__*, %struct.hfsc_class*, %struct.hfsc_sched*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.tc_service_curve = type { i64, i64 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_HFSC_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hfsc_policy = common dso_local global i32 0, align 4
@TCA_HFSC_RSC = common dso_local global i64 0, align 8
@TCA_HFSC_FSC = common dso_local global i64 0, align 8
@TCA_HFSC_USC = common dso_local global i64 0, align 8
@TC_H_ROOT = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@HFSC_RSC = common dso_local global i32 0, align 4
@HFSC_FSC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@RB_ROOT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, i64, %struct.nlattr**, i64*)* @hfsc_change_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_change_class(%struct.Qdisc* %0, i64 %1, i64 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.hfsc_sched*, align 8
  %13 = alloca %struct.hfsc_class*, align 8
  %14 = alloca %struct.hfsc_class*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.tc_service_curve*, align 8
  %19 = alloca %struct.tc_service_curve*, align 8
  %20 = alloca %struct.tc_service_curve*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %25 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %24)
  store %struct.hfsc_sched* %25, %struct.hfsc_sched** %12, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.hfsc_class*
  store %struct.hfsc_class* %28, %struct.hfsc_class** %13, align 8
  store %struct.hfsc_class* null, %struct.hfsc_class** %14, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %30 = load i64, i64* @TCA_OPTIONS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  store %struct.nlattr* %32, %struct.nlattr** %15, align 8
  %33 = load i32, i32* @TCA_HFSC_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %16, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %17, align 8
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %18, align 8
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %19, align 8
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %20, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

43:                                               ; preds = %5
  %44 = load i32, i32* @TCA_HFSC_MAX, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %46 = load i32, i32* @hfsc_policy, align 4
  %47 = call i32 @nla_parse_nested(%struct.nlattr** %37, i32 %44, %struct.nlattr* %45, i32 %46)
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %22, align 4
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

52:                                               ; preds = %43
  %53 = load i64, i64* @TCA_HFSC_RSC, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i64, i64* @TCA_HFSC_RSC, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call %struct.tc_service_curve* @nla_data(%struct.nlattr* %60)
  store %struct.tc_service_curve* %61, %struct.tc_service_curve** %18, align 8
  %62 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %63 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %68 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %18, align 8
  br label %72

72:                                               ; preds = %71, %66, %57
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i64, i64* @TCA_HFSC_FSC, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i64, i64* @TCA_HFSC_FSC, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call %struct.tc_service_curve* @nla_data(%struct.nlattr* %81)
  store %struct.tc_service_curve* %82, %struct.tc_service_curve** %19, align 8
  %83 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %84 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %89 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %19, align 8
  br label %93

93:                                               ; preds = %92, %87, %78
  br label %94

94:                                               ; preds = %93, %73
  %95 = load i64, i64* @TCA_HFSC_USC, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load i64, i64* @TCA_HFSC_USC, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = call %struct.tc_service_curve* @nla_data(%struct.nlattr* %102)
  store %struct.tc_service_curve* %103, %struct.tc_service_curve** %20, align 8
  %104 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %105 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %110 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %20, align 8
  br label %114

114:                                              ; preds = %113, %108, %99
  br label %115

115:                                              ; preds = %114, %94
  %116 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %117 = icmp ne %struct.hfsc_class* %116, null
  br i1 %117, label %118, label %237

118:                                              ; preds = %115
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %123 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %122, i32 0, i32 11
  %124 = load %struct.hfsc_class*, %struct.hfsc_class** %123, align 8
  %125 = icmp ne %struct.hfsc_class* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %128 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %127, i32 0, i32 11
  %129 = load %struct.hfsc_class*, %struct.hfsc_class** %128, align 8
  %130 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

138:                                              ; preds = %126, %121
  %139 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %140 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %139, i32 0, i32 11
  %141 = load %struct.hfsc_class*, %struct.hfsc_class** %140, align 8
  %142 = icmp eq %struct.hfsc_class* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* @TC_H_ROOT, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

150:                                              ; preds = %143, %138
  br label %151

151:                                              ; preds = %150, %118
  %152 = call i32 (...) @psched_get_time()
  store i32 %152, i32* %21, align 4
  %153 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %154 = load i64, i64* @TCA_RATE, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %175

158:                                              ; preds = %151
  %159 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %160 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %159, i32 0, i32 14
  %161 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %162 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %161, i32 0, i32 13
  %163 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %164 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %163)
  %165 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %166 = load i64, i64* @TCA_RATE, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i32 @gen_replace_estimator(i32* %160, i32* %162, i32 %164, %struct.nlattr* %168)
  store i32 %169, i32* %22, align 4
  %170 = load i32, i32* %22, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %158
  %173 = load i32, i32* %22, align 4
  store i32 %173, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174, %151
  %176 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %177 = call i32 @sch_tree_lock(%struct.Qdisc* %176)
  %178 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %179 = icmp ne %struct.tc_service_curve* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %182 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @hfsc_change_rsc(%struct.hfsc_class* %181, %struct.tc_service_curve* %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %187 = icmp ne %struct.tc_service_curve* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %190 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %191 = call i32 @hfsc_change_fsc(%struct.hfsc_class* %189, %struct.tc_service_curve* %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %194 = icmp ne %struct.tc_service_curve* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %197 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %198 = load i32, i32* %21, align 4
  %199 = call i32 @hfsc_change_usc(%struct.hfsc_class* %196, %struct.tc_service_curve* %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %192
  %201 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %202 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %201, i32 0, i32 10
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %234

208:                                              ; preds = %200
  %209 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %210 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @HFSC_RSC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %217 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %218 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %217, i32 0, i32 10
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = call i32 @qdisc_peek_len(%struct.TYPE_7__* %219)
  %221 = call i32 @update_ed(%struct.hfsc_class* %216, i32 %220)
  br label %222

222:                                              ; preds = %215, %208
  %223 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %224 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @HFSC_FSC, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %231 = load i32, i32* %21, align 4
  %232 = call i32 @update_vf(%struct.hfsc_class* %230, i32 0, i32 %231)
  br label %233

233:                                              ; preds = %229, %222
  br label %234

234:                                              ; preds = %233, %200
  %235 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %236 = call i32 @sch_tree_unlock(%struct.Qdisc* %235)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

237:                                              ; preds = %115
  %238 = load i64, i64* %9, align 8
  %239 = load i64, i64* @TC_H_ROOT, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* @EEXIST, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

244:                                              ; preds = %237
  %245 = load %struct.hfsc_sched*, %struct.hfsc_sched** %12, align 8
  %246 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %245, i32 0, i32 1
  store %struct.hfsc_class* %246, %struct.hfsc_class** %14, align 8
  %247 = load i64, i64* %9, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = load i64, i64* %9, align 8
  %251 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %252 = call %struct.hfsc_class* @hfsc_find_class(i64 %250, %struct.Qdisc* %251)
  store %struct.hfsc_class* %252, %struct.hfsc_class** %14, align 8
  %253 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %254 = icmp eq %struct.hfsc_class* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load i32, i32* @ENOENT, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

258:                                              ; preds = %249
  br label %259

259:                                              ; preds = %258, %244
  %260 = load i64, i64* %8, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %259
  %263 = load i64, i64* %8, align 8
  %264 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %265 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = xor i64 %263, %266
  %268 = call i64 @TC_H_MAJ(i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %262, %259
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

273:                                              ; preds = %262
  %274 = load i64, i64* %8, align 8
  %275 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %276 = call %struct.hfsc_class* @hfsc_find_class(i64 %274, %struct.Qdisc* %275)
  %277 = icmp ne %struct.hfsc_class* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load i32, i32* @EEXIST, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

281:                                              ; preds = %273
  %282 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %283 = icmp eq %struct.tc_service_curve* %282, null
  br i1 %283, label %284, label %290

284:                                              ; preds = %281
  %285 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %286 = icmp eq %struct.tc_service_curve* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

290:                                              ; preds = %284, %281
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = call %struct.hfsc_class* @kzalloc(i32 88, i32 %291)
  store %struct.hfsc_class* %292, %struct.hfsc_class** %13, align 8
  %293 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %294 = icmp eq %struct.hfsc_class* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load i32, i32* @ENOBUFS, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

298:                                              ; preds = %290
  %299 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %300 = load i64, i64* @TCA_RATE, align 8
  %301 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %299, i64 %300
  %302 = load %struct.nlattr*, %struct.nlattr** %301, align 8
  %303 = icmp ne %struct.nlattr* %302, null
  br i1 %303, label %304, label %323

304:                                              ; preds = %298
  %305 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %306 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %305, i32 0, i32 14
  %307 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %308 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %307, i32 0, i32 13
  %309 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %310 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %309)
  %311 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %312 = load i64, i64* @TCA_RATE, align 8
  %313 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %311, i64 %312
  %314 = load %struct.nlattr*, %struct.nlattr** %313, align 8
  %315 = call i32 @gen_new_estimator(i32* %306, i32* %308, i32 %310, %struct.nlattr* %314)
  store i32 %315, i32* %22, align 4
  %316 = load i32, i32* %22, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %304
  %319 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %320 = call i32 @kfree(%struct.hfsc_class* %319)
  %321 = load i32, i32* %22, align 4
  store i32 %321, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

322:                                              ; preds = %304
  br label %323

323:                                              ; preds = %322, %298
  %324 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %325 = icmp ne %struct.tc_service_curve* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %328 = load %struct.tc_service_curve*, %struct.tc_service_curve** %18, align 8
  %329 = call i32 @hfsc_change_rsc(%struct.hfsc_class* %327, %struct.tc_service_curve* %328, i32 0)
  br label %330

330:                                              ; preds = %326, %323
  %331 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %332 = icmp ne %struct.tc_service_curve* %331, null
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %335 = load %struct.tc_service_curve*, %struct.tc_service_curve** %19, align 8
  %336 = call i32 @hfsc_change_fsc(%struct.hfsc_class* %334, %struct.tc_service_curve* %335)
  br label %337

337:                                              ; preds = %333, %330
  %338 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %339 = icmp ne %struct.tc_service_curve* %338, null
  br i1 %339, label %340, label %344

340:                                              ; preds = %337
  %341 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %342 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %343 = call i32 @hfsc_change_usc(%struct.hfsc_class* %341, %struct.tc_service_curve* %342, i32 0)
  br label %344

344:                                              ; preds = %340, %337
  %345 = load i64, i64* %8, align 8
  %346 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %347 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %346, i32 0, i32 7
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  store i64 %345, i64* %348, align 8
  %349 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %350 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %349, i32 0, i32 1
  store i32 1, i32* %350, align 4
  %351 = load %struct.hfsc_sched*, %struct.hfsc_sched** %12, align 8
  %352 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %353 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %352, i32 0, i32 12
  store %struct.hfsc_sched* %351, %struct.hfsc_sched** %353, align 8
  %354 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %355 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %356 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %355, i32 0, i32 11
  store %struct.hfsc_class* %354, %struct.hfsc_class** %356, align 8
  %357 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %358 = call i32 @qdisc_dev(%struct.Qdisc* %357)
  %359 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %360 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load i64, i64* %8, align 8
  %363 = call %struct.TYPE_7__* @qdisc_create_dflt(i32 %358, i32 %361, i32* @pfifo_qdisc_ops, i64 %362)
  %364 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %365 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %364, i32 0, i32 10
  store %struct.TYPE_7__* %363, %struct.TYPE_7__** %365, align 8
  %366 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %367 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %366, i32 0, i32 10
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %367, align 8
  %369 = icmp eq %struct.TYPE_7__* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %344
  %371 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %372 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %371, i32 0, i32 10
  store %struct.TYPE_7__* @noop_qdisc, %struct.TYPE_7__** %372, align 8
  br label %373

373:                                              ; preds = %370, %344
  %374 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %375 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %374, i32 0, i32 5
  %376 = call i32 @INIT_LIST_HEAD(i32* %375)
  %377 = load i8*, i8** @RB_ROOT, align 8
  %378 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %379 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %378, i32 0, i32 9
  store i8* %377, i8** %379, align 8
  %380 = load i8*, i8** @RB_ROOT, align 8
  %381 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %382 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %381, i32 0, i32 8
  store i8* %380, i8** %382, align 8
  %383 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %384 = call i32 @sch_tree_lock(%struct.Qdisc* %383)
  %385 = load %struct.hfsc_sched*, %struct.hfsc_sched** %12, align 8
  %386 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %385, i32 0, i32 0
  %387 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %388 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %387, i32 0, i32 7
  %389 = call i32 @qdisc_class_hash_insert(i32* %386, %struct.TYPE_8__* %388)
  %390 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %391 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %390, i32 0, i32 6
  %392 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %393 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %392, i32 0, i32 5
  %394 = call i32 @list_add_tail(i32* %391, i32* %393)
  %395 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %396 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %373
  %400 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %401 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %402 = call i32 @hfsc_purge_queue(%struct.Qdisc* %400, %struct.hfsc_class* %401)
  br label %403

403:                                              ; preds = %399, %373
  %404 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %405 = call i32 @hfsc_adjust_levels(%struct.hfsc_class* %404)
  %406 = load %struct.hfsc_class*, %struct.hfsc_class** %14, align 8
  %407 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %410 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %409, i32 0, i32 4
  store i32 %408, i32* %410, align 4
  %411 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %412 = call i32 @sch_tree_unlock(%struct.Qdisc* %411)
  %413 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %414 = load %struct.hfsc_sched*, %struct.hfsc_sched** %12, align 8
  %415 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %414, i32 0, i32 0
  %416 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %413, i32* %415)
  %417 = load %struct.hfsc_class*, %struct.hfsc_class** %13, align 8
  %418 = ptrtoint %struct.hfsc_class* %417 to i64
  %419 = load i64*, i64** %11, align 8
  store i64 %418, i64* %419, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %420

420:                                              ; preds = %403, %318, %295, %287, %278, %270, %255, %241, %234, %172, %147, %135, %50, %40
  %421 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %421)
  %422 = load i32, i32* %6, align 4
  ret i32 %422
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local %struct.tc_service_curve* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @hfsc_change_rsc(%struct.hfsc_class*, %struct.tc_service_curve*, i32) #1

declare dso_local i32 @hfsc_change_fsc(%struct.hfsc_class*, %struct.tc_service_curve*) #1

declare dso_local i32 @hfsc_change_usc(%struct.hfsc_class*, %struct.tc_service_curve*, i32) #1

declare dso_local i32 @update_ed(%struct.hfsc_class*, i32) #1

declare dso_local i32 @qdisc_peek_len(%struct.TYPE_7__*) #1

declare dso_local i32 @update_vf(%struct.hfsc_class*, i32, i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local %struct.hfsc_class* @hfsc_find_class(i64, %struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.hfsc_class* @kzalloc(i32, i32) #1

declare dso_local i32 @gen_new_estimator(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @kfree(%struct.hfsc_class*) #1

declare dso_local %struct.TYPE_7__* @qdisc_create_dflt(i32, i32, i32*, i64) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hfsc_purge_queue(%struct.Qdisc*, %struct.hfsc_class*) #1

declare dso_local i32 @hfsc_adjust_levels(%struct.hfsc_class*) #1

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
