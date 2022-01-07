; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_func_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_func_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8** }

@.str = private unnamed_addr constant [23 x i8] c"d->p (org str) is NULL\00", align 1
@ENCODE_OP_CT = common dso_local global i8* null, align 8
@ENCODE_OP = common dso_local global i64 0, align 8
@ENCODE_FUNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@ENCODE_OP_USER = common dso_local global i64 0, align 8
@ENCODE_OP_TF = common dso_local global i64 0, align 8
@ENCODE_OP_TI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"_$_\00", align 1
@ENCODE_OP_DT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"_vt$\00", align 1
@ENCODE_OP_VT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c" virtual table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_func_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_func_name(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %7 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %8 = icmp eq %struct.demangle_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %426

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %11 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %12 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i1 [ false, %10 ], [ true, %15 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %21 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 95
  br i1 %25, label %26, label %303

26:                                               ; preds = %16
  %27 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %28 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %34, label %303

34:                                               ; preds = %26
  %35 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %36 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %36, align 8
  %39 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %40 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 81
  br i1 %44, label %45, label %70

45:                                               ; preds = %34
  %46 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %47 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @ELFTC_ISDIGIT(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %55 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  %58 = load i8*, i8** @ENCODE_OP_CT, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %61 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %63 = call i32 @read_qual_name(%struct.demangle_data* %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %426

66:                                               ; preds = %53
  %67 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %68 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %67, i32 0, i32 3
  %69 = call i32 @vector_str_pop(%struct.TYPE_4__* %68)
  store i32 %69, i32* %2, align 4
  br label %426

70:                                               ; preds = %45, %34
  %71 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %72 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @ELFTC_ISDIGIT(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i8*, i8** @ENCODE_OP_CT, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %81 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %83 = call i32 @read_class(%struct.demangle_data* %82)
  store i32 %83, i32* %2, align 4
  br label %426

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* @ENCODE_OP, align 8
  %87 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %88 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %90 = call i32 @read_op(%struct.demangle_data* %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load i64, i64* @ENCODE_FUNC, align 8
  %94 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %95 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %97 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %96, i32 0, i32 3
  %98 = call i32 @VEC_PUSH_STR(%struct.TYPE_4__* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %426

101:                                              ; preds = %92
  %102 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %103 = call i32 @read_func(%struct.demangle_data* %102)
  store i32 %103, i32* %2, align 4
  br label %426

104:                                              ; preds = %85
  %105 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %106 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ENCODE_OP_USER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %112 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ENCODE_OP_TF, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %118 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ENCODE_OP_TI, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %110, %104
  store i32 1, i32* %2, align 4
  br label %426

123:                                              ; preds = %116
  %124 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %125 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %127, i8** %125, align 8
  %128 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %129 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 67
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %136 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %136, align 8
  %139 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %140 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %134, %123
  %142 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %143 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 81
  br i1 %147, label %148, label %227

148:                                              ; preds = %141
  %149 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %150 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @ELFTC_ISDIGIT(i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %227

156:                                              ; preds = %148
  %157 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %158 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %158, align 8
  %161 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %162 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %169 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %173 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %171, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strlen(i8* %179)
  store i64 %180, i64* %4, align 8
  %181 = load i64, i64* %4, align 8
  %182 = add i64 %181, 1
  %183 = mul i64 1, %182
  %184 = trunc i64 %183 to i32
  %185 = call i8* @malloc(i32 %184)
  store i8* %185, i8** %6, align 8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %426

188:                                              ; preds = %156
  %189 = load i8*, i8** %6, align 8
  %190 = load i64, i64* %4, align 8
  %191 = add i64 %190, 1
  %192 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %193 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i8**, i8*** %194, align 8
  %196 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %197 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %195, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @snprintf(i8* %189, i64 %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %203)
  %205 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %206 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %205, i32 0, i32 3
  %207 = call i32 @vector_str_pop(%struct.TYPE_4__* %206)
  %208 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %209 = call i32 @read_qual_name(%struct.demangle_data* %208)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %188
  br label %422

212:                                              ; preds = %188
  %213 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %214 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %213, i32 0, i32 3
  %215 = call i32 @VEC_PUSH_STR(%struct.TYPE_4__* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %422

218:                                              ; preds = %212
  %219 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %220 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %219, i32 0, i32 3
  %221 = load i8*, i8** %6, align 8
  %222 = load i64, i64* %4, align 8
  %223 = call i32 @vector_str_push(%struct.TYPE_4__* %220, i8* %221, i64 %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %422

226:                                              ; preds = %218
  store i32 1, i32* %5, align 4
  br label %302

227:                                              ; preds = %148, %141
  %228 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %229 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i8, i8* %230, align 1
  %232 = call i64 @ELFTC_ISDIGIT(i8 signext %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %301

234:                                              ; preds = %227
  %235 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %236 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp sgt i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  %242 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %243 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i8**, i8*** %244, align 8
  %246 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %247 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %245, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @strlen(i8* %253)
  store i64 %254, i64* %4, align 8
  %255 = load i64, i64* %4, align 8
  %256 = add i64 %255, 1
  %257 = mul i64 1, %256
  %258 = trunc i64 %257 to i32
  %259 = call i8* @malloc(i32 %258)
  store i8* %259, i8** %6, align 8
  %260 = icmp eq i8* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %234
  store i32 0, i32* %2, align 4
  br label %426

262:                                              ; preds = %234
  %263 = load i8*, i8** %6, align 8
  %264 = load i64, i64* %4, align 8
  %265 = add i64 %264, 1
  %266 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %267 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i8**, i8*** %268, align 8
  %270 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %271 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %269, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @snprintf(i8* %263, i64 %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %277)
  %279 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %280 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %279, i32 0, i32 3
  %281 = call i32 @vector_str_pop(%struct.TYPE_4__* %280)
  %282 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %283 = call i32 @read_class(%struct.demangle_data* %282)
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %262
  br label %422

286:                                              ; preds = %262
  %287 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %288 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %287, i32 0, i32 3
  %289 = call i32 @VEC_PUSH_STR(%struct.TYPE_4__* %288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %422

292:                                              ; preds = %286
  %293 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %294 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %293, i32 0, i32 3
  %295 = load i8*, i8** %6, align 8
  %296 = load i64, i64* %4, align 8
  %297 = call i32 @vector_str_push(%struct.TYPE_4__* %294, i8* %295, i64 %296)
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %422

300:                                              ; preds = %292
  store i32 1, i32* %5, align 4
  br label %301

301:                                              ; preds = %300, %227
  br label %302

302:                                              ; preds = %301, %226
  br label %421

303:                                              ; preds = %26, %16
  %304 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %305 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call i64 @memcmp(i8* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %356

309:                                              ; preds = %303
  %310 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %311 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 3
  store i8* %313, i8** %311, align 8
  %314 = load i64, i64* @ENCODE_OP_DT, align 8
  %315 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %316 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %315, i32 0, i32 1
  store i64 %314, i64* %316, align 8
  %317 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %318 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 81
  br i1 %322, label %323, label %344

323:                                              ; preds = %309
  %324 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %325 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  %328 = load i8, i8* %327, align 1
  %329 = call i64 @ELFTC_ISDIGIT(i8 signext %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %323
  %332 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %333 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %333, align 8
  %336 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %337 = call i32 @read_qual_name(%struct.demangle_data* %336)
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %331
  store i32 0, i32* %2, align 4
  br label %426

340:                                              ; preds = %331
  %341 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %342 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %341, i32 0, i32 3
  %343 = call i32 @vector_str_pop(%struct.TYPE_4__* %342)
  store i32 %343, i32* %2, align 4
  br label %426

344:                                              ; preds = %323, %309
  %345 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %346 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = load i8, i8* %347, align 1
  %349 = call i64 @ELFTC_ISDIGIT(i8 signext %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %344
  %352 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %353 = call i32 @read_class(%struct.demangle_data* %352)
  store i32 %353, i32* %2, align 4
  br label %426

354:                                              ; preds = %344
  br label %355

355:                                              ; preds = %354
  store i32 0, i32* %2, align 4
  br label %426

356:                                              ; preds = %303
  %357 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %358 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = call i64 @memcmp(i8* %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %418

362:                                              ; preds = %356
  %363 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %364 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 4
  store i8* %366, i8** %364, align 8
  %367 = load i64, i64* @ENCODE_OP_VT, align 8
  %368 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %369 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %368, i32 0, i32 1
  store i64 %367, i64* %369, align 8
  %370 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %371 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 81
  br i1 %375, label %376, label %400

376:                                              ; preds = %362
  %377 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %378 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %377, i32 0, i32 0
  %379 = load i8*, i8** %378, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 1
  %381 = load i8, i8* %380, align 1
  %382 = call i64 @ELFTC_ISDIGIT(i8 signext %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %400

384:                                              ; preds = %376
  %385 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %386 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %386, align 8
  %389 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %390 = call i32 @read_qual_name(%struct.demangle_data* %389)
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  store i32 0, i32* %2, align 4
  br label %426

393:                                              ; preds = %384
  %394 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %395 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %394, i32 0, i32 3
  %396 = call i32 @vector_str_pop(%struct.TYPE_4__* %395)
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  store i32 0, i32* %2, align 4
  br label %426

399:                                              ; preds = %393
  br label %414

400:                                              ; preds = %376, %362
  %401 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %402 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = load i8, i8* %403, align 1
  %405 = call i64 @ELFTC_ISDIGIT(i8 signext %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %400
  %408 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %409 = call i32 @read_class(%struct.demangle_data* %408)
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %407
  store i32 0, i32* %2, align 4
  br label %426

412:                                              ; preds = %407
  br label %413

413:                                              ; preds = %412, %400
  br label %414

414:                                              ; preds = %413, %399
  %415 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %416 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %415, i32 0, i32 3
  %417 = call i32 @VEC_PUSH_STR(%struct.TYPE_4__* %416, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 %417, i32* %2, align 4
  br label %426

418:                                              ; preds = %356
  %419 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %420 = call i32 @read_func(%struct.demangle_data* %419)
  store i32 %420, i32* %2, align 4
  br label %426

421:                                              ; preds = %302
  br label %422

422:                                              ; preds = %421, %299, %291, %285, %225, %217, %211
  %423 = load i8*, i8** %6, align 8
  %424 = call i32 @free(i8* %423)
  %425 = load i32, i32* %5, align 4
  store i32 %425, i32* %2, align 4
  br label %426

426:                                              ; preds = %422, %418, %414, %411, %398, %392, %355, %351, %340, %339, %261, %187, %122, %101, %100, %77, %66, %65, %9
  %427 = load i32, i32* %2, align 4
  ret i32 %427
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i32 @read_qual_name(%struct.demangle_data*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_4__*) #1

declare dso_local i32 @read_class(%struct.demangle_data*) #1

declare dso_local i32 @read_op(%struct.demangle_data*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @read_func(%struct.demangle_data*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
