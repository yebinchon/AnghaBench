; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_locate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tc_action = type { %struct.tcf_police* }
%struct.tcf_police = type { i32, i32, i32, i32, i32, i32*, i64, i32, i8*, i32, i32, %struct.qdisc_rate_table*, %struct.qdisc_rate_table*, i32, i32, i8*, i32, i32 }
%struct.qdisc_rate_table = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tc_police = type { i32, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.tcf_common = type { i32, i32, i32, i32, i32, i32*, i64, i32, i8*, i32, i32, %struct.qdisc_rate_table*, %struct.qdisc_rate_table*, i32, i32, i8*, i32, i32 }

@TCA_POLICE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@police_policy = common dso_local global i32 0, align 4
@TCA_POLICE_TBF = common dso_local global i64 0, align 8
@police_hash_info = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@TCA_POLICE_RATE = common dso_local global i64 0, align 8
@TCA_POLICE_PEAKRATE = common dso_local global i64 0, align 8
@TCA_POLICE_AVRATE = common dso_local global i64 0, align 8
@TCA_POLICE_RESULT = common dso_local global i64 0, align 8
@police_idx_gen = common dso_local global i32 0, align 4
@POL_TAB_MASK = common dso_local global i32 0, align 4
@police_lock = common dso_local global i32 0, align 4
@tcf_police_ht = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action*, i32, i32)* @tcf_act_police_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_act_police_locate(%struct.nlattr* %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.tc_police*, align 8
  %18 = alloca %struct.tcf_police*, align 8
  %19 = alloca %struct.qdisc_rate_table*, align 8
  %20 = alloca %struct.qdisc_rate_table*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.tcf_common*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_action* %2, %struct.tc_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @TCA_POLICE_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %19, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %20, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

34:                                               ; preds = %5
  %35 = load i32, i32* @TCA_POLICE_MAX, align 4
  %36 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %37 = load i32, i32* @police_policy, align 4
  %38 = call i32 @nla_parse_nested(%struct.nlattr** %28, i32 %35, %struct.nlattr* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

43:                                               ; preds = %34
  %44 = load i64, i64* @TCA_POLICE_TBF, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

51:                                               ; preds = %43
  %52 = load i64, i64* @TCA_POLICE_TBF, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_len(%struct.nlattr* %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 40
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

66:                                               ; preds = %59, %51
  %67 = load i64, i64* @TCA_POLICE_TBF, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call %struct.tc_police* @nla_data(%struct.nlattr* %69)
  store %struct.tc_police* %70, %struct.tc_police** %17, align 8
  %71 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %72 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %66
  %76 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %77 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.tcf_police* @tcf_hash_lookup(i64 %78, i32* @police_hash_info)
  %80 = bitcast %struct.tcf_police* %79 to %struct.tcf_common*
  store %struct.tcf_common* %80, %struct.tcf_common** %23, align 8
  %81 = load %struct.tcf_common*, %struct.tcf_common** %23, align 8
  %82 = icmp ne %struct.tcf_common* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %75
  %84 = load %struct.tcf_common*, %struct.tcf_common** %23, align 8
  %85 = bitcast %struct.tcf_common* %84 to %struct.tcf_police*
  %86 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %87 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %86, i32 0, i32 0
  store %struct.tcf_police* %85, %struct.tcf_police** %87, align 8
  %88 = load %struct.tcf_common*, %struct.tcf_common** %23, align 8
  %89 = bitcast %struct.tcf_common* %88 to %struct.tcf_police*
  %90 = call %struct.tcf_police* @to_police(%struct.tcf_police* %89)
  store %struct.tcf_police* %90, %struct.tcf_police** %18, align 8
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %83
  %94 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %95 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %99 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %93, %83
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %130

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %66
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.tcf_police* @kzalloc(i32 104, i32 %110)
  store %struct.tcf_police* %111, %struct.tcf_police** %18, align 8
  %112 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %113 = icmp eq %struct.tcf_police* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

117:                                              ; preds = %109
  %118 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %118, i32* %13, align 4
  %119 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %120 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %122 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %121, i32 0, i32 3
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %128 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %117
  br label %130

130:                                              ; preds = %129, %105
  %131 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %132 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %130
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %14, align 4
  %139 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %140 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %139, i32 0, i32 5
  %141 = load i64, i64* @TCA_POLICE_RATE, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = call %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_4__* %140, %struct.nlattr* %143)
  store %struct.qdisc_rate_table* %144, %struct.qdisc_rate_table** %19, align 8
  %145 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %146 = icmp eq %struct.qdisc_rate_table* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %359

148:                                              ; preds = %136
  %149 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %150 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %156 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %155, i32 0, i32 4
  %157 = load i64, i64* @TCA_POLICE_PEAKRATE, align 8
  %158 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %157
  %159 = load %struct.nlattr*, %struct.nlattr** %158, align 8
  %160 = call %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_4__* %156, %struct.nlattr* %159)
  store %struct.qdisc_rate_table* %160, %struct.qdisc_rate_table** %20, align 8
  %161 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %20, align 8
  %162 = icmp eq %struct.qdisc_rate_table* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %359

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %148
  br label %166

166:                                              ; preds = %165, %130
  %167 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %168 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %167, i32 0, i32 3
  %169 = call i32 @spin_lock_bh(i32* %168)
  %170 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %171 = icmp ne %struct.nlattr* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %166
  %173 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %174 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %173, i32 0, i32 17
  %175 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %176 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %175, i32 0, i32 16
  %177 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %178 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %177, i32 0, i32 3
  %179 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %180 = call i32 @gen_replace_estimator(i32* %174, i32* %176, i32* %178, %struct.nlattr* %179)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %355

184:                                              ; preds = %172
  br label %205

185:                                              ; preds = %166
  %186 = load i64, i64* @TCA_POLICE_AVRATE, align 8
  %187 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %186
  %188 = load %struct.nlattr*, %struct.nlattr** %187, align 8
  %189 = icmp ne %struct.nlattr* %188, null
  br i1 %189, label %190, label %204

190:                                              ; preds = %185
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @ACT_P_CREATED, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %190
  %195 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %196 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %195, i32 0, i32 17
  %197 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %198 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %197, i32 0, i32 16
  %199 = call i32 @gen_estimator_active(i32* %196, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %194, %190
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %14, align 4
  br label %355

204:                                              ; preds = %194, %185
  br label %205

205:                                              ; preds = %204, %184
  %206 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %207 = icmp ne %struct.qdisc_rate_table* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %210 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %209, i32 0, i32 12
  %211 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %210, align 8
  %212 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %211)
  %213 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %214 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %215 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %214, i32 0, i32 12
  store %struct.qdisc_rate_table* %213, %struct.qdisc_rate_table** %215, align 8
  br label %216

216:                                              ; preds = %208, %205
  %217 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %20, align 8
  %218 = icmp ne %struct.qdisc_rate_table* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %221 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %220, i32 0, i32 11
  %222 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %221, align 8
  %223 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %222)
  %224 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %20, align 8
  %225 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %226 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %225, i32 0, i32 11
  store %struct.qdisc_rate_table* %224, %struct.qdisc_rate_table** %226, align 8
  br label %227

227:                                              ; preds = %219, %216
  %228 = load i64, i64* @TCA_POLICE_RESULT, align 8
  %229 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %228
  %230 = load %struct.nlattr*, %struct.nlattr** %229, align 8
  %231 = icmp ne %struct.nlattr* %230, null
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i64, i64* @TCA_POLICE_RESULT, align 8
  %234 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %233
  %235 = load %struct.nlattr*, %struct.nlattr** %234, align 8
  %236 = call i8* @nla_get_u32(%struct.nlattr* %235)
  %237 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %238 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %237, i32 0, i32 15
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %232, %227
  %240 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %241 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %244 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %243, i32 0, i32 13
  store i32 %242, i32* %244, align 8
  %245 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %246 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %245, i32 0, i32 14
  store i32 %242, i32* %246, align 4
  %247 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %248 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %251 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  %252 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %253 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %239
  %257 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %258 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %257, i32 0, i32 2
  store i32 -1, i32* %258, align 8
  %259 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %260 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %259, i32 0, i32 12
  %261 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %260, align 8
  %262 = icmp ne %struct.qdisc_rate_table* %261, null
  br i1 %262, label %263, label %273

263:                                              ; preds = %256
  %264 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %265 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %264, i32 0, i32 12
  %266 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %265, align 8
  %267 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 255, %269
  %271 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %272 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %263, %256
  br label %274

274:                                              ; preds = %273, %239
  %275 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %276 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %275, i32 0, i32 11
  %277 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %276, align 8
  %278 = icmp ne %struct.qdisc_rate_table* %277, null
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %281 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %282 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @L2T_P(%struct.tcf_police* %280, i32 %283)
  %285 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %286 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %285, i32 0, i32 10
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %279, %274
  %288 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %289 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %292 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %291, i32 0, i32 9
  store i32 %290, i32* %292, align 8
  %293 = load i64, i64* @TCA_POLICE_AVRATE, align 8
  %294 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %293
  %295 = load %struct.nlattr*, %struct.nlattr** %294, align 8
  %296 = icmp ne %struct.nlattr* %295, null
  br i1 %296, label %297, label %304

297:                                              ; preds = %287
  %298 = load i64, i64* @TCA_POLICE_AVRATE, align 8
  %299 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %298
  %300 = load %struct.nlattr*, %struct.nlattr** %299, align 8
  %301 = call i8* @nla_get_u32(%struct.nlattr* %300)
  %302 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %303 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %302, i32 0, i32 8
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %297, %287
  %305 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %306 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %305, i32 0, i32 3
  %307 = call i32 @spin_unlock_bh(i32* %306)
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* @ACT_P_CREATED, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %304
  %312 = load i32, i32* %13, align 4
  store i32 %312, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

313:                                              ; preds = %304
  %314 = call i32 (...) @psched_get_time()
  %315 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %316 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %315, i32 0, i32 7
  store i32 %314, i32* %316, align 8
  %317 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %318 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %313
  %322 = load %struct.tc_police*, %struct.tc_police** %17, align 8
  %323 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  br label %327

325:                                              ; preds = %313
  %326 = call i64 @tcf_hash_new_index(i32* @police_idx_gen, i32* @police_hash_info)
  br label %327

327:                                              ; preds = %325, %321
  %328 = phi i64 [ %324, %321 ], [ %326, %325 ]
  %329 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %330 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %329, i32 0, i32 6
  store i64 %328, i64* %330, align 8
  %331 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %332 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @POL_TAB_MASK, align 4
  %335 = call i32 @tcf_hash(i64 %333, i32 %334)
  store i32 %335, i32* %12, align 4
  %336 = call i32 @write_lock_bh(i32* @police_lock)
  %337 = load i32**, i32*** @tcf_police_ht, align 8
  %338 = load i32, i32* %12, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32*, i32** %337, i64 %339
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %343 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %342, i32 0, i32 5
  store i32* %341, i32** %343, align 8
  %344 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %345 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %344, i32 0, i32 4
  %346 = load i32**, i32*** @tcf_police_ht, align 8
  %347 = load i32, i32* %12, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %346, i64 %348
  store i32* %345, i32** %349, align 8
  %350 = call i32 @write_unlock_bh(i32* @police_lock)
  %351 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %352 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %353 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %352, i32 0, i32 0
  store %struct.tcf_police* %351, %struct.tcf_police** %353, align 8
  %354 = load i32, i32* %13, align 4
  store i32 %354, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

355:                                              ; preds = %201, %183
  %356 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %357 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %356, i32 0, i32 3
  %358 = call i32 @spin_unlock_bh(i32* %357)
  br label %359

359:                                              ; preds = %355, %163, %147
  %360 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %20, align 8
  %361 = icmp ne %struct.qdisc_rate_table* %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %20, align 8
  %364 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %367 = icmp ne %struct.qdisc_rate_table* %366, null
  br i1 %367, label %368, label %371

368:                                              ; preds = %365
  %369 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %19, align 8
  %370 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %369)
  br label %371

371:                                              ; preds = %368, %365
  %372 = load i32, i32* %13, align 4
  %373 = load i32, i32* @ACT_P_CREATED, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %371
  %376 = load %struct.tcf_police*, %struct.tcf_police** %18, align 8
  %377 = call i32 @kfree(%struct.tcf_police* %376)
  br label %378

378:                                              ; preds = %375, %371
  %379 = load i32, i32* %14, align 4
  store i32 %379, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %380

380:                                              ; preds = %378, %327, %311, %114, %106, %63, %48, %41, %31
  %381 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %381)
  %382 = load i32, i32* %6, align 4
  ret i32 %382
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local %struct.tc_police* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tcf_police* @tcf_hash_lookup(i64, i32*) #2

declare dso_local %struct.tcf_police* @to_police(%struct.tcf_police*) #2

declare dso_local %struct.tcf_police* @kzalloc(i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_4__*, %struct.nlattr*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32*, %struct.nlattr*) #2

declare dso_local i32 @gen_estimator_active(i32*, i32*) #2

declare dso_local i32 @qdisc_put_rtab(%struct.qdisc_rate_table*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @L2T_P(%struct.tcf_police*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @psched_get_time(...) #2

declare dso_local i64 @tcf_hash_new_index(i32*, i32*) #2

declare dso_local i32 @tcf_hash(i64, i32) #2

declare dso_local i32 @write_lock_bh(i32*) #2

declare dso_local i32 @write_unlock_bh(i32*) #2

declare dso_local i32 @kfree(%struct.tcf_police*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
