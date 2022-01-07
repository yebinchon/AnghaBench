; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_joust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_joust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i64, i64, i64, %struct.TYPE_10__**, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@warn_sign_promo = common dso_local global i64 0, align 8
@cr_std = common dso_local global i64 0, align 8
@cr_promotion = common dso_local global i64 0, align 8
@ck_std = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@OPT_Wsign_promo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"passing %qT chooses %qT over %qT\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"  in call to %qD\00", align 1
@warn_conversion = common dso_local global i64 0, align 8
@OPT_Wconversion = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"choosing %qD over %qD\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"  for conversion from %qT to %qT\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"  because conversion sequence for the argument is better\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i32 0, align 4
@cr_identity = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [138 x i8] c"ISO C++ says that these are ambiguous, even though the worst conversion for the first is better than the worst conversion for the second:\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"candidate 1:\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"candidate 2:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_candidate*, %struct.z_candidate*, i32)* @joust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joust(%struct.z_candidate* %0, %struct.z_candidate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_candidate*, align 8
  %6 = alloca %struct.z_candidate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.z_candidate*, align 8
  %22 = alloca %struct.z_candidate*, align 8
  %23 = alloca %struct.z_candidate*, align 8
  %24 = alloca %struct.z_candidate*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.z_candidate*, align 8
  %32 = alloca %struct.z_candidate*, align 8
  store %struct.z_candidate* %0, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %1, %struct.z_candidate** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %34 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %37 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %668

41:                                               ; preds = %3
  %42 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %43 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %46 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %668

50:                                               ; preds = %41
  %51 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %52 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %55 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %60 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @IS_TYPE_OR_DECL_P(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %668

65:                                               ; preds = %58, %50
  %66 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %67 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %71 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %65
  %75 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %76 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DECL_STATIC_FUNCTION_P(i64 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %80 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @DECL_STATIC_FUNCTION_P(i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @gcc_assert(i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %94

91:                                               ; preds = %74
  store i32 1, i32* %9, align 4
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %91, %90
  br label %95

95:                                               ; preds = %94, %65
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %249, %95
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %252

100:                                              ; preds = %96
  %101 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %102 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %101, i32 0, i32 3
  %103 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %103, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %15, align 8
  %110 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %111 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %110, i32 0, i32 3
  %112 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %112, i64 %116
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %16, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %121 = call i32 @compare_ics(%struct.TYPE_10__* %119, %struct.TYPE_10__* %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %248

124:                                              ; preds = %100
  %125 = load i64, i64* @warn_sign_promo, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %238

127:                                              ; preds = %124
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %129 = call i64 @CONVERSION_RANK(%struct.TYPE_10__* %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %131 = call i64 @CONVERSION_RANK(%struct.TYPE_10__* %130)
  %132 = add nsw i64 %129, %131
  %133 = load i64, i64* @cr_std, align 8
  %134 = load i64, i64* @cr_promotion, align 8
  %135 = add nsw i64 %133, %134
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %238

137:                                              ; preds = %127
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ck_std, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %238

143:                                              ; preds = %137
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ck_std, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %238

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @TREE_CODE(i64 %152)
  %154 = load i64, i64* @INTEGER_TYPE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %238

156:                                              ; preds = %149
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @TREE_CODE(i64 %159)
  %161 = load i64, i64* @INTEGER_TYPE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %238

163:                                              ; preds = %156
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @TYPE_PRECISION(i64 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @TYPE_PRECISION(i64 %170)
  %172 = icmp eq i64 %167, %171
  br i1 %172, label %173, label %238

173:                                              ; preds = %163
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @TYPE_UNSIGNED(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %173
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @TREE_CODE(i64 %188)
  %190 = load i64, i64* @ENUMERAL_TYPE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %238

192:                                              ; preds = %182, %173
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %18, align 8
  %199 = load i32, i32* %17, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %192
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %19, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %20, align 8
  %208 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %208, %struct.z_candidate** %21, align 8
  %209 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  store %struct.z_candidate* %209, %struct.z_candidate** %22, align 8
  br label %219

210:                                              ; preds = %192
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %19, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %20, align 8
  %217 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  store %struct.z_candidate* %217, %struct.z_candidate** %21, align 8
  %218 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %218, %struct.z_candidate** %22, align 8
  br label %219

219:                                              ; preds = %210, %201
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i32, i32* @OPT_Wsign_promo, align 4
  %224 = load i64, i64* %18, align 8
  %225 = load i64, i64* %19, align 8
  %226 = load i64, i64* %20, align 8
  %227 = call i32 (i32, i8*, i64, ...) @warning(i32 %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %224, i64 %225, i64 %226)
  %228 = load i32, i32* @OPT_Wsign_promo, align 4
  %229 = load %struct.z_candidate*, %struct.z_candidate** %21, align 8
  %230 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 (i32, i8*, i64, ...) @warning(i32 %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %231)
  br label %237

233:                                              ; preds = %219
  %234 = load %struct.z_candidate*, %struct.z_candidate** %21, align 8
  %235 = load %struct.z_candidate*, %struct.z_candidate** %22, align 8
  %236 = call i32 @add_warning(%struct.z_candidate* %234, %struct.z_candidate* %235)
  br label %237

237:                                              ; preds = %233, %222
  br label %238

238:                                              ; preds = %237, %182, %163, %156, %149, %143, %137, %127, %124
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store i32 0, i32* %8, align 4
  br label %565

246:                                              ; preds = %241, %238
  %247 = load i32, i32* %17, align 4
  store i32 %247, i32* %8, align 4
  br label %248

248:                                              ; preds = %246, %100
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %11, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %11, align 8
  br label %96

252:                                              ; preds = %96
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %395

255:                                              ; preds = %252
  %256 = load i64, i64* @warn_conversion, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %395

258:                                              ; preds = %255
  %259 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %260 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %259, i32 0, i32 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = icmp ne %struct.TYPE_10__* %261, null
  br i1 %262, label %263, label %395

263:                                              ; preds = %258
  %264 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %265 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @DECL_CONSTRUCTOR_P(i64 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %271 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @DECL_CONSTRUCTOR_P(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %395, label %275

275:                                              ; preds = %269, %263
  %276 = load i32, i32* %8, align 4
  %277 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %278 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %277, i32 0, i32 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %281 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %280, i32 0, i32 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = call i32 @compare_ics(%struct.TYPE_10__* %279, %struct.TYPE_10__* %282)
  %284 = icmp ne i32 %276, %283
  br i1 %284, label %285, label %395

285:                                              ; preds = %275
  store i32 0, i32* %25, align 4
  %286 = load i32, i32* %8, align 4
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %289, %struct.z_candidate** %23, align 8
  %290 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  store %struct.z_candidate* %290, %struct.z_candidate** %24, align 8
  br label %294

291:                                              ; preds = %285
  %292 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  store %struct.z_candidate* %292, %struct.z_candidate** %23, align 8
  %293 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %293, %struct.z_candidate** %24, align 8
  br label %294

294:                                              ; preds = %291, %288
  %295 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %296 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = call i64 @DECL_CONTEXT(i64 %297)
  %299 = load %struct.z_candidate*, %struct.z_candidate** %24, align 8
  %300 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = call i64 @DECL_CONTEXT(i64 %301)
  %303 = icmp eq i64 %298, %302
  br i1 %303, label %304, label %348

304:                                              ; preds = %294
  %305 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %306 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = call i64 @DECL_CONSTRUCTOR_P(i64 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %348, label %310

310:                                              ; preds = %304
  %311 = load %struct.z_candidate*, %struct.z_candidate** %24, align 8
  %312 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = call i64 @DECL_CONSTRUCTOR_P(i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %348, label %316

316:                                              ; preds = %310
  %317 = load %struct.z_candidate*, %struct.z_candidate** %24, align 8
  %318 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = call i64 @TREE_TYPE(i64 %319)
  %321 = call i64 @TREE_TYPE(i64 %320)
  store i64 %321, i64* %26, align 8
  %322 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %323 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = call i64 @TREE_TYPE(i64 %324)
  %326 = call i64 @TREE_TYPE(i64 %325)
  store i64 %326, i64* %27, align 8
  %327 = load i64, i64* %26, align 8
  %328 = call i64 @TREE_CODE(i64 %327)
  %329 = load i64, i64* %27, align 8
  %330 = call i64 @TREE_CODE(i64 %329)
  %331 = icmp eq i64 %328, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %316
  %333 = load i64, i64* %26, align 8
  %334 = call i64 @POINTER_TYPE_P(i64 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = load i64, i64* %26, align 8
  %338 = call i64 @TREE_TYPE(i64 %337)
  store i64 %338, i64* %26, align 8
  %339 = load i64, i64* %27, align 8
  %340 = call i64 @TREE_TYPE(i64 %339)
  store i64 %340, i64* %27, align 8
  br label %341

341:                                              ; preds = %336, %332, %316
  %342 = load i64, i64* %26, align 8
  %343 = load i64, i64* %27, align 8
  %344 = call i32 @comp_ptr_ttypes(i64 %342, i64 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  store i32 1, i32* %25, align 4
  br label %347

347:                                              ; preds = %346, %341
  br label %349

348:                                              ; preds = %310, %304, %294
  store i32 1, i32* %25, align 4
  br label %349

349:                                              ; preds = %348, %347
  %350 = load i32, i32* %25, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %349
  br label %394

353:                                              ; preds = %349
  %354 = load i32, i32* %7, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %389

356:                                              ; preds = %353
  %357 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %358 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %357, i32 0, i32 3
  %359 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %359, i64 0
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %360, align 8
  %362 = call i64 @source_type(%struct.TYPE_10__* %361)
  store i64 %362, i64* %28, align 8
  %363 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %364 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = call i64 @DECL_CONSTRUCTOR_P(i64 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %356
  %369 = load i64, i64* %28, align 8
  %370 = call i64 @TREE_TYPE(i64 %369)
  store i64 %370, i64* %28, align 8
  br label %371

371:                                              ; preds = %368, %356
  %372 = load i32, i32* @OPT_Wconversion, align 4
  %373 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %374 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.z_candidate*, %struct.z_candidate** %24, align 8
  %377 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = call i32 (i32, i8*, i64, ...) @warning(i32 %372, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %375, i64 %378)
  %380 = load i32, i32* @OPT_Wconversion, align 4
  %381 = load i64, i64* %28, align 8
  %382 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %383 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %382, i32 0, i32 4
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = call i32 (i32, i8*, i64, ...) @warning(i32 %380, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %381, i64 %386)
  %388 = call i32 @inform(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %393

389:                                              ; preds = %353
  %390 = load %struct.z_candidate*, %struct.z_candidate** %23, align 8
  %391 = load %struct.z_candidate*, %struct.z_candidate** %24, align 8
  %392 = call i32 @add_warning(%struct.z_candidate* %390, %struct.z_candidate* %391)
  br label %393

393:                                              ; preds = %389, %371
  br label %394

394:                                              ; preds = %393, %352
  br label %395

395:                                              ; preds = %394, %275, %269, %258, %255, %252
  %396 = load i32, i32* %8, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = load i32, i32* %8, align 4
  store i32 %399, i32* %4, align 4
  br label %668

400:                                              ; preds = %395
  %401 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %402 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %401, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %400
  %406 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %407 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %406, i32 0, i32 5
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %405
  store i32 1, i32* %4, align 4
  br label %668

411:                                              ; preds = %405, %400
  %412 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %413 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %412, i32 0, i32 5
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %411
  %417 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %418 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %417, i32 0, i32 5
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %416
  store i32 -1, i32* %4, align 4
  br label %668

422:                                              ; preds = %416, %411
  br label %423

423:                                              ; preds = %422
  %424 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %425 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %456

428:                                              ; preds = %423
  %429 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %430 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %429, i32 0, i32 5
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %456

433:                                              ; preds = %428
  %434 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %435 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %434, i32 0, i32 5
  %436 = load i64, i64* %435, align 8
  %437 = call i32 @TI_TEMPLATE(i64 %436)
  %438 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %439 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %438, i32 0, i32 5
  %440 = load i64, i64* %439, align 8
  %441 = call i32 @TI_TEMPLATE(i64 %440)
  %442 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %443 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %446 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = call i64 @DECL_CONSTRUCTOR_P(i64 %447)
  %449 = add i64 %444, %448
  %450 = call i32 @more_specialized_fn(i32 %437, i32 %441, i64 %449)
  store i32 %450, i32* %8, align 4
  %451 = load i32, i32* %8, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %433
  %454 = load i32, i32* %8, align 4
  store i32 %454, i32* %4, align 4
  br label %668

455:                                              ; preds = %433
  br label %456

456:                                              ; preds = %455, %428, %423
  %457 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %458 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %457, i32 0, i32 4
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %458, align 8
  %460 = icmp ne %struct.TYPE_10__* %459, null
  br i1 %460, label %461, label %474

461:                                              ; preds = %456
  %462 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %463 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %462, i32 0, i32 4
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %463, align 8
  %465 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %466 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %465, i32 0, i32 4
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %466, align 8
  %468 = call i32 @compare_ics(%struct.TYPE_10__* %464, %struct.TYPE_10__* %467)
  store i32 %468, i32* %8, align 4
  %469 = load i32, i32* %8, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %461
  %472 = load i32, i32* %8, align 4
  store i32 %472, i32* %4, align 4
  br label %668

473:                                              ; preds = %461
  br label %474

474:                                              ; preds = %473, %456
  %475 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %476 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = call i64 @TREE_CODE(i64 %477)
  %479 = load i64, i64* @IDENTIFIER_NODE, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %488, label %481

481:                                              ; preds = %474
  %482 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %483 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = call i64 @TREE_CODE(i64 %484)
  %486 = load i64, i64* @IDENTIFIER_NODE, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %542

488:                                              ; preds = %481, %474
  store i64 0, i64* %11, align 8
  br label %489

489:                                              ; preds = %514, %488
  %490 = load i64, i64* %11, align 8
  %491 = load i64, i64* %12, align 8
  %492 = icmp ult i64 %490, %491
  br i1 %492, label %493, label %517

493:                                              ; preds = %489
  %494 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %495 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %494, i32 0, i32 3
  %496 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %495, align 8
  %497 = load i64, i64* %11, align 8
  %498 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %496, i64 %497
  %499 = load %struct.TYPE_10__*, %struct.TYPE_10__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %503 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %502, i32 0, i32 3
  %504 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %503, align 8
  %505 = load i64, i64* %11, align 8
  %506 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %504, i64 %505
  %507 = load %struct.TYPE_10__*, %struct.TYPE_10__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = call i32 @same_type_p(i64 %501, i64 %509)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %493
  br label %517

513:                                              ; preds = %493
  br label %514

514:                                              ; preds = %513
  %515 = load i64, i64* %11, align 8
  %516 = add i64 %515, 1
  store i64 %516, i64* %11, align 8
  br label %489

517:                                              ; preds = %512, %489
  %518 = load i64, i64* %11, align 8
  %519 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %520 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %519, i32 0, i32 2
  %521 = load i64, i64* %520, align 8
  %522 = icmp eq i64 %518, %521
  br i1 %522, label %523, label %541

523:                                              ; preds = %517
  %524 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %525 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %528 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = icmp eq i64 %526, %529
  br i1 %530, label %531, label %532

531:                                              ; preds = %523
  store i32 1, i32* %4, align 4
  br label %668

532:                                              ; preds = %523
  %533 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %534 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %533, i32 0, i32 1
  %535 = load i64, i64* %534, align 8
  %536 = call i64 @TREE_CODE(i64 %535)
  %537 = load i64, i64* @IDENTIFIER_NODE, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %532
  store i32 -1, i32* %4, align 4
  br label %668

540:                                              ; preds = %532
  store i32 1, i32* %4, align 4
  br label %668

541:                                              ; preds = %517
  br label %542

542:                                              ; preds = %541, %481
  %543 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %544 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %543, i32 0, i32 1
  %545 = load i64, i64* %544, align 8
  %546 = call i64 @DECL_P(i64 %545)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %564

548:                                              ; preds = %542
  %549 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %550 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = call i64 @DECL_P(i64 %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %564

554:                                              ; preds = %548
  %555 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %556 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %555, i32 0, i32 1
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %559 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %558, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = call i64 @equal_functions(i64 %557, i64 %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %554
  store i32 1, i32* %4, align 4
  br label %668

564:                                              ; preds = %554, %548, %542
  br label %565

565:                                              ; preds = %564, %245
  %566 = load i32, i32* @pedantic, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %662, label %568

568:                                              ; preds = %565
  %569 = load i64, i64* @cr_identity, align 8
  store i64 %569, i64* %29, align 8
  %570 = load i64, i64* @cr_identity, align 8
  store i64 %570, i64* %30, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %31, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %32, align 8
  store i64 0, i64* %11, align 8
  br label %571

571:                                              ; preds = %624, %568
  %572 = load i64, i64* %11, align 8
  %573 = load i64, i64* %12, align 8
  %574 = icmp ult i64 %572, %573
  br i1 %574, label %575, label %627

575:                                              ; preds = %571
  %576 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %577 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %576, i32 0, i32 3
  %578 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %577, align 8
  %579 = load i64, i64* %11, align 8
  %580 = load i32, i32* %9, align 4
  %581 = sext i32 %580 to i64
  %582 = add i64 %579, %581
  %583 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %578, i64 %582
  %584 = load %struct.TYPE_10__*, %struct.TYPE_10__** %583, align 8
  %585 = call i64 @CONVERSION_RANK(%struct.TYPE_10__* %584)
  %586 = load i64, i64* %29, align 8
  %587 = icmp sgt i64 %585, %586
  br i1 %587, label %588, label %599

588:                                              ; preds = %575
  %589 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  %590 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %589, i32 0, i32 3
  %591 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %590, align 8
  %592 = load i64, i64* %11, align 8
  %593 = load i32, i32* %9, align 4
  %594 = sext i32 %593 to i64
  %595 = add i64 %592, %594
  %596 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %591, i64 %595
  %597 = load %struct.TYPE_10__*, %struct.TYPE_10__** %596, align 8
  %598 = call i64 @CONVERSION_RANK(%struct.TYPE_10__* %597)
  store i64 %598, i64* %29, align 8
  br label %599

599:                                              ; preds = %588, %575
  %600 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %601 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %600, i32 0, i32 3
  %602 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %601, align 8
  %603 = load i64, i64* %11, align 8
  %604 = load i32, i32* %10, align 4
  %605 = sext i32 %604 to i64
  %606 = add i64 %603, %605
  %607 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %602, i64 %606
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %607, align 8
  %609 = call i64 @CONVERSION_RANK(%struct.TYPE_10__* %608)
  %610 = load i64, i64* %30, align 8
  %611 = icmp sgt i64 %609, %610
  br i1 %611, label %612, label %623

612:                                              ; preds = %599
  %613 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %614 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %613, i32 0, i32 3
  %615 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %614, align 8
  %616 = load i64, i64* %11, align 8
  %617 = load i32, i32* %10, align 4
  %618 = sext i32 %617 to i64
  %619 = add i64 %616, %618
  %620 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %615, i64 %619
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %620, align 8
  %622 = call i64 @CONVERSION_RANK(%struct.TYPE_10__* %621)
  store i64 %622, i64* %30, align 8
  br label %623

623:                                              ; preds = %612, %599
  br label %624

624:                                              ; preds = %623
  %625 = load i64, i64* %11, align 8
  %626 = add i64 %625, 1
  store i64 %626, i64* %11, align 8
  br label %571

627:                                              ; preds = %571
  %628 = load i64, i64* %29, align 8
  %629 = load i64, i64* %30, align 8
  %630 = icmp slt i64 %628, %629
  br i1 %630, label %631, label %634

631:                                              ; preds = %627
  store i32 1, i32* %8, align 4
  %632 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %632, %struct.z_candidate** %31, align 8
  %633 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  store %struct.z_candidate* %633, %struct.z_candidate** %32, align 8
  br label %634

634:                                              ; preds = %631, %627
  %635 = load i64, i64* %29, align 8
  %636 = load i64, i64* %30, align 8
  %637 = icmp sgt i64 %635, %636
  br i1 %637, label %638, label %641

638:                                              ; preds = %634
  store i32 -1, i32* %8, align 4
  %639 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  store %struct.z_candidate* %639, %struct.z_candidate** %31, align 8
  %640 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  store %struct.z_candidate* %640, %struct.z_candidate** %32, align 8
  br label %641

641:                                              ; preds = %638, %634
  %642 = load i32, i32* %8, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %661

644:                                              ; preds = %641
  %645 = load i32, i32* %7, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %655

647:                                              ; preds = %644
  %648 = call i32 @pedwarn(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.5, i64 0, i64 0))
  %649 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %650 = load %struct.z_candidate*, %struct.z_candidate** %31, align 8
  %651 = call i32 @print_z_candidate(i32 %649, %struct.z_candidate* %650)
  %652 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %653 = load %struct.z_candidate*, %struct.z_candidate** %32, align 8
  %654 = call i32 @print_z_candidate(i32 %652, %struct.z_candidate* %653)
  br label %659

655:                                              ; preds = %644
  %656 = load %struct.z_candidate*, %struct.z_candidate** %31, align 8
  %657 = load %struct.z_candidate*, %struct.z_candidate** %32, align 8
  %658 = call i32 @add_warning(%struct.z_candidate* %656, %struct.z_candidate* %657)
  br label %659

659:                                              ; preds = %655, %647
  %660 = load i32, i32* %8, align 4
  store i32 %660, i32* %4, align 4
  br label %668

661:                                              ; preds = %641
  br label %662

662:                                              ; preds = %661, %565
  %663 = load i32, i32* %8, align 4
  %664 = icmp ne i32 %663, 0
  %665 = xor i1 %664, true
  %666 = zext i1 %665 to i32
  %667 = call i32 @gcc_assert(i32 %666)
  store i32 0, i32* %4, align 4
  br label %668

668:                                              ; preds = %662, %659, %563, %540, %539, %531, %471, %453, %421, %410, %398, %64, %49, %40
  %669 = load i32, i32* %4, align 4
  ret i32 %669
}

declare dso_local i64 @IS_TYPE_OR_DECL_P(i64) #1

declare dso_local i32 @DECL_STATIC_FUNCTION_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @compare_ics(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @CONVERSION_RANK(%struct.TYPE_10__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @warning(i32, i8*, i64, ...) #1

declare dso_local i32 @add_warning(%struct.z_candidate*, %struct.z_candidate*) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @comp_ptr_ttypes(i64, i64) #1

declare dso_local i64 @source_type(%struct.TYPE_10__*) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i32 @more_specialized_fn(i32, i32, i64) #1

declare dso_local i32 @TI_TEMPLATE(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @equal_functions(i64, i64) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @print_z_candidate(i32, %struct.z_candidate*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
