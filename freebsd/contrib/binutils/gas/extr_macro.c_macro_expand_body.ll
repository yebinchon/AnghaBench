; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_macro_expand_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_macro_expand_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__, %struct.TYPE_28__*, %struct.TYPE_26__, %struct.TYPE_26__ }
%struct.hash_control = type { i32 }
%struct.TYPE_27__ = type { i64, i32 }

@macro_mri = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"missing `)'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@macro_number = common dso_local global i32 0, align 4
@macro_alternate = common dso_local global i64 0, align 8
@macro_strip_at = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@macro_expand_body.loccnt = internal global i32 0, align 4
@LOCAL_INDEX = common dso_local global i32 0, align 4
@IS_ELF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c".LL%04x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"LL%04x\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"`%s' was already used as parameter (or another local) name\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_28__*, %struct.hash_control*, %struct.TYPE_27__*)* @macro_expand_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @macro_expand_body(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1, %struct.TYPE_28__* %2, %struct.hash_control* %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.hash_control*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [10 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_28__*, align 8
  %22 = alloca [20 x i8], align 16
  %23 = alloca %struct.TYPE_28__*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %8, align 8
  store %struct.hash_control* %3, %struct.hash_control** %9, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %15, align 8
  store i8* null, i8** %16, align 8
  %25 = call i32 @sb_new(%struct.TYPE_26__* %11)
  br label %26

26:                                               ; preds = %683, %5
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %16, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ false, %26 ], [ %35, %32 ]
  br i1 %37, label %38, label %684

38:                                               ; preds = %36
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 38
  br i1 %47, label %48, label %97

48:                                               ; preds = %38
  %49 = call i32 @sb_reset(%struct.TYPE_26__* %11)
  %50 = load i64, i64* @macro_mri, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 38
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 2
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %74 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %76 = call i32 @sub_actual(i32 %72, %struct.TYPE_26__* %73, %struct.TYPE_26__* %11, %struct.hash_control* %74, i8 signext 39, %struct.TYPE_26__* %75, i32 1)
  store i32 %76, i32* %12, align 4
  br label %88

77:                                               ; preds = %59, %52
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @sb_add_char(%struct.TYPE_26__* %78, i8 signext %86)
  br label %88

88:                                               ; preds = %77, %70
  br label %96

89:                                               ; preds = %48
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %93 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = call i32 @sub_actual(i32 %91, %struct.TYPE_26__* %92, %struct.TYPE_26__* %11, %struct.hash_control* %93, i8 signext 38, %struct.TYPE_26__* %94, i32 0)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %89, %88
  br label %683

97:                                               ; preds = %38
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 92
  br i1 %106, label %107, label %354

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %185

115:                                              ; preds = %107
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 40
  br i1 %124, label %125, label %185

125:                                              ; preds = %115
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %146, %125
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 41
  br label %144

144:                                              ; preds = %134, %128
  %145 = phi i1 [ false, %128 ], [ %143, %134 ]
  br i1 %145, label %146, label %157

146:                                              ; preds = %144
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @sb_add_char(%struct.TYPE_26__* %147, i8 signext %155)
  br label %128

157:                                              ; preds = %144
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %184

166:                                              ; preds = %157
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %168 = icmp ne %struct.TYPE_27__* %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %170, i8** %16, align 8
  br label %183

171:                                              ; preds = %166
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %177, %179
  %181 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %182 = call i32 (i32, i64, i8*, ...) @as_bad_where(i32 %174, i64 %180, i8* %181)
  br label %183

183:                                              ; preds = %171, %169
  br label %184

184:                                              ; preds = %183, %163
  br label %353

185:                                              ; preds = %115, %107
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %185
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 64
  br i1 %200, label %201, label %210

201:                                              ; preds = %191
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  %204 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %205 = load i32, i32* @macro_number, align 4
  %206 = call i32 @sprintf(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %208 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %209 = call i32 @sb_add_string(%struct.TYPE_26__* %207, i8* %208)
  br label %352

210:                                              ; preds = %191, %185
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %233

216:                                              ; preds = %210
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 38
  br i1 %225, label %226, label %233

226:                                              ; preds = %216
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %228 = call i32 @sb_add_char(%struct.TYPE_26__* %227, i8 signext 92)
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %230 = call i32 @sb_add_char(%struct.TYPE_26__* %229, i8 signext 38)
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %351

233:                                              ; preds = %216, %210
  %234 = load i64, i64* @macro_mri, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %343

236:                                              ; preds = %233
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %343

242:                                              ; preds = %236
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = call i64 @ISALNUM(i8 signext %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %343

252:                                              ; preds = %242
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = call i64 @ISDIGIT(i8 signext %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %252
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = sub nsw i32 %270, 48
  store i32 %271, i32* %18, align 4
  br label %306

272:                                              ; preds = %252
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = call i64 @ISUPPER(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %272
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = sub nsw i32 %291, 65
  %293 = add nsw i32 %292, 10
  store i32 %293, i32* %18, align 4
  br label %305

294:                                              ; preds = %272
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = sub nsw i32 %302, 97
  %304 = add nsw i32 %303, 10
  store i32 %304, i32* %18, align 4
  br label %305

305:                                              ; preds = %294, %283
  br label %306

306:                                              ; preds = %305, %262
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %309, %struct.TYPE_28__** %19, align 8
  br label %310

310:                                              ; preds = %338, %306
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %312 = icmp ne %struct.TYPE_28__* %311, null
  br i1 %312, label %313, label %342

313:                                              ; preds = %310
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %18, align 4
  %318 = sub nsw i32 %317, 1
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %337

320:                                              ; preds = %313
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %320
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 3
  %330 = call i32 @sb_add_sb(%struct.TYPE_26__* %327, %struct.TYPE_26__* %329)
  br label %336

331:                                              ; preds = %320
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 4
  %335 = call i32 @sb_add_sb(%struct.TYPE_26__* %332, %struct.TYPE_26__* %334)
  br label %336

336:                                              ; preds = %331, %326
  br label %342

337:                                              ; preds = %313
  br label %338

338:                                              ; preds = %337
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %340, align 8
  store %struct.TYPE_28__* %341, %struct.TYPE_28__** %19, align 8
  br label %310

342:                                              ; preds = %336, %310
  br label %350

343:                                              ; preds = %242, %236, %233
  %344 = call i32 @sb_reset(%struct.TYPE_26__* %11)
  %345 = load i32, i32* %12, align 4
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %347 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %349 = call i32 @sub_actual(i32 %345, %struct.TYPE_26__* %346, %struct.TYPE_26__* %11, %struct.hash_control* %347, i8 signext 39, %struct.TYPE_26__* %348, i32 0)
  store i32 %349, i32* %12, align 4
  br label %350

350:                                              ; preds = %343, %342
  br label %351

351:                                              ; preds = %350, %226
  br label %352

352:                                              ; preds = %351, %201
  br label %353

353:                                              ; preds = %352, %184
  br label %682

354:                                              ; preds = %97
  %355 = load i64, i64* @macro_alternate, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %354
  %358 = load i64, i64* @macro_mri, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %515

360:                                              ; preds = %357, %354
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %363, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = call i64 @is_name_beginner(i8 signext %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %515

370:                                              ; preds = %360
  %371 = load i32, i32* %13, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %390

373:                                              ; preds = %370
  %374 = load i64, i64* @macro_strip_at, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %390

376:                                              ; preds = %373
  %377 = load i32, i32* %12, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %515

379:                                              ; preds = %376
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = load i32, i32* %12, align 4
  %384 = sub nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %382, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 64
  br i1 %389, label %390, label %515

390:                                              ; preds = %379, %373, %370
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %392 = icmp ne %struct.TYPE_27__* %391, null
  br i1 %392, label %393, label %420

393:                                              ; preds = %390
  %394 = load i32, i32* %12, align 4
  %395 = add nsw i32 %394, 5
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = icmp sge i32 %395, %398
  br i1 %399, label %420, label %400

400:                                              ; preds = %393
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 1
  %403 = load i8*, i8** %402, align 8
  %404 = load i32, i32* %12, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %403, i64 %405
  %407 = call i64 @strncasecmp(i8* %406, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %420, label %409

409:                                              ; preds = %400
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* %12, align 4
  %414 = add nsw i32 %413, 5
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %412, i64 %415
  %417 = load i8, i8* %416, align 1
  %418 = call i32 @ISWHITE(i8 signext %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %437, label %420

420:                                              ; preds = %409, %400, %393, %390
  %421 = call i32 @sb_reset(%struct.TYPE_26__* %11)
  %422 = load i32, i32* %12, align 4
  %423 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %424 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %425 = load i64, i64* @macro_strip_at, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %420
  %428 = load i32, i32* %13, align 4
  %429 = icmp ne i32 %428, 0
  br label %430

430:                                              ; preds = %427, %420
  %431 = phi i1 [ false, %420 ], [ %429, %427 ]
  %432 = zext i1 %431 to i64
  %433 = select i1 %431, i32 64, i32 39
  %434 = trunc i32 %433 to i8
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %436 = call i32 @sub_actual(i32 %422, %struct.TYPE_26__* %423, %struct.TYPE_26__* %11, %struct.hash_control* %424, i8 signext %434, %struct.TYPE_26__* %435, i32 1)
  store i32 %436, i32* %12, align 4
  br label %514

437:                                              ; preds = %409
  %438 = load i32, i32* %12, align 4
  %439 = add nsw i32 %438, 5
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %441 = call i32 @sb_skip_white(i32 %439, %struct.TYPE_26__* %440)
  store i32 %441, i32* %12, align 4
  br label %442

442:                                              ; preds = %509, %437
  %443 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %443, i32 0, i32 1
  %445 = load i8*, i8** %444, align 8
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8, i8* %445, i64 %447
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp ne i32 %450, 10
  br i1 %451, label %452, label %513

452:                                              ; preds = %442
  %453 = call %struct.TYPE_28__* (...) @new_formal()
  store %struct.TYPE_28__* %453, %struct.TYPE_28__** %21, align 8
  %454 = load i32, i32* %12, align 4
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %456 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %457 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %456, i32 0, i32 1
  %458 = call i32 @get_token(i32 %454, %struct.TYPE_26__* %455, %struct.TYPE_26__* %457)
  store i32 %458, i32* %12, align 4
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 1
  %461 = call i8* @sb_terminate(%struct.TYPE_26__* %460)
  store i8* %461, i8** %20, align 8
  %462 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %463 = load i8*, i8** %20, align 8
  %464 = call i64 @hash_find(%struct.hash_control* %462, i8* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %494, label %466

466:                                              ; preds = %452
  %467 = load i32, i32* @LOCAL_INDEX, align 4
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %468, i32 0, i32 0
  store i32 %467, i32* %469, align 8
  %470 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %471 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %472 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %471, i32 0, i32 2
  store %struct.TYPE_28__* %470, %struct.TYPE_28__** %472, align 8
  %473 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  store %struct.TYPE_28__* %473, %struct.TYPE_28__** %15, align 8
  %474 = getelementptr inbounds [20 x i8], [20 x i8]* %22, i64 0, i64 0
  %475 = load i64, i64* @IS_ELF, align 8
  %476 = icmp ne i64 %475, 0
  %477 = zext i1 %476 to i64
  %478 = select i1 %476, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %479 = load i32, i32* @macro_expand_body.loccnt, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* @macro_expand_body.loccnt, align 4
  %481 = call i32 @sprintf(i8* %474, i8* %478, i32 %480)
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %483 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %482, i32 0, i32 3
  %484 = getelementptr inbounds [20 x i8], [20 x i8]* %22, i64 0, i64 0
  %485 = call i32 @sb_add_string(%struct.TYPE_26__* %483, i8* %484)
  %486 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %487 = load i8*, i8** %20, align 8
  %488 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %489 = call i8* @hash_jam(%struct.hash_control* %486, i8* %487, %struct.TYPE_28__* %488)
  store i8* %489, i8** %16, align 8
  %490 = load i8*, i8** %16, align 8
  %491 = icmp ne i8* %490, null
  br i1 %491, label %492, label %493

492:                                              ; preds = %466
  br label %513

493:                                              ; preds = %466
  br label %509

494:                                              ; preds = %452
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %499 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i32, i32* %14, align 4
  %502 = sext i32 %501 to i64
  %503 = add nsw i64 %500, %502
  %504 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %505 = load i8*, i8** %20, align 8
  %506 = call i32 (i32, i64, i8*, ...) @as_bad_where(i32 %497, i64 %503, i8* %504, i8* %505)
  %507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %508 = call i32 @del_formal(%struct.TYPE_28__* %507)
  br label %509

509:                                              ; preds = %494, %493
  %510 = load i32, i32* %12, align 4
  %511 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %512 = call i32 @sb_skip_comma(i32 %510, %struct.TYPE_26__* %511)
  store i32 %512, i32* %12, align 4
  br label %442

513:                                              ; preds = %492, %442
  br label %514

514:                                              ; preds = %513, %430
  br label %681

515:                                              ; preds = %379, %376, %360, %357
  %516 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %516, i32 0, i32 1
  %518 = load i8*, i8** %517, align 8
  %519 = load i32, i32* %12, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %518, i64 %520
  %522 = load i8, i8* %521, align 1
  %523 = sext i8 %522 to i32
  %524 = icmp eq i32 %523, 34
  br i1 %524, label %538, label %525

525:                                              ; preds = %515
  %526 = load i64, i64* @macro_mri, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %553

528:                                              ; preds = %525
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  %532 = load i32, i32* %12, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, i8* %531, i64 %533
  %535 = load i8, i8* %534, align 1
  %536 = sext i8 %535 to i32
  %537 = icmp eq i32 %536, 39
  br i1 %537, label %538, label %553

538:                                              ; preds = %528, %515
  %539 = load i32, i32* %13, align 4
  %540 = icmp ne i32 %539, 0
  %541 = xor i1 %540, true
  %542 = zext i1 %541 to i32
  store i32 %542, i32* %13, align 4
  %543 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %544 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %544, i32 0, i32 1
  %546 = load i8*, i8** %545, align 8
  %547 = load i32, i32* %12, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %12, align 4
  %549 = sext i32 %547 to i64
  %550 = getelementptr inbounds i8, i8* %546, i64 %549
  %551 = load i8, i8* %550, align 1
  %552 = call i32 @sb_add_char(%struct.TYPE_26__* %543, i8 signext %551)
  br label %680

553:                                              ; preds = %528, %525
  %554 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %554, i32 0, i32 1
  %556 = load i8*, i8** %555, align 8
  %557 = load i32, i32* %12, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, i8* %556, i64 %558
  %560 = load i8, i8* %559, align 1
  %561 = sext i8 %560 to i32
  %562 = icmp eq i32 %561, 64
  br i1 %562, label %563, label %590

563:                                              ; preds = %553
  %564 = load i64, i64* @macro_strip_at, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %590

566:                                              ; preds = %563
  %567 = load i32, i32* %12, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %12, align 4
  %569 = load i32, i32* %12, align 4
  %570 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %571 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = icmp slt i32 %569, %572
  br i1 %573, label %574, label %589

574:                                              ; preds = %566
  %575 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %575, i32 0, i32 1
  %577 = load i8*, i8** %576, align 8
  %578 = load i32, i32* %12, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %577, i64 %579
  %581 = load i8, i8* %580, align 1
  %582 = sext i8 %581 to i32
  %583 = icmp eq i32 %582, 64
  br i1 %583, label %584, label %589

584:                                              ; preds = %574
  %585 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %586 = call i32 @sb_add_char(%struct.TYPE_26__* %585, i8 signext 64)
  %587 = load i32, i32* %12, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %12, align 4
  br label %589

589:                                              ; preds = %584, %574, %566
  br label %679

590:                                              ; preds = %563, %553
  %591 = load i64, i64* @macro_mri, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %654

593:                                              ; preds = %590
  %594 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %594, i32 0, i32 1
  %596 = load i8*, i8** %595, align 8
  %597 = load i32, i32* %12, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i8, i8* %596, i64 %598
  %600 = load i8, i8* %599, align 1
  %601 = sext i8 %600 to i32
  %602 = icmp eq i32 %601, 61
  br i1 %602, label %603, label %654

603:                                              ; preds = %593
  %604 = load i32, i32* %12, align 4
  %605 = add nsw i32 %604, 1
  %606 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %607 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = icmp slt i32 %605, %608
  br i1 %609, label %610, label %654

610:                                              ; preds = %603
  %611 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %612 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %611, i32 0, i32 1
  %613 = load i8*, i8** %612, align 8
  %614 = load i32, i32* %12, align 4
  %615 = add nsw i32 %614, 1
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8, i8* %613, i64 %616
  %618 = load i8, i8* %617, align 1
  %619 = sext i8 %618 to i32
  %620 = icmp eq i32 %619, 61
  br i1 %620, label %621, label %654

621:                                              ; preds = %610
  %622 = call i32 @sb_reset(%struct.TYPE_26__* %11)
  %623 = load i32, i32* %12, align 4
  %624 = add nsw i32 %623, 2
  %625 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %626 = call i32 @get_token(i32 %624, %struct.TYPE_26__* %625, %struct.TYPE_26__* %11)
  store i32 %626, i32* %12, align 4
  %627 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %628 = call i8* @sb_terminate(%struct.TYPE_26__* %11)
  %629 = call i64 @hash_find(%struct.hash_control* %627, i8* %628)
  %630 = inttoptr i64 %629 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %630, %struct.TYPE_28__** %23, align 8
  %631 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %632 = icmp eq %struct.TYPE_28__* %631, null
  br i1 %632, label %633, label %640

633:                                              ; preds = %621
  %634 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %635 = call i32 @sb_add_char(%struct.TYPE_26__* %634, i8 signext 61)
  %636 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %637 = call i32 @sb_add_char(%struct.TYPE_26__* %636, i8 signext 61)
  %638 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %639 = call i32 @sb_add_sb(%struct.TYPE_26__* %638, %struct.TYPE_26__* %11)
  br label %653

640:                                              ; preds = %621
  %641 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %642 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %641, i32 0, i32 3
  %643 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %649

646:                                              ; preds = %640
  %647 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %648 = call i32 @sb_add_string(%struct.TYPE_26__* %647, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %652

649:                                              ; preds = %640
  %650 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %651 = call i32 @sb_add_char(%struct.TYPE_26__* %650, i8 signext 48)
  br label %652

652:                                              ; preds = %649, %646
  br label %653

653:                                              ; preds = %652, %633
  br label %678

654:                                              ; preds = %610, %603, %593, %590
  %655 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %656 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %655, i32 0, i32 1
  %657 = load i8*, i8** %656, align 8
  %658 = load i32, i32* %12, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i8, i8* %657, i64 %659
  %661 = load i8, i8* %660, align 1
  %662 = sext i8 %661 to i32
  %663 = icmp eq i32 %662, 10
  br i1 %663, label %664, label %667

664:                                              ; preds = %654
  %665 = load i32, i32* %14, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %14, align 4
  br label %667

667:                                              ; preds = %664, %654
  %668 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %669 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %670 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %669, i32 0, i32 1
  %671 = load i8*, i8** %670, align 8
  %672 = load i32, i32* %12, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %12, align 4
  %674 = sext i32 %672 to i64
  %675 = getelementptr inbounds i8, i8* %671, i64 %674
  %676 = load i8, i8* %675, align 1
  %677 = call i32 @sb_add_char(%struct.TYPE_26__* %668, i8 signext %676)
  br label %678

678:                                              ; preds = %667, %653
  br label %679

679:                                              ; preds = %678, %589
  br label %680

680:                                              ; preds = %679, %538
  br label %681

681:                                              ; preds = %680, %514
  br label %682

682:                                              ; preds = %681, %353
  br label %683

683:                                              ; preds = %682, %96
  br label %26

684:                                              ; preds = %36
  %685 = call i32 @sb_kill(%struct.TYPE_26__* %11)
  br label %686

686:                                              ; preds = %689, %684
  %687 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %688 = icmp ne %struct.TYPE_28__* %687, null
  br i1 %688, label %689, label %701

689:                                              ; preds = %686
  %690 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %691 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %690, i32 0, i32 2
  %692 = load %struct.TYPE_28__*, %struct.TYPE_28__** %691, align 8
  store %struct.TYPE_28__* %692, %struct.TYPE_28__** %24, align 8
  %693 = load %struct.hash_control*, %struct.hash_control** %9, align 8
  %694 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %695 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %694, i32 0, i32 1
  %696 = call i8* @sb_terminate(%struct.TYPE_26__* %695)
  %697 = call i8* @hash_jam(%struct.hash_control* %693, i8* %696, %struct.TYPE_28__* null)
  %698 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %699 = call i32 @del_formal(%struct.TYPE_28__* %698)
  %700 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  store %struct.TYPE_28__* %700, %struct.TYPE_28__** %15, align 8
  br label %686

701:                                              ; preds = %686
  %702 = load i8*, i8** %16, align 8
  ret i8* %702
}

declare dso_local i32 @sb_new(%struct.TYPE_26__*) #1

declare dso_local i32 @sb_reset(%struct.TYPE_26__*) #1

declare dso_local i32 @sub_actual(i32, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.hash_control*, i8 signext, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @sb_add_char(%struct.TYPE_26__*, i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @as_bad_where(i32, i64, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @sb_add_string(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @ISALNUM(i8 signext) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @ISUPPER(i32) #1

declare dso_local i32 @sb_add_sb(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i64 @is_name_beginner(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ISWHITE(i8 signext) #1

declare dso_local i32 @sb_skip_white(i32, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_28__* @new_formal(...) #1

declare dso_local i32 @get_token(i32, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i8* @sb_terminate(%struct.TYPE_26__*) #1

declare dso_local i64 @hash_find(%struct.hash_control*, i8*) #1

declare dso_local i8* @hash_jam(%struct.hash_control*, i8*, %struct.TYPE_28__*) #1

declare dso_local i32 @del_formal(%struct.TYPE_28__*) #1

declare dso_local i32 @sb_skip_comma(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @sb_kill(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
