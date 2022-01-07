; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_maybe_both_true_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_maybe_both_true_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_test = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64* }

@DT_pred = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"address_operand\00", align 1
@NUM_RTX_CODE = common dso_local global i32 0, align 4
@DT_veclen_ge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision_test*, %struct.decision_test*)* @maybe_both_true_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_both_true_2(%struct.decision_test* %0, %struct.decision_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decision_test*, align 8
  %5 = alloca %struct.decision_test*, align 8
  %6 = alloca %struct.decision_test*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.decision_test* %0, %struct.decision_test** %4, align 8
  store %struct.decision_test* %1, %struct.decision_test** %5, align 8
  %9 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %10 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %13 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %78

16:                                               ; preds = %2
  %17 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %18 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %76 [
    i32 129, label %20
    i32 130, label %32
    i32 135, label %43
    i32 128, label %54
    i32 133, label %65
    i32 134, label %65
    i32 132, label %65
    i32 131, label %65
  ]

20:                                               ; preds = %16
  %21 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %22 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %26 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %266

31:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %266

32:                                               ; preds = %16
  %33 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %34 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %38 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %266

43:                                               ; preds = %16
  %44 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %45 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %49 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %266

54:                                               ; preds = %16
  %55 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %56 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %60 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %266

65:                                               ; preds = %16, %16, %16, %16
  %66 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %67 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %71 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %69, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %266

76:                                               ; preds = %16
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %80 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DT_pred, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %86 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DT_pred, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %221

90:                                               ; preds = %84, %78
  %91 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %92 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DT_pred, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  store %struct.decision_test* %97, %struct.decision_test** %6, align 8
  %98 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  store %struct.decision_test* %98, %struct.decision_test** %4, align 8
  %99 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  store %struct.decision_test* %99, %struct.decision_test** %5, align 8
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %102 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VOIDmode, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %100
  %109 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %110 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 130
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %115 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %120 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %118, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %126 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @strcmp(i32 %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %266

133:                                              ; preds = %124, %113
  br label %134

134:                                              ; preds = %133, %108
  br label %135

135:                                              ; preds = %134, %100
  %136 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %137 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = icmp ne %struct.TYPE_4__* %140, null
  br i1 %141, label %142, label %220

142:                                              ; preds = %135
  %143 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %144 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 135
  br i1 %146, label %147, label %164

147:                                              ; preds = %142
  %148 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %149 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %156 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i64, i64* %154, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %266

163:                                              ; preds = %147
  br label %219

164:                                              ; preds = %142
  %165 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %166 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DT_pred, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %218

170:                                              ; preds = %164
  %171 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %172 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = icmp ne %struct.TYPE_4__* %175, null
  br i1 %176, label %177, label %218

177:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %210, %177
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @NUM_RTX_CODE, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %178
  %183 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %184 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %209

195:                                              ; preds = %182
  %196 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %197 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  store i32 1, i32* %7, align 4
  br label %213

209:                                              ; preds = %195, %182
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %178

213:                                              ; preds = %208, %178
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store i32 0, i32* %3, align 4
  br label %266

217:                                              ; preds = %213
  br label %218

218:                                              ; preds = %217, %170, %164
  br label %219

219:                                              ; preds = %218, %163
  br label %220

220:                                              ; preds = %219, %135
  br label %221

221:                                              ; preds = %220, %84
  %222 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %223 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 128
  br i1 %225, label %226, label %243

226:                                              ; preds = %221
  %227 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %228 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @DT_veclen_ge, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %226
  %233 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %234 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %238 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp sge i64 %236, %240
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %3, align 4
  br label %266

243:                                              ; preds = %226, %221
  %244 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %245 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @DT_veclen_ge, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %265

249:                                              ; preds = %243
  %250 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %251 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 128
  br i1 %253, label %254, label %265

254:                                              ; preds = %249
  %255 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %256 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %260 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp sge i64 %258, %262
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %3, align 4
  br label %266

265:                                              ; preds = %249, %243
  store i32 -1, i32* %3, align 4
  br label %266

266:                                              ; preds = %265, %254, %232, %216, %162, %132, %65, %54, %43, %32, %31, %30
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
