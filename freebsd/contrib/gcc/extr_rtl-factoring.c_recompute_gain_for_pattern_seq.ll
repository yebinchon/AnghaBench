; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_recompute_gain_for_pattern_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_recompute_gain_for_pattern_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i64 }

@NULL_RTX = common dso_local global i32 0, align 4
@seq_call_cost = common dso_local global i64 0, align 8
@seq_jump_cost = common dso_local global i64 0, align 8
@seq_return_cost = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i64* null, align 8
@Pmode = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i64* null, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @recompute_gain_for_pattern_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recompute_gain_for_pattern_seq(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SET_HARD_REG_SET(i32 %8)
  %10 = load i32, i32* @NULL_RTX, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i64, i64* @seq_call_cost, align 8
  %16 = load i64, i64* @seq_jump_cost, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* @seq_return_cost, align 8
  %19 = add nsw i64 %17, %18
  %20 = sub nsw i64 0, %19
  %21 = trunc i64 %20 to i32
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %3, align 8
  br label %27

27:                                               ; preds = %99, %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %103

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %54

48:                                               ; preds = %30
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %35
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = call i32 @RECOMPUTE_COST(%struct.TYPE_5__* %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @seq_call_cost, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @clear_regs_live_in_seq(i32* %7, i64 %79, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %76
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %76
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %3, align 8
  br label %27

103:                                              ; preds = %27
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %3, align 8
  br label %107

107:                                              ; preds = %138, %103
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %110, label %142

110:                                              ; preds = %107
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %131, %110
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i64, i64* %4, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br label %126

126:                                              ; preds = %120, %114
  %127 = phi i1 [ false, %114 ], [ %125, %120 ]
  br i1 %127, label %128, label %134

128:                                              ; preds = %126
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @prev_insn_in_block(i64 %129)
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %114

134:                                              ; preds = %126
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %3, align 8
  br label %107

142:                                              ; preds = %107
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = call i32 @RECOMPUTE_COST(%struct.TYPE_5__* %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @seq_call_cost, align 8
  %149 = icmp sle i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 -1, i32* %152, align 4
  br label %321

153:                                              ; preds = %142
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 7
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %3, align 8
  br label %157

157:                                              ; preds = %195, %153
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = icmp ne %struct.TYPE_5__* %158, null
  br i1 %159, label %160, label %199

160:                                              ; preds = %157
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %163, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = call i32 @RECOMPUTE_COST(%struct.TYPE_5__* %174)
  br label %176

176:                                              ; preds = %168, %160
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @seq_call_cost, align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @seq_call_cost, align 8
  %187 = sub nsw i64 %185, %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %187
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  br label %194

194:                                              ; preds = %182, %176
  br label %195

195:                                              ; preds = %194
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  store %struct.TYPE_5__* %198, %struct.TYPE_5__** %3, align 8
  br label %157

199:                                              ; preds = %157
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %321

205:                                              ; preds = %199
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @clear_regs_live_in_seq(i32* %7, i64 %208, i32 %211)
  store i32 0, i32* %6, align 4
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %230, %205
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %216
  %223 = load i64, i64* %4, align 8
  %224 = call i64 @CALL_P(i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %6, align 4
  br label %233

227:                                              ; preds = %222
  %228 = load i64, i64* %4, align 8
  %229 = call i64 @prev_insn_in_block(i64 %228)
  store i64 %229, i64* %4, align 8
  br label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %216

233:                                              ; preds = %226, %216
  store i32 0, i32* %5, align 4
  br label %234

234:                                              ; preds = %290, %233
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %293

238:                                              ; preds = %234
  %239 = load i64*, i64** @fixed_regs, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %285, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @Pmode, align 4
  %248 = load i32, i32* @MEM, align 4
  %249 = load i32, i32* @SCRATCH, align 4
  %250 = call i32 @ok_for_base_p_1(i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %285

252:                                              ; preds = %245
  %253 = load i32, i32* %5, align 4
  %254 = call i32 @REGNO_REG_CLASS(i32 %253)
  %255 = load i32, i32* @VOIDmode, align 4
  %256 = load i32, i32* @MEM, align 4
  %257 = load i32, i32* @SCRATCH, align 4
  %258 = call i32 @base_reg_class(i32 %255, i32 %256, i32 %257)
  %259 = call i32 @reg_class_subset_p(i32 %254, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %285

261:                                              ; preds = %252
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load i64*, i64** @call_used_regs, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %285, label %271

271:                                              ; preds = %264, %261
  %272 = load i64*, i64** @call_used_regs, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %271
  %279 = load i32*, i32** @regs_ever_live, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %278, %264, %252, %245, %238
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @CLEAR_HARD_REG_BIT(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %278, %271
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %5, align 4
  br label %234

293:                                              ; preds = %234
  store i32 0, i32* %5, align 4
  br label %294

294:                                              ; preds = %310, %293
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %313

298:                                              ; preds = %294
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* %5, align 4
  %301 = call i64 @TEST_HARD_REG_BIT(i32 %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load i32, i32* @Pmode, align 4
  %305 = load i32, i32* %5, align 4
  %306 = call i32 @gen_rtx_REG(i32 %304, i32 %305)
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 5
  store i32 %306, i32* %308, align 8
  br label %313

309:                                              ; preds = %298
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %5, align 4
  br label %294

313:                                              ; preds = %303, %294
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %313
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  store i32 0, i32* %320, align 4
  br label %321

321:                                              ; preds = %150, %204, %318, %313
  ret void
}

declare dso_local i32 @SET_HARD_REG_SET(i32) #1

declare dso_local i32 @RECOMPUTE_COST(%struct.TYPE_5__*) #1

declare dso_local i32 @clear_regs_live_in_seq(i32*, i64, i32) #1

declare dso_local i64 @prev_insn_in_block(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @ok_for_base_p_1(i32, i32, i32, i32) #1

declare dso_local i32 @reg_class_subset_p(i32, i32) #1

declare dso_local i32 @REGNO_REG_CLASS(i32) #1

declare dso_local i32 @base_reg_class(i32, i32, i32) #1

declare dso_local i32 @CLEAR_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
