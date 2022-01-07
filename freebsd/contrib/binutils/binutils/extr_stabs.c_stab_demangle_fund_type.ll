; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_fund_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_fund_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"long long unsigned int\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"long long int\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"long unsigned int\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"long int\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"short unsigned int\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"short int\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"__wchar_t\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@DEBUG_KIND_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stab_demangle_info*, i8**, i32*)* @stab_demangle_fund_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_demangle_fund_type(%struct.stab_demangle_info* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stab_demangle_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %13, align 8
  br label %24

24:                                               ; preds = %55, %3
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %53 [
    i32 67, label %33
    i32 85, label %38
    i32 83, label %43
    i32 86, label %48
  ]

33:                                               ; preds = %28
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %35, align 8
  br label %55

38:                                               ; preds = %28
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %40, align 8
  br label %55

43:                                               ; preds = %28
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %45, align 8
  br label %55

48:                                               ; preds = %28
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  br label %55

53:                                               ; preds = %28
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %53, %48, %43, %38, %33
  br label %24

56:                                               ; preds = %24
  %57 = load i8**, i8*** %6, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %472 [
    i32 0, label %61
    i32 95, label %61
    i32 118, label %64
    i32 120, label %88
    i32 108, label %117
    i32 105, label %146
    i32 115, label %175
    i32 98, label %204
    i32 99, label %228
    i32 119, label %263
    i32 114, label %288
    i32 100, label %312
    i32 102, label %336
    i32 71, label %360
    i32 48, label %374
    i32 49, label %374
    i32 50, label %374
    i32 51, label %374
    i32 52, label %374
    i32 53, label %374
    i32 54, label %374
    i32 55, label %374
    i32 56, label %374
    i32 57, label %374
    i32 116, label %433
  ]

61:                                               ; preds = %56, %56
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @stab_bad_demangle(i8* %62)
  br label %476

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %69 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @debug_find_named_type(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %79 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @debug_make_void_type(i32 %80)
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %67
  br label %84

84:                                               ; preds = %83, %64
  %85 = load i8**, i8*** %6, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %85, align 8
  br label %476

88:                                               ; preds = %56
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %93 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32 @debug_find_named_type(i32 %94, i8* %98)
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %91
  %106 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %107 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @debug_make_int_type(i32 %108, i32 8, i64 %109)
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %91
  br label %113

113:                                              ; preds = %112, %88
  %114 = load i8**, i8*** %6, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %114, align 8
  br label %476

117:                                              ; preds = %56
  %118 = load i32*, i32** %7, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %122 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %128 = call i32 @debug_find_named_type(i32 %123, i8* %127)
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %120
  %135 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %136 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @debug_make_int_type(i32 %137, i32 4, i64 %138)
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %120
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i8**, i8*** %6, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %143, align 8
  br label %476

146:                                              ; preds = %56
  %147 = load i32*, i32** %7, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %146
  %150 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %151 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %11, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %157 = call i32 @debug_find_named_type(i32 %152, i8* %156)
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %149
  %164 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %165 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @debug_make_int_type(i32 %166, i32 4, i64 %167)
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %163, %149
  br label %171

171:                                              ; preds = %170, %146
  %172 = load i8**, i8*** %6, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %172, align 8
  br label %476

175:                                              ; preds = %56
  %176 = load i32*, i32** %7, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %180 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* %11, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %186 = call i32 @debug_find_named_type(i32 %181, i8* %185)
  %187 = load i32*, i32** %7, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %178
  %193 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %194 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i64, i64* %11, align 8
  %197 = call i32 @debug_make_int_type(i32 %195, i32 2, i64 %196)
  %198 = load i32*, i32** %7, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %192, %178
  br label %200

200:                                              ; preds = %199, %175
  %201 = load i8**, i8*** %6, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %201, align 8
  br label %476

204:                                              ; preds = %56
  %205 = load i32*, i32** %7, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %224

207:                                              ; preds = %204
  %208 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %209 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @debug_find_named_type(i32 %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %212 = load i32*, i32** %7, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %207
  %218 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %219 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @debug_make_bool_type(i32 %220, i32 4)
  %222 = load i32*, i32** %7, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %207
  br label %224

224:                                              ; preds = %223, %204
  %225 = load i8**, i8*** %6, align 8
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %225, align 8
  br label %476

228:                                              ; preds = %56
  %229 = load i32*, i32** %7, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %259

231:                                              ; preds = %228
  %232 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %233 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* %11, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %243

238:                                              ; preds = %231
  %239 = load i64, i64* %12, align 8
  %240 = icmp ne i64 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  br label %243

243:                                              ; preds = %238, %237
  %244 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %237 ], [ %242, %238 ]
  %245 = call i32 @debug_find_named_type(i32 %234, i8* %244)
  %246 = load i32*, i32** %7, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %243
  %252 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %253 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i64, i64* %11, align 8
  %256 = call i32 @debug_make_int_type(i32 %254, i32 1, i64 %255)
  %257 = load i32*, i32** %7, align 8
  store i32 %256, i32* %257, align 4
  br label %258

258:                                              ; preds = %251, %243
  br label %259

259:                                              ; preds = %258, %228
  %260 = load i8**, i8*** %6, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %260, align 8
  br label %476

263:                                              ; preds = %56
  %264 = load i32*, i32** %7, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %284

266:                                              ; preds = %263
  %267 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %268 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @debug_find_named_type(i32 %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %271 = load i32*, i32** %7, align 8
  store i32 %270, i32* %271, align 4
  %272 = load i32*, i32** %7, align 8
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %266
  %277 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %278 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i64, i64* @TRUE, align 8
  %281 = call i32 @debug_make_int_type(i32 %279, i32 2, i64 %280)
  %282 = load i32*, i32** %7, align 8
  store i32 %281, i32* %282, align 4
  br label %283

283:                                              ; preds = %276, %266
  br label %284

284:                                              ; preds = %283, %263
  %285 = load i8**, i8*** %6, align 8
  %286 = load i8*, i8** %285, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %285, align 8
  br label %476

288:                                              ; preds = %56
  %289 = load i32*, i32** %7, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %308

291:                                              ; preds = %288
  %292 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %293 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @debug_find_named_type(i32 %294, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %296 = load i32*, i32** %7, align 8
  store i32 %295, i32* %296, align 4
  %297 = load i32*, i32** %7, align 8
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %291
  %302 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %303 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @debug_make_float_type(i32 %304, i32 8)
  %306 = load i32*, i32** %7, align 8
  store i32 %305, i32* %306, align 4
  br label %307

307:                                              ; preds = %301, %291
  br label %308

308:                                              ; preds = %307, %288
  %309 = load i8**, i8*** %6, align 8
  %310 = load i8*, i8** %309, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %309, align 8
  br label %476

312:                                              ; preds = %56
  %313 = load i32*, i32** %7, align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %332

315:                                              ; preds = %312
  %316 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %317 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @debug_find_named_type(i32 %318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %320 = load i32*, i32** %7, align 8
  store i32 %319, i32* %320, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %315
  %326 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %327 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @debug_make_float_type(i32 %328, i32 8)
  %330 = load i32*, i32** %7, align 8
  store i32 %329, i32* %330, align 4
  br label %331

331:                                              ; preds = %325, %315
  br label %332

332:                                              ; preds = %331, %312
  %333 = load i8**, i8*** %6, align 8
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %333, align 8
  br label %476

336:                                              ; preds = %56
  %337 = load i32*, i32** %7, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %356

339:                                              ; preds = %336
  %340 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %341 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @debug_find_named_type(i32 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %344 = load i32*, i32** %7, align 8
  store i32 %343, i32* %344, align 4
  %345 = load i32*, i32** %7, align 8
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %355

349:                                              ; preds = %339
  %350 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %351 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @debug_make_float_type(i32 %352, i32 4)
  %354 = load i32*, i32** %7, align 8
  store i32 %353, i32* %354, align 4
  br label %355

355:                                              ; preds = %349, %339
  br label %356

356:                                              ; preds = %355, %336
  %357 = load i8**, i8*** %6, align 8
  %358 = load i8*, i8** %357, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %357, align 8
  br label %476

360:                                              ; preds = %56
  %361 = load i8**, i8*** %6, align 8
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %361, align 8
  %364 = load i8**, i8*** %6, align 8
  %365 = load i8*, i8** %364, align 8
  %366 = load i8, i8* %365, align 1
  %367 = call i32 @ISDIGIT(i8 signext %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %360
  %370 = load i8*, i8** %8, align 8
  %371 = call i32 @stab_bad_demangle(i8* %370)
  %372 = load i64, i64* @FALSE, align 8
  store i64 %372, i64* %4, align 8
  br label %504

373:                                              ; preds = %360
  br label %374

374:                                              ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %373
  %375 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %376 = load i8**, i8*** %6, align 8
  %377 = call i32 @stab_demangle_class(%struct.stab_demangle_info* %375, i8** %376, i8** %14)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %381, label %379

379:                                              ; preds = %374
  %380 = load i64, i64* @FALSE, align 8
  store i64 %380, i64* %4, align 8
  br label %504

381:                                              ; preds = %374
  %382 = load i32*, i32** %7, align 8
  %383 = icmp ne i32* %382, null
  br i1 %383, label %384, label %432

384:                                              ; preds = %381
  %385 = load i8*, i8** %14, align 8
  %386 = load i8**, i8*** %6, align 8
  %387 = load i8*, i8** %386, align 8
  %388 = load i8*, i8** %14, align 8
  %389 = ptrtoint i8* %387 to i64
  %390 = ptrtoint i8* %388 to i64
  %391 = sub i64 %389, %390
  %392 = trunc i64 %391 to i32
  %393 = call i8* @savestring(i8* %385, i32 %392)
  store i8* %393, i8** %15, align 8
  %394 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %395 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load i8*, i8** %15, align 8
  %398 = call i32 @debug_find_named_type(i32 %396, i8* %397)
  %399 = load i32*, i32** %7, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i8*, i8** %15, align 8
  %401 = call i32 @free(i8* %400)
  %402 = load i32*, i32** %7, align 8
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %431

406:                                              ; preds = %384
  %407 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %408 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %411 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load i8*, i8** %14, align 8
  %414 = load i8**, i8*** %6, align 8
  %415 = load i8*, i8** %414, align 8
  %416 = load i8*, i8** %14, align 8
  %417 = ptrtoint i8* %415 to i64
  %418 = ptrtoint i8* %416 to i64
  %419 = sub i64 %417, %418
  %420 = trunc i64 %419 to i32
  %421 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %422 = call i32 @stab_find_tagged_type(i32 %409, i32 %412, i8* %413, i32 %420, i32 %421)
  %423 = load i32*, i32** %7, align 8
  store i32 %422, i32* %423, align 4
  %424 = load i32*, i32** %7, align 8
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %430

428:                                              ; preds = %406
  %429 = load i64, i64* @FALSE, align 8
  store i64 %429, i64* %4, align 8
  br label %504

430:                                              ; preds = %406
  br label %431

431:                                              ; preds = %430, %384
  br label %432

432:                                              ; preds = %431, %381
  br label %476

433:                                              ; preds = %56
  %434 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %435 = load i8**, i8*** %6, align 8
  %436 = load i32*, i32** %7, align 8
  %437 = icmp ne i32* %436, null
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  br label %440

439:                                              ; preds = %433
  br label %440

440:                                              ; preds = %439, %438
  %441 = phi i8** [ %16, %438 ], [ null, %439 ]
  %442 = call i32 @stab_demangle_template(%struct.stab_demangle_info* %434, i8** %435, i8** %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %446, label %444

444:                                              ; preds = %440
  %445 = load i64, i64* @FALSE, align 8
  store i64 %445, i64* %4, align 8
  br label %504

446:                                              ; preds = %440
  %447 = load i32*, i32** %7, align 8
  %448 = icmp ne i32* %447, null
  br i1 %448, label %449, label %471

449:                                              ; preds = %446
  %450 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %451 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %454 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i8*, i8** %16, align 8
  %457 = load i8*, i8** %16, align 8
  %458 = call i32 @strlen(i8* %457)
  %459 = load i32, i32* @DEBUG_KIND_CLASS, align 4
  %460 = call i32 @stab_find_tagged_type(i32 %452, i32 %455, i8* %456, i32 %458, i32 %459)
  %461 = load i32*, i32** %7, align 8
  store i32 %460, i32* %461, align 4
  %462 = load i8*, i8** %16, align 8
  %463 = call i32 @free(i8* %462)
  %464 = load i32*, i32** %7, align 8
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %470

468:                                              ; preds = %449
  %469 = load i64, i64* @FALSE, align 8
  store i64 %469, i64* %4, align 8
  br label %504

470:                                              ; preds = %449
  br label %471

471:                                              ; preds = %470, %446
  br label %476

472:                                              ; preds = %56
  %473 = load i8*, i8** %8, align 8
  %474 = call i32 @stab_bad_demangle(i8* %473)
  %475 = load i64, i64* @FALSE, align 8
  store i64 %475, i64* %4, align 8
  br label %504

476:                                              ; preds = %471, %432, %356, %332, %308, %284, %259, %224, %200, %171, %142, %113, %84, %61
  %477 = load i32*, i32** %7, align 8
  %478 = icmp ne i32* %477, null
  br i1 %478, label %479, label %502

479:                                              ; preds = %476
  %480 = load i64, i64* %9, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %479
  %483 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %484 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32*, i32** %7, align 8
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @debug_make_const_type(i32 %485, i32 %487)
  %489 = load i32*, i32** %7, align 8
  store i32 %488, i32* %489, align 4
  br label %490

490:                                              ; preds = %482, %479
  %491 = load i64, i64* %10, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %490
  %494 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %495 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = load i32*, i32** %7, align 8
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @debug_make_volatile_type(i32 %496, i32 %498)
  %500 = load i32*, i32** %7, align 8
  store i32 %499, i32* %500, align 4
  br label %501

501:                                              ; preds = %493, %490
  br label %502

502:                                              ; preds = %501, %476
  %503 = load i64, i64* @TRUE, align 8
  store i64 %503, i64* %4, align 8
  br label %504

504:                                              ; preds = %502, %472, %468, %444, %428, %379, %369
  %505 = load i64, i64* %4, align 8
  ret i64 %505
}

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i32 @debug_find_named_type(i32, i8*) #1

declare dso_local i32 @debug_make_void_type(i32) #1

declare dso_local i32 @debug_make_int_type(i32, i32, i64) #1

declare dso_local i32 @debug_make_bool_type(i32, i32) #1

declare dso_local i32 @debug_make_float_type(i32, i32) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @stab_demangle_class(%struct.stab_demangle_info*, i8**, i8**) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_find_tagged_type(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @stab_demangle_template(%struct.stab_demangle_info*, i8**, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @debug_make_const_type(i32, i32) #1

declare dso_local i32 @debug_make_volatile_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
