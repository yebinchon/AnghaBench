; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { i32, i32, %struct.decision*, %struct.TYPE_8__, %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pred_data* }
%struct.pred_data = type { i64* }

@DT_code = common dso_local global i32 0, align 4
@NUM_RTX_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"  switch (GET_CODE (x%d))\0A    {\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"    case \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c":\0A      goto L%d;\0A\00", align 1
@DT_pred = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"      goto L%d;\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"    default:\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"     break;\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"   }\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"  if ((int) XWINT (x%d, 0) == XWINT (x%d, 0))\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%s  switch (\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"GET_MODE (x%d)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"XVECLEN (x%d, 0)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"XINT (x%d, 0)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"XINT (x%d, 1)\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"(int) XWINT (x%d, 0)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c")\0A%s    {\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"%s    case \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%smode\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c":\0A%s      goto L%d;\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"%s    default:\0A%s      break;\0A%s    }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.decision* (%struct.decision*, i32)* @write_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.decision* @write_switch(%struct.decision* %0, i32 %1) #0 {
  %3 = alloca %struct.decision*, align 8
  %4 = alloca %struct.decision*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.decision*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.decision*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.decision*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pred_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.decision*, align 8
  store %struct.decision* %0, %struct.decision** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.decision*, %struct.decision** %4, align 8
  store %struct.decision* %17, %struct.decision** %6, align 8
  %18 = load %struct.decision*, %struct.decision** %6, align 8
  %19 = getelementptr inbounds %struct.decision, %struct.decision* %18, i32 0, i32 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  store %struct.decision* null, %struct.decision** %8, align 8
  %23 = load %struct.decision*, %struct.decision** %6, align 8
  %24 = getelementptr inbounds %struct.decision, %struct.decision* %23, i32 0, i32 2
  %25 = load %struct.decision*, %struct.decision** %24, align 8
  %26 = icmp ne %struct.decision* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %2
  %28 = load %struct.decision*, %struct.decision** %6, align 8
  %29 = getelementptr inbounds %struct.decision, %struct.decision* %28, i32 0, i32 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %27
  %35 = load %struct.decision*, %struct.decision** %6, align 8
  %36 = getelementptr inbounds %struct.decision, %struct.decision* %35, i32 0, i32 2
  %37 = load %struct.decision*, %struct.decision** %36, align 8
  %38 = getelementptr inbounds %struct.decision, %struct.decision* %37, i32 0, i32 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %34
  %45 = load %struct.decision*, %struct.decision** %6, align 8
  %46 = getelementptr inbounds %struct.decision, %struct.decision* %45, i32 0, i32 2
  %47 = load %struct.decision*, %struct.decision** %46, align 8
  %48 = getelementptr inbounds %struct.decision, %struct.decision* %47, i32 0, i32 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %44
  %54 = load %struct.decision*, %struct.decision** %6, align 8
  %55 = getelementptr inbounds %struct.decision, %struct.decision* %54, i32 0, i32 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load %struct.decision*, %struct.decision** %6, align 8
  %58 = getelementptr inbounds %struct.decision, %struct.decision* %57, i32 0, i32 2
  %59 = load %struct.decision*, %struct.decision** %58, align 8
  %60 = getelementptr inbounds %struct.decision, %struct.decision* %59, i32 0, i32 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i64 @nodes_identical_1(%struct.TYPE_11__* %56, %struct.TYPE_11__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53, %44, %34, %27, %2
  %65 = load %struct.decision*, %struct.decision** %6, align 8
  store %struct.decision* %65, %struct.decision** %3, align 8
  br label %445

66:                                               ; preds = %53
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @DT_code, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %279

70:                                               ; preds = %66
  %71 = load i32, i32* @NUM_RTX_CODE, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %9, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %10, align 8
  %75 = trunc i64 %72 to i32
  %76 = call i32 @memset(i8* %74, i32 0, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.decision*, %struct.decision** %6, align 8
  %80 = getelementptr inbounds %struct.decision, %struct.decision* %79, i32 0, i32 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %149, %70
  %86 = load %struct.decision*, %struct.decision** %6, align 8
  %87 = load %struct.decision*, %struct.decision** %4, align 8
  %88 = icmp ne %struct.decision* %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.decision*, %struct.decision** %6, align 8
  %91 = getelementptr inbounds %struct.decision, %struct.decision* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.decision*, %struct.decision** %8, align 8
  %96 = icmp eq %struct.decision* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load %struct.decision*, %struct.decision** %6, align 8
  store %struct.decision* %98, %struct.decision** %8, align 8
  br label %99

99:                                               ; preds = %97, %94, %89, %85
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @print_code(i64 %101)
  %103 = load %struct.decision*, %struct.decision** %6, align 8
  %104 = getelementptr inbounds %struct.decision, %struct.decision* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.decision*, %struct.decision** %6, align 8
  %111 = getelementptr inbounds %struct.decision, %struct.decision* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i8, i8* %74, i64 %115
  store i8 1, i8* %116, align 1
  %117 = load %struct.decision*, %struct.decision** %6, align 8
  %118 = getelementptr inbounds %struct.decision, %struct.decision* %117, i32 0, i32 2
  %119 = load %struct.decision*, %struct.decision** %118, align 8
  store %struct.decision* %119, %struct.decision** %6, align 8
  br label %120

120:                                              ; preds = %99
  %121 = load %struct.decision*, %struct.decision** %6, align 8
  %122 = icmp ne %struct.decision* %121, null
  br i1 %122, label %123, label %149

123:                                              ; preds = %120
  %124 = load %struct.decision*, %struct.decision** %6, align 8
  %125 = getelementptr inbounds %struct.decision, %struct.decision* %124, i32 0, i32 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %123
  %131 = load %struct.decision*, %struct.decision** %6, align 8
  %132 = getelementptr inbounds %struct.decision, %struct.decision* %131, i32 0, i32 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DT_code, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load %struct.decision*, %struct.decision** %6, align 8
  %140 = getelementptr inbounds %struct.decision, %struct.decision* %139, i32 0, i32 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %12, align 8
  %145 = getelementptr inbounds i8, i8* %74, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %138, %130, %123, %120
  %150 = phi i1 [ false, %130 ], [ false, %123 ], [ false, %120 ], [ %148, %138 ]
  br i1 %150, label %85, label %151

151:                                              ; preds = %149
  %152 = load %struct.decision*, %struct.decision** %8, align 8
  %153 = icmp ne %struct.decision* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load %struct.decision*, %struct.decision** %8, align 8
  store %struct.decision* %155, %struct.decision** %11, align 8
  br label %158

156:                                              ; preds = %151
  %157 = load %struct.decision*, %struct.decision** %6, align 8
  store %struct.decision* %157, %struct.decision** %11, align 8
  br label %158

158:                                              ; preds = %156, %154
  br label %159

159:                                              ; preds = %240, %158
  %160 = load %struct.decision*, %struct.decision** %6, align 8
  %161 = icmp ne %struct.decision* %160, null
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  %163 = load %struct.decision*, %struct.decision** %6, align 8
  %164 = getelementptr inbounds %struct.decision, %struct.decision* %163, i32 0, i32 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DT_pred, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %162
  %171 = load %struct.decision*, %struct.decision** %6, align 8
  %172 = getelementptr inbounds %struct.decision, %struct.decision* %171, i32 0, i32 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load %struct.pred_data*, %struct.pred_data** %176, align 8
  %178 = icmp ne %struct.pred_data* %177, null
  br label %179

179:                                              ; preds = %170, %162, %159
  %180 = phi i1 [ false, %162 ], [ false, %159 ], [ %178, %170 ]
  br i1 %180, label %181, label %250

181:                                              ; preds = %179
  %182 = load %struct.decision*, %struct.decision** %6, align 8
  %183 = getelementptr inbounds %struct.decision, %struct.decision* %182, i32 0, i32 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %struct.pred_data*, %struct.pred_data** %187, align 8
  store %struct.pred_data* %188, %struct.pred_data** %13, align 8
  store i64 0, i64* %14, align 8
  br label %189

189:                                              ; preds = %210, %181
  %190 = load i64, i64* %14, align 8
  %191 = load i32, i32* @NUM_RTX_CODE, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp ult i64 %190, %192
  br i1 %193, label %194, label %213

194:                                              ; preds = %189
  %195 = load i64, i64* %14, align 8
  %196 = getelementptr inbounds i8, i8* %74, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load %struct.pred_data*, %struct.pred_data** %13, align 8
  %202 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* %14, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %251

209:                                              ; preds = %200, %194
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %14, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %14, align 8
  br label %189

213:                                              ; preds = %189
  store i64 0, i64* %14, align 8
  br label %214

214:                                              ; preds = %237, %213
  %215 = load i64, i64* %14, align 8
  %216 = load i32, i32* @NUM_RTX_CODE, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp ult i64 %215, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %214
  %220 = load %struct.pred_data*, %struct.pred_data** %13, align 8
  %221 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = load i64, i64* %14, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %219
  %228 = load i32, i32* @stdout, align 4
  %229 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  %230 = load i64, i64* %14, align 8
  %231 = call i32 @print_code(i64 %230)
  %232 = load i32, i32* @stdout, align 4
  %233 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  %234 = load i64, i64* %14, align 8
  %235 = getelementptr inbounds i8, i8* %74, i64 %234
  store i8 1, i8* %235, align 1
  br label %236

236:                                              ; preds = %227, %219
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %14, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %14, align 8
  br label %214

240:                                              ; preds = %214
  %241 = load %struct.decision*, %struct.decision** %6, align 8
  %242 = getelementptr inbounds %struct.decision, %struct.decision* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %243)
  %245 = load %struct.decision*, %struct.decision** %6, align 8
  %246 = getelementptr inbounds %struct.decision, %struct.decision* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  %247 = load %struct.decision*, %struct.decision** %6, align 8
  %248 = getelementptr inbounds %struct.decision, %struct.decision* %247, i32 0, i32 2
  %249 = load %struct.decision*, %struct.decision** %248, align 8
  store %struct.decision* %249, %struct.decision** %6, align 8
  br label %159

250:                                              ; preds = %179
  br label %251

251:                                              ; preds = %250, %208
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %253 = load %struct.decision*, %struct.decision** %6, align 8
  %254 = load %struct.decision*, %struct.decision** %11, align 8
  %255 = icmp ne %struct.decision* %253, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %251
  %257 = load %struct.decision*, %struct.decision** %6, align 8
  %258 = icmp ne %struct.decision* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load %struct.decision*, %struct.decision** %6, align 8
  %261 = getelementptr inbounds %struct.decision, %struct.decision* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %262)
  %264 = load %struct.decision*, %struct.decision** %6, align 8
  %265 = getelementptr inbounds %struct.decision, %struct.decision* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  br label %272

266:                                              ; preds = %256
  %267 = load %struct.decision*, %struct.decision** %4, align 8
  %268 = load %struct.decision*, %struct.decision** %4, align 8
  %269 = getelementptr inbounds %struct.decision, %struct.decision* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @write_afterward(%struct.decision* %267, i32 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %272

272:                                              ; preds = %266, %259
  br label %275

273:                                              ; preds = %251
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %275

275:                                              ; preds = %273, %272
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %277 = load %struct.decision*, %struct.decision** %11, align 8
  store %struct.decision* %277, %struct.decision** %3, align 8
  %278 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %278)
  br label %445

279:                                              ; preds = %66
  %280 = load i32, i32* %7, align 4
  %281 = icmp eq i32 %280, 129
  br i1 %281, label %294, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %7, align 4
  %284 = icmp eq i32 %283, 128
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %7, align 4
  %287 = icmp eq i32 %286, 132
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %7, align 4
  %290 = icmp eq i32 %289, 133
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %7, align 4
  %293 = icmp eq i32 %292, 130
  br i1 %293, label %294, label %443

294:                                              ; preds = %291, %288, %285, %282, %279
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %15, align 8
  %295 = load i32, i32* %7, align 4
  %296 = icmp eq i32 %295, 130
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* %5, align 4
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %297, %294
  %302 = load i8*, i8** %15, align 8
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %302)
  %304 = load i32, i32* %7, align 4
  switch i32 %304, label %320 [
    i32 129, label %305
    i32 128, label %308
    i32 132, label %311
    i32 133, label %314
    i32 130, label %317
  ]

305:                                              ; preds = %301
  %306 = load i32, i32* %5, align 4
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %306)
  br label %322

308:                                              ; preds = %301
  %309 = load i32, i32* %5, align 4
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %309)
  br label %322

311:                                              ; preds = %301
  %312 = load i32, i32* %5, align 4
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %312)
  br label %322

314:                                              ; preds = %301
  %315 = load i32, i32* %5, align 4
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %315)
  br label %322

317:                                              ; preds = %301
  %318 = load i32, i32* %5, align 4
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %318)
  br label %322

320:                                              ; preds = %301
  %321 = call i32 (...) @gcc_unreachable()
  br label %322

322:                                              ; preds = %320, %317, %314, %311, %308, %305
  %323 = load i8*, i8** %15, align 8
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %323)
  br label %325

325:                                              ; preds = %427, %322
  %326 = load %struct.decision*, %struct.decision** %4, align 8
  store %struct.decision* %326, %struct.decision** %16, align 8
  br label %327

327:                                              ; preds = %342, %325
  %328 = load %struct.decision*, %struct.decision** %16, align 8
  %329 = load %struct.decision*, %struct.decision** %6, align 8
  %330 = icmp ne %struct.decision* %328, %329
  br i1 %330, label %331, label %346

331:                                              ; preds = %327
  %332 = load %struct.decision*, %struct.decision** %6, align 8
  %333 = getelementptr inbounds %struct.decision, %struct.decision* %332, i32 0, i32 4
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %333, align 8
  %335 = load %struct.decision*, %struct.decision** %16, align 8
  %336 = getelementptr inbounds %struct.decision, %struct.decision* %335, i32 0, i32 4
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = call i64 @nodes_identical_1(%struct.TYPE_11__* %334, %struct.TYPE_11__* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %331
  br label %430

341:                                              ; preds = %331
  br label %342

342:                                              ; preds = %341
  %343 = load %struct.decision*, %struct.decision** %16, align 8
  %344 = getelementptr inbounds %struct.decision, %struct.decision* %343, i32 0, i32 2
  %345 = load %struct.decision*, %struct.decision** %344, align 8
  store %struct.decision* %345, %struct.decision** %16, align 8
  br label %327

346:                                              ; preds = %327
  %347 = load %struct.decision*, %struct.decision** %6, align 8
  %348 = load %struct.decision*, %struct.decision** %4, align 8
  %349 = icmp ne %struct.decision* %347, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %346
  %351 = load %struct.decision*, %struct.decision** %6, align 8
  %352 = getelementptr inbounds %struct.decision, %struct.decision* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %350
  %356 = load %struct.decision*, %struct.decision** %8, align 8
  %357 = icmp eq %struct.decision* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load %struct.decision*, %struct.decision** %6, align 8
  store %struct.decision* %359, %struct.decision** %8, align 8
  br label %360

360:                                              ; preds = %358, %355, %350, %346
  %361 = load i8*, i8** %15, align 8
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* %361)
  %363 = load i32, i32* %7, align 4
  switch i32 %363, label %389 [
    i32 129, label %364
    i32 128, label %373
    i32 132, label %381
    i32 133, label %381
    i32 131, label %381
    i32 130, label %381
  ]

364:                                              ; preds = %360
  %365 = load %struct.decision*, %struct.decision** %6, align 8
  %366 = getelementptr inbounds %struct.decision, %struct.decision* %365, i32 0, i32 4
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = call i8* @GET_MODE_NAME(i32 %370)
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %371)
  br label %391

373:                                              ; preds = %360
  %374 = load %struct.decision*, %struct.decision** %6, align 8
  %375 = getelementptr inbounds %struct.decision, %struct.decision* %374, i32 0, i32 4
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %379)
  br label %391

381:                                              ; preds = %360, %360, %360, %360
  %382 = load %struct.decision*, %struct.decision** %6, align 8
  %383 = getelementptr inbounds %struct.decision, %struct.decision* %382, i32 0, i32 4
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @print_host_wide_int(i32 %387)
  br label %391

389:                                              ; preds = %360
  %390 = call i32 (...) @gcc_unreachable()
  br label %391

391:                                              ; preds = %389, %381, %373, %364
  %392 = load i8*, i8** %15, align 8
  %393 = load %struct.decision*, %struct.decision** %6, align 8
  %394 = getelementptr inbounds %struct.decision, %struct.decision* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %392, i32 %398)
  %400 = load %struct.decision*, %struct.decision** %6, align 8
  %401 = getelementptr inbounds %struct.decision, %struct.decision* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 1
  store i32 1, i32* %404, align 4
  %405 = load %struct.decision*, %struct.decision** %6, align 8
  %406 = getelementptr inbounds %struct.decision, %struct.decision* %405, i32 0, i32 2
  %407 = load %struct.decision*, %struct.decision** %406, align 8
  store %struct.decision* %407, %struct.decision** %6, align 8
  br label %408

408:                                              ; preds = %391
  %409 = load %struct.decision*, %struct.decision** %6, align 8
  %410 = icmp ne %struct.decision* %409, null
  br i1 %410, label %411, label %427

411:                                              ; preds = %408
  %412 = load %struct.decision*, %struct.decision** %6, align 8
  %413 = getelementptr inbounds %struct.decision, %struct.decision* %412, i32 0, i32 4
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %7, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %411
  %420 = load %struct.decision*, %struct.decision** %6, align 8
  %421 = getelementptr inbounds %struct.decision, %struct.decision* %420, i32 0, i32 4
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  %426 = xor i1 %425, true
  br label %427

427:                                              ; preds = %419, %411, %408
  %428 = phi i1 [ false, %411 ], [ false, %408 ], [ %426, %419 ]
  br i1 %428, label %325, label %429

429:                                              ; preds = %427
  br label %430

430:                                              ; preds = %429, %340
  %431 = load i8*, i8** %15, align 8
  %432 = load i8*, i8** %15, align 8
  %433 = load i8*, i8** %15, align 8
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* %431, i8* %432, i8* %433)
  %435 = load %struct.decision*, %struct.decision** %8, align 8
  %436 = icmp ne %struct.decision* %435, null
  br i1 %436, label %437, label %439

437:                                              ; preds = %430
  %438 = load %struct.decision*, %struct.decision** %8, align 8
  br label %441

439:                                              ; preds = %430
  %440 = load %struct.decision*, %struct.decision** %6, align 8
  br label %441

441:                                              ; preds = %439, %437
  %442 = phi %struct.decision* [ %438, %437 ], [ %440, %439 ]
  store %struct.decision* %442, %struct.decision** %3, align 8
  br label %445

443:                                              ; preds = %291
  %444 = load %struct.decision*, %struct.decision** %6, align 8
  store %struct.decision* %444, %struct.decision** %3, align 8
  br label %445

445:                                              ; preds = %443, %441, %275, %64
  %446 = load %struct.decision*, %struct.decision** %3, align 8
  ret %struct.decision* %446
}

declare dso_local i64 @nodes_identical_1(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_code(i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @write_afterward(%struct.decision*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @print_host_wide_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
