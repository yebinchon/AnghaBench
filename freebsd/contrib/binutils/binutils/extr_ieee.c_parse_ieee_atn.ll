; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_parse_ieee_atn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_parse_ieee_atn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { %struct.TYPE_5__, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.ieee_var* }
%struct.ieee_var = type { i8*, i64, i64*, i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"illegal variable index\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"undefined variable in ATN\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@DEBUG_KIND_POINTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown ATN type\00", align 1
@IEEE_LOCAL = common dso_local global i8* null, align 8
@DEBUG_LOCAL = common dso_local global i32 0, align 4
@DEBUG_REGISTER = common dso_local global i32 0, align 4
@IEEE_STATIC = common dso_local global i8* null, align 8
@DEBUG_LOCAL_STATIC = common dso_local global i32 0, align 4
@DEBUG_STATIC = common dso_local global i32 0, align 4
@IEEE_EXTERNAL = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@IEEE_GLOBAL = common dso_local global i8* null, align 8
@DEBUG_GLOBAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"unsupported ATN11\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"unsupported ATN12\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unexpected string in C++ misc\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"bad misc record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_info*, i32**)* @parse_ieee_atn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ieee_atn(%struct.ieee_info* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee_info*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee_var*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ieee_info* %0, %struct.ieee_info** %4, align 8
  store i32** %1, i32*** %5, align 8
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %27 = load i32**, i32*** %5, align 8
  %28 = call i32 @ieee_read_number(%struct.ieee_info* %26, i32** %27, i32* %8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = call i32 @ieee_read_type_index(%struct.ieee_info* %31, i32** %32, i64* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %2
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %711

37:                                               ; preds = %30
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %41 = load i32**, i32*** %5, align 8
  %42 = call i32 @ieee_read_number(%struct.ieee_info* %40, i32** %41, i32* %11)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %711

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store %struct.ieee_var* null, %struct.ieee_var** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i64 0, i64* %19, align 8
  br label %187

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %58 = load i32**, i32*** %5, align 8
  %59 = call i32 @ieee_read_number(%struct.ieee_info* %57, i32** %58, i32* %13)
  store i32 %59, i32* %3, align 4
  br label %711

60:                                               ; preds = %53
  %61 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @ieee_error(%struct.ieee_info* %61, i32* %62, i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %711

66:                                               ; preds = %50
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 32
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %71 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %69, %73
  br i1 %74, label %86, label %75

75:                                               ; preds = %66
  %76 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %77 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.ieee_var*, %struct.ieee_var** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %79, i64 %81
  %83 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %169

86:                                               ; preds = %75, %66
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 62
  br i1 %88, label %89, label %162

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %92 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %90, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %89
  %97 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %98 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %23, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 4, i32* %23, align 4
  br label %104

104:                                              ; preds = %103, %96
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp uge i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %23, align 4
  %111 = mul i32 %110, 2
  store i32 %111, i32* %23, align 4
  br label %105

112:                                              ; preds = %105
  %113 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %114 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.ieee_var*, %struct.ieee_var** %115, align 8
  %117 = load i32, i32* %23, align 4
  %118 = zext i32 %117 to i64
  %119 = mul i64 %118, 40
  %120 = trunc i64 %119 to i32
  %121 = call i64 @xrealloc(%struct.ieee_var* %116, i32 %120)
  %122 = inttoptr i64 %121 to %struct.ieee_var*
  %123 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %124 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store %struct.ieee_var* %122, %struct.ieee_var** %125, align 8
  %126 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %127 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.ieee_var*, %struct.ieee_var** %128, align 8
  %130 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %131 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %129, i64 %134
  %136 = load i32, i32* %23, align 4
  %137 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %138 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub i32 %136, %140
  %142 = zext i32 %141 to i64
  %143 = mul i64 %142, 40
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memset(%struct.ieee_var* %135, i32 0, i32 %144)
  %146 = load i32, i32* %23, align 4
  %147 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %148 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  br label %150

150:                                              ; preds = %112, %89
  %151 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %152 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load %struct.ieee_var*, %struct.ieee_var** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %154, i64 %156
  store %struct.ieee_var* %157, %struct.ieee_var** %9, align 8
  %158 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %159 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %159, align 8
  %160 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %161 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  br label %168

162:                                              ; preds = %86
  %163 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %166 = call i32 @ieee_error(%struct.ieee_info* %163, i32* %164, i32 %165)
  %167 = load i32, i32* @FALSE, align 4
  store i32 %167, i32* %3, align 4
  br label %711

168:                                              ; preds = %150
  br label %169

169:                                              ; preds = %168, %75
  %170 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %171 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load %struct.ieee_var*, %struct.ieee_var** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %173, i64 %175
  store %struct.ieee_var* %176, %struct.ieee_var** %9, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %179 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  %180 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %181 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %18, align 8
  %183 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %184 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %19, align 8
  br label %186

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %186, %49
  %188 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %189 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %12, align 8
  %191 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %192 = icmp ne %struct.ieee_var* %191, null
  br i1 %192, label %193, label %223

193:                                              ; preds = %187
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %193
  %198 = load i8*, i8** %12, align 8
  %199 = load i64, i64* %10, align 8
  %200 = call i64 @debug_get_type_kind(i8* %198, i64 %199)
  %201 = load i64, i64* @DEBUG_KIND_POINTER, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %197
  %204 = load i32, i32* %11, align 4
  switch i32 %204, label %222 [
    i32 1, label %205
    i32 2, label %205
    i32 3, label %205
    i32 5, label %205
    i32 8, label %205
    i32 10, label %205
  ]

205:                                              ; preds = %203, %203, %203, %203, %203, %203
  %206 = call i64 @xmalloc(i32 8)
  %207 = inttoptr i64 %206 to i64*
  %208 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %209 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %208, i32 0, i32 2
  store i64* %207, i64** %209, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %212 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %211, i32 0, i32 2
  %213 = load i64*, i64** %212, align 8
  store i64 %210, i64* %213, align 8
  %214 = load i8*, i8** %12, align 8
  %215 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %216 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %215, i32 0, i32 2
  %217 = load i64*, i64** %216, align 8
  %218 = call i64 @debug_make_indirect_type(i8* %214, i64* %217, i8* null)
  store i64 %218, i64* %10, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %221 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %203, %205
  br label %223

223:                                              ; preds = %222, %197, %193, %187
  %224 = load i32, i32* %11, align 4
  switch i32 %224, label %225 [
    i32 1, label %231
    i32 2, label %262
    i32 3, label %297
    i32 4, label %368
    i32 5, label %377
    i32 7, label %386
    i32 8, label %426
    i32 9, label %457
    i32 10, label %466
    i32 11, label %502
    i32 12, label %508
    i32 16, label %553
    i32 19, label %602
    i32 62, label %637
    i32 63, label %637
    i32 64, label %637
  ]

225:                                              ; preds = %223
  %226 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %227 = load i32*, i32** %7, align 8
  %228 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %229 = call i32 @ieee_error(%struct.ieee_info* %226, i32* %227, i32 %228)
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %3, align 4
  br label %711

231:                                              ; preds = %223
  %232 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %233 = load i32**, i32*** %5, align 8
  %234 = call i32 @ieee_read_number(%struct.ieee_info* %232, i32** %233, i32* %13)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %3, align 4
  br label %711

238:                                              ; preds = %231
  %239 = load i8*, i8** %18, align 8
  %240 = load i64, i64* %19, align 8
  %241 = call i8* @savestring(i8* %239, i64 %240)
  store i8* %241, i8** %20, align 8
  %242 = load i64, i64* %10, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = icmp eq i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i8*, i8** %12, align 8
  %247 = call i64 @debug_make_void_type(i8* %246)
  store i64 %247, i64* %10, align 8
  br label %248

248:                                              ; preds = %245, %238
  %249 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %250 = icmp ne %struct.ieee_var* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i8*, i8** @IEEE_LOCAL, align 8
  %253 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %254 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %253, i32 0, i32 3
  store i8* %252, i8** %254, align 8
  br label %255

255:                                              ; preds = %251, %248
  %256 = load i8*, i8** %12, align 8
  %257 = load i8*, i8** %20, align 8
  %258 = load i64, i64* %10, align 8
  %259 = load i32, i32* @DEBUG_LOCAL, align 4
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @debug_record_variable(i8* %256, i8* %257, i64 %258, i32 %259, i32 %260)
  store i32 %261, i32* %3, align 4
  br label %711

262:                                              ; preds = %223
  %263 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %264 = load i32**, i32*** %5, align 8
  %265 = call i32 @ieee_read_number(%struct.ieee_info* %263, i32** %264, i32* %13)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %3, align 4
  br label %711

269:                                              ; preds = %262
  %270 = load i8*, i8** %18, align 8
  %271 = load i64, i64* %19, align 8
  %272 = call i8* @savestring(i8* %270, i64 %271)
  store i8* %272, i8** %20, align 8
  %273 = load i64, i64* %10, align 8
  %274 = inttoptr i64 %273 to i8*
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load i8*, i8** %12, align 8
  %278 = call i64 @debug_make_void_type(i8* %277)
  store i64 %278, i64* %10, align 8
  br label %279

279:                                              ; preds = %276, %269
  %280 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %281 = icmp ne %struct.ieee_var* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load i8*, i8** @IEEE_LOCAL, align 8
  %284 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %285 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %282, %279
  %287 = load i8*, i8** %12, align 8
  %288 = load i8*, i8** %20, align 8
  %289 = load i64, i64* %10, align 8
  %290 = load i32, i32* @DEBUG_REGISTER, align 4
  %291 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %292 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @ieee_regno_to_genreg(i32 %293, i32 %294)
  %296 = call i32 @debug_record_variable(i8* %287, i8* %288, i64 %289, i32 %290, i32 %295)
  store i32 %296, i32* %3, align 4
  br label %711

297:                                              ; preds = %223
  %298 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %299 = load i32**, i32*** %5, align 8
  %300 = call i32 @ieee_require_asn(%struct.ieee_info* %298, i32** %299, i32* %13)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %297
  %303 = load i32, i32* @FALSE, align 4
  store i32 %303, i32* %3, align 4
  br label %711

304:                                              ; preds = %297
  %305 = load i8*, i8** %18, align 8
  %306 = load i64, i64* %19, align 8
  %307 = call i8* @savestring(i8* %305, i64 %306)
  store i8* %307, i8** %20, align 8
  %308 = load i64, i64* %10, align 8
  %309 = inttoptr i64 %308 to i8*
  %310 = icmp eq i8* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %304
  %312 = load i8*, i8** %12, align 8
  %313 = call i64 @debug_make_void_type(i8* %312)
  store i64 %313, i64* %10, align 8
  br label %314

314:                                              ; preds = %311, %304
  %315 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %316 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %317, align 8
  %319 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %320 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = icmp ule %struct.TYPE_4__* %318, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %314
  store i32 0, i32* %22, align 4
  br label %333

325:                                              ; preds = %314
  %326 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %327 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i64 -1
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %22, align 4
  br label %333

333:                                              ; preds = %325, %324
  %334 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %335 = icmp ne %struct.ieee_var* %334, null
  br i1 %335, label %336, label %351

336:                                              ; preds = %333
  %337 = load i32, i32* %22, align 4
  %338 = icmp eq i32 %337, 4
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = load i32, i32* %22, align 4
  %341 = icmp eq i32 %340, 6
  br i1 %341, label %342, label %346

342:                                              ; preds = %339, %336
  %343 = load i8*, i8** @IEEE_LOCAL, align 8
  %344 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %345 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %344, i32 0, i32 3
  store i8* %343, i8** %345, align 8
  br label %350

346:                                              ; preds = %339
  %347 = load i8*, i8** @IEEE_STATIC, align 8
  %348 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %349 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %348, i32 0, i32 3
  store i8* %347, i8** %349, align 8
  br label %350

350:                                              ; preds = %346, %342
  br label %351

351:                                              ; preds = %350, %333
  %352 = load i8*, i8** %12, align 8
  %353 = load i8*, i8** %20, align 8
  %354 = load i64, i64* %10, align 8
  %355 = load i32, i32* %22, align 4
  %356 = icmp eq i32 %355, 4
  br i1 %356, label %360, label %357

357:                                              ; preds = %351
  %358 = load i32, i32* %22, align 4
  %359 = icmp eq i32 %358, 6
  br i1 %359, label %360, label %362

360:                                              ; preds = %357, %351
  %361 = load i32, i32* @DEBUG_LOCAL_STATIC, align 4
  br label %364

362:                                              ; preds = %357
  %363 = load i32, i32* @DEBUG_STATIC, align 4
  br label %364

364:                                              ; preds = %362, %360
  %365 = phi i32 [ %361, %360 ], [ %363, %362 ]
  %366 = load i32, i32* %13, align 4
  %367 = call i32 @debug_record_variable(i8* %352, i8* %353, i64 %354, i32 %365, i32 %366)
  store i32 %367, i32* %3, align 4
  br label %711

368:                                              ; preds = %223
  %369 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %370 = icmp ne %struct.ieee_var* %369, null
  br i1 %370, label %371, label %375

371:                                              ; preds = %368
  %372 = load i8*, i8** @IEEE_EXTERNAL, align 8
  %373 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %374 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %373, i32 0, i32 3
  store i8* %372, i8** %374, align 8
  br label %375

375:                                              ; preds = %371, %368
  %376 = load i32, i32* @TRUE, align 4
  store i32 %376, i32* %3, align 4
  br label %711

377:                                              ; preds = %223
  %378 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %379 = icmp ne %struct.ieee_var* %378, null
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load i8*, i8** @IEEE_EXTERNAL, align 8
  %382 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %383 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %382, i32 0, i32 3
  store i8* %381, i8** %383, align 8
  br label %384

384:                                              ; preds = %380, %377
  %385 = load i32, i32* @TRUE, align 4
  store i32 %385, i32* %3, align 4
  br label %711

386:                                              ; preds = %223
  %387 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %388 = load i32**, i32*** %5, align 8
  %389 = call i32 @ieee_read_number(%struct.ieee_info* %387, i32** %388, i32* %13)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %386
  %392 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %393 = load i32**, i32*** %5, align 8
  %394 = call i32 @ieee_read_number(%struct.ieee_info* %392, i32** %393, i32* %14)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %391
  %397 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %398 = load i32**, i32*** %5, align 8
  %399 = call i32 @ieee_read_optional_number(%struct.ieee_info* %397, i32** %398, i32* %15, i32* %21)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %396, %391, %386
  %402 = load i32, i32* @FALSE, align 4
  store i32 %402, i32* %3, align 4
  br label %711

403:                                              ; preds = %396
  %404 = load i32, i32* %21, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %403
  %407 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %408 = load i32**, i32*** %5, align 8
  %409 = call i32 @ieee_read_optional_number(%struct.ieee_info* %407, i32** %408, i32* %16, i32* %21)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %413, label %411

411:                                              ; preds = %406
  %412 = load i32, i32* @FALSE, align 4
  store i32 %412, i32* %3, align 4
  br label %711

413:                                              ; preds = %406
  br label %414

414:                                              ; preds = %413, %403
  %415 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %416 = load i32**, i32*** %5, align 8
  %417 = call i32 @ieee_require_asn(%struct.ieee_info* %415, i32** %416, i32* %15)
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %414
  %420 = load i32, i32* @FALSE, align 4
  store i32 %420, i32* %3, align 4
  br label %711

421:                                              ; preds = %414
  %422 = load i8*, i8** %12, align 8
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* %15, align 4
  %425 = call i32 @debug_record_line(i8* %422, i32 %423, i32 %424)
  store i32 %425, i32* %3, align 4
  br label %711

426:                                              ; preds = %223
  %427 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %428 = load i32**, i32*** %5, align 8
  %429 = call i32 @ieee_require_asn(%struct.ieee_info* %427, i32** %428, i32* %13)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %426
  %432 = load i32, i32* @FALSE, align 4
  store i32 %432, i32* %3, align 4
  br label %711

433:                                              ; preds = %426
  %434 = load i8*, i8** %18, align 8
  %435 = load i64, i64* %19, align 8
  %436 = call i8* @savestring(i8* %434, i64 %435)
  store i8* %436, i8** %20, align 8
  %437 = load i64, i64* %10, align 8
  %438 = inttoptr i64 %437 to i8*
  %439 = icmp eq i8* %438, null
  br i1 %439, label %440, label %443

440:                                              ; preds = %433
  %441 = load i8*, i8** %12, align 8
  %442 = call i64 @debug_make_void_type(i8* %441)
  store i64 %442, i64* %10, align 8
  br label %443

443:                                              ; preds = %440, %433
  %444 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %445 = icmp ne %struct.ieee_var* %444, null
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  %447 = load i8*, i8** @IEEE_GLOBAL, align 8
  %448 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %449 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %448, i32 0, i32 3
  store i8* %447, i8** %449, align 8
  br label %450

450:                                              ; preds = %446, %443
  %451 = load i8*, i8** %12, align 8
  %452 = load i8*, i8** %20, align 8
  %453 = load i64, i64* %10, align 8
  %454 = load i32, i32* @DEBUG_GLOBAL, align 4
  %455 = load i32, i32* %13, align 4
  %456 = call i32 @debug_record_variable(i8* %451, i8* %452, i64 %453, i32 %454, i32 %455)
  store i32 %456, i32* %3, align 4
  br label %711

457:                                              ; preds = %223
  %458 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %459 = load i32**, i32*** %5, align 8
  %460 = call i32 @ieee_read_number(%struct.ieee_info* %458, i32** %459, i32* %13)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %457
  %463 = load i32, i32* @FALSE, align 4
  store i32 %463, i32* %3, align 4
  br label %711

464:                                              ; preds = %457
  %465 = load i32, i32* @TRUE, align 4
  store i32 %465, i32* %3, align 4
  br label %711

466:                                              ; preds = %223
  %467 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %468 = load i32**, i32*** %5, align 8
  %469 = call i32 @ieee_read_number(%struct.ieee_info* %467, i32** %468, i32* %13)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %466
  %472 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %473 = load i32**, i32*** %5, align 8
  %474 = call i32 @ieee_read_optional_number(%struct.ieee_info* %472, i32** %473, i32* %14, i32* %21)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %478, label %476

476:                                              ; preds = %471, %466
  %477 = load i32, i32* @FALSE, align 4
  store i32 %477, i32* %3, align 4
  br label %711

478:                                              ; preds = %471
  %479 = load i8*, i8** %18, align 8
  %480 = load i64, i64* %19, align 8
  %481 = call i8* @savestring(i8* %479, i64 %480)
  store i8* %481, i8** %20, align 8
  %482 = load i64, i64* %10, align 8
  %483 = inttoptr i64 %482 to i8*
  %484 = icmp eq i8* %483, null
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = load i8*, i8** %12, align 8
  %487 = call i64 @debug_make_void_type(i8* %486)
  store i64 %487, i64* %10, align 8
  br label %488

488:                                              ; preds = %485, %478
  %489 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %490 = icmp ne %struct.ieee_var* %489, null
  br i1 %490, label %491, label %495

491:                                              ; preds = %488
  %492 = load i8*, i8** @IEEE_LOCAL, align 8
  %493 = load %struct.ieee_var*, %struct.ieee_var** %9, align 8
  %494 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %493, i32 0, i32 3
  store i8* %492, i8** %494, align 8
  br label %495

495:                                              ; preds = %491, %488
  %496 = load i8*, i8** %12, align 8
  %497 = load i8*, i8** %20, align 8
  %498 = load i64, i64* %10, align 8
  %499 = load i32, i32* @DEBUG_REGISTER, align 4
  %500 = load i32, i32* %13, align 4
  %501 = call i32 @debug_record_variable(i8* %496, i8* %497, i64 %498, i32 %499, i32 %500)
  store i32 %501, i32* %3, align 4
  br label %711

502:                                              ; preds = %223
  %503 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %504 = load i32*, i32** %7, align 8
  %505 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %506 = call i32 @ieee_error(%struct.ieee_info* %503, i32* %504, i32 %505)
  %507 = load i32, i32* @TRUE, align 4
  store i32 %507, i32* %3, align 4
  br label %711

508:                                              ; preds = %223
  store i32 0, i32* %15, align 4
  store i32 128, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %509 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %510 = load i32**, i32*** %5, align 8
  %511 = call i32 @ieee_read_number(%struct.ieee_info* %509, i32** %510, i32* %13)
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %523

513:                                              ; preds = %508
  %514 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %515 = load i32**, i32*** %5, align 8
  %516 = call i32 @ieee_read_number(%struct.ieee_info* %514, i32** %515, i32* %14)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %513
  %519 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %520 = load i32**, i32*** %5, align 8
  %521 = call i32 @ieee_read_optional_number(%struct.ieee_info* %519, i32** %520, i32* %15, i32* %21)
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %525, label %523

523:                                              ; preds = %518, %513, %508
  %524 = load i32, i32* @FALSE, align 4
  store i32 %524, i32* %3, align 4
  br label %711

525:                                              ; preds = %518
  %526 = load i32, i32* %21, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %547

528:                                              ; preds = %525
  %529 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %530 = load i32**, i32*** %5, align 8
  %531 = call i32 @ieee_read_optional_number(%struct.ieee_info* %529, i32** %530, i32* %16, i32* %21)
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %535, label %533

533:                                              ; preds = %528
  %534 = load i32, i32* @FALSE, align 4
  store i32 %534, i32* %3, align 4
  br label %711

535:                                              ; preds = %528
  %536 = load i32, i32* %21, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %546

538:                                              ; preds = %535
  %539 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %540 = load i32**, i32*** %5, align 8
  %541 = call i32 @ieee_read_optional_number(%struct.ieee_info* %539, i32** %540, i32* %17, i32* %21)
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %545, label %543

543:                                              ; preds = %538
  %544 = load i32, i32* @FALSE, align 4
  store i32 %544, i32* %3, align 4
  br label %711

545:                                              ; preds = %538
  br label %546

546:                                              ; preds = %545, %535
  br label %547

547:                                              ; preds = %546, %525
  %548 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %549 = load i32*, i32** %7, align 8
  %550 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %551 = call i32 @ieee_error(%struct.ieee_info* %548, i32* %549, i32 %550)
  %552 = load i32, i32* @TRUE, align 4
  store i32 %552, i32* %3, align 4
  br label %711

553:                                              ; preds = %223
  %554 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %555 = load i32**, i32*** %5, align 8
  %556 = call i32 @ieee_read_number(%struct.ieee_info* %554, i32** %555, i32* %13)
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %553
  %559 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %560 = load i32**, i32*** %5, align 8
  %561 = call i32 @ieee_read_optional_number(%struct.ieee_info* %559, i32** %560, i32* %14, i32* %21)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %565, label %563

563:                                              ; preds = %558, %553
  %564 = load i32, i32* @FALSE, align 4
  store i32 %564, i32* %3, align 4
  br label %711

565:                                              ; preds = %558
  %566 = load i32, i32* %21, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %587

568:                                              ; preds = %565
  %569 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %570 = load i32**, i32*** %5, align 8
  %571 = call i32 @ieee_read_optional_number(%struct.ieee_info* %569, i32** %570, i32* %14, i32* %21)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %575, label %573

573:                                              ; preds = %568
  %574 = load i32, i32* @FALSE, align 4
  store i32 %574, i32* %3, align 4
  br label %711

575:                                              ; preds = %568
  %576 = load i32, i32* %21, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %575
  %579 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %580 = load i32**, i32*** %5, align 8
  %581 = call i32 @ieee_read_optional_id(%struct.ieee_info* %579, i32** %580, i8** %18, i64* %19, i32* %21)
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %585, label %583

583:                                              ; preds = %578
  %584 = load i32, i32* @FALSE, align 4
  store i32 %584, i32* %3, align 4
  br label %711

585:                                              ; preds = %578
  br label %586

586:                                              ; preds = %585, %575
  br label %587

587:                                              ; preds = %586, %565
  %588 = load i32**, i32*** %5, align 8
  %589 = load i32*, i32** %588, align 8
  %590 = load i32, i32* %589, align 4
  %591 = icmp eq i32 %590, 128
  br i1 %591, label %592, label %600

592:                                              ; preds = %587
  %593 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %594 = load i32**, i32*** %5, align 8
  %595 = call i32 @ieee_require_asn(%struct.ieee_info* %593, i32** %594, i32* %15)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %599, label %597

597:                                              ; preds = %592
  %598 = load i32, i32* @FALSE, align 4
  store i32 %598, i32* %3, align 4
  br label %711

599:                                              ; preds = %592
  br label %600

600:                                              ; preds = %599, %587
  %601 = load i32, i32* @TRUE, align 4
  store i32 %601, i32* %3, align 4
  br label %711

602:                                              ; preds = %223
  store i32 0, i32* %14, align 4
  %603 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %604 = load i32**, i32*** %5, align 8
  %605 = call i32 @ieee_read_number(%struct.ieee_info* %603, i32** %604, i32* %13)
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %617

607:                                              ; preds = %602
  %608 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %609 = load i32**, i32*** %5, align 8
  %610 = call i32 @ieee_read_optional_number(%struct.ieee_info* %608, i32** %609, i32* %14, i32* %21)
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %607
  %613 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %614 = load i32**, i32*** %5, align 8
  %615 = call i32 @ieee_require_asn(%struct.ieee_info* %613, i32** %614, i32* %15)
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %619, label %617

617:                                              ; preds = %612, %607, %602
  %618 = load i32, i32* @FALSE, align 4
  store i32 %618, i32* %3, align 4
  br label %711

619:                                              ; preds = %612
  %620 = load i8*, i8** %18, align 8
  %621 = load i64, i64* %19, align 8
  %622 = call i8* @savestring(i8* %620, i64 %621)
  store i8* %622, i8** %20, align 8
  %623 = load i8*, i8** %12, align 8
  %624 = load i8*, i8** %20, align 8
  %625 = load i8*, i8** %12, align 8
  %626 = call i64 @debug_make_void_type(i8* %625)
  %627 = load i32, i32* %14, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %631

629:                                              ; preds = %619
  %630 = load i32, i32* @DEBUG_GLOBAL, align 4
  br label %633

631:                                              ; preds = %619
  %632 = load i32, i32* @DEBUG_STATIC, align 4
  br label %633

633:                                              ; preds = %631, %629
  %634 = phi i32 [ %630, %629 ], [ %632, %631 ]
  %635 = load i32, i32* %15, align 4
  %636 = call i32 @debug_record_variable(i8* %623, i8* %624, i64 %626, i32 %634, i32 %635)
  store i32 %636, i32* %3, align 4
  br label %711

637:                                              ; preds = %223, %223, %223
  %638 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %639 = load i32**, i32*** %5, align 8
  %640 = call i32 @ieee_read_number(%struct.ieee_info* %638, i32** %639, i32* %13)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %652

642:                                              ; preds = %637
  %643 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %644 = load i32**, i32*** %5, align 8
  %645 = call i32 @ieee_read_number(%struct.ieee_info* %643, i32** %644, i32* %14)
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %652

647:                                              ; preds = %642
  %648 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %649 = load i32**, i32*** %5, align 8
  %650 = call i32 @ieee_read_optional_id(%struct.ieee_info* %648, i32** %649, i8** %18, i64* %19, i32* %21)
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %654, label %652

652:                                              ; preds = %647, %642, %637
  %653 = load i32, i32* @FALSE, align 4
  store i32 %653, i32* %3, align 4
  br label %711

654:                                              ; preds = %647
  %655 = load i32, i32* %11, align 4
  %656 = icmp eq i32 %655, 62
  br i1 %656, label %657, label %674

657:                                              ; preds = %654
  %658 = load i32, i32* %13, align 4
  %659 = icmp eq i32 %658, 80
  br i1 %659, label %660, label %674

660:                                              ; preds = %657
  %661 = load i32, i32* %21, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %669

663:                                              ; preds = %660
  %664 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %665 = load i32*, i32** %7, align 8
  %666 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %667 = call i32 @ieee_error(%struct.ieee_info* %664, i32* %665, i32 %666)
  %668 = load i32, i32* @FALSE, align 4
  store i32 %668, i32* %3, align 4
  br label %711

669:                                              ; preds = %660
  %670 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %671 = load i32**, i32*** %5, align 8
  %672 = load i32, i32* %14, align 4
  %673 = call i32 @ieee_read_cxx_misc(%struct.ieee_info* %670, i32** %671, i32 %672)
  store i32 %673, i32* %3, align 4
  br label %711

674:                                              ; preds = %657, %654
  br label %675

675:                                              ; preds = %706, %674
  %676 = load i32, i32* %14, align 4
  %677 = icmp sgt i32 %676, 0
  br i1 %677, label %678, label %709

678:                                              ; preds = %675
  %679 = load i32**, i32*** %5, align 8
  %680 = load i32*, i32** %679, align 8
  %681 = load i32, i32* %680, align 4
  switch i32 %681, label %682 [
    i32 129, label %689
    i32 128, label %697
  ]

682:                                              ; preds = %678
  %683 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %684 = load i32**, i32*** %5, align 8
  %685 = load i32*, i32** %684, align 8
  %686 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %687 = call i32 @ieee_error(%struct.ieee_info* %683, i32* %685, i32 %686)
  %688 = load i32, i32* @FALSE, align 4
  store i32 %688, i32* %3, align 4
  br label %711

689:                                              ; preds = %678
  %690 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %691 = load i32**, i32*** %5, align 8
  %692 = call i32 @ieee_require_atn65(%struct.ieee_info* %690, i32** %691, i8** %18, i64* %19)
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %696, label %694

694:                                              ; preds = %689
  %695 = load i32, i32* @FALSE, align 4
  store i32 %695, i32* %3, align 4
  br label %711

696:                                              ; preds = %689
  br label %705

697:                                              ; preds = %678
  %698 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %699 = load i32**, i32*** %5, align 8
  %700 = call i32 @ieee_require_asn(%struct.ieee_info* %698, i32** %699, i32* %15)
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %704, label %702

702:                                              ; preds = %697
  %703 = load i32, i32* @FALSE, align 4
  store i32 %703, i32* %3, align 4
  br label %711

704:                                              ; preds = %697
  br label %705

705:                                              ; preds = %704, %696
  br label %706

706:                                              ; preds = %705
  %707 = load i32, i32* %14, align 4
  %708 = add nsw i32 %707, -1
  store i32 %708, i32* %14, align 4
  br label %675

709:                                              ; preds = %675
  %710 = load i32, i32* @TRUE, align 4
  store i32 %710, i32* %3, align 4
  br label %711

711:                                              ; preds = %709, %702, %694, %682, %669, %663, %652, %633, %617, %600, %597, %583, %573, %563, %547, %543, %533, %523, %502, %495, %476, %464, %462, %450, %431, %421, %419, %411, %401, %384, %375, %364, %302, %286, %267, %255, %236, %225, %162, %60, %56, %44, %35
  %712 = load i32, i32* %3, align 4
  ret i32 %712
}

declare dso_local i32 @ieee_read_number(%struct.ieee_info*, i32**, i32*) #1

declare dso_local i32 @ieee_read_type_index(%struct.ieee_info*, i32**, i64*) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @xrealloc(%struct.ieee_var*, i32) #1

declare dso_local i32 @memset(%struct.ieee_var*, i32, i32) #1

declare dso_local i64 @debug_get_type_kind(i8*, i64) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @debug_make_indirect_type(i8*, i64*, i8*) #1

declare dso_local i8* @savestring(i8*, i64) #1

declare dso_local i64 @debug_make_void_type(i8*) #1

declare dso_local i32 @debug_record_variable(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @ieee_regno_to_genreg(i32, i32) #1

declare dso_local i32 @ieee_require_asn(%struct.ieee_info*, i32**, i32*) #1

declare dso_local i32 @ieee_read_optional_number(%struct.ieee_info*, i32**, i32*, i32*) #1

declare dso_local i32 @debug_record_line(i8*, i32, i32) #1

declare dso_local i32 @ieee_read_optional_id(%struct.ieee_info*, i32**, i8**, i64*, i32*) #1

declare dso_local i32 @ieee_read_cxx_misc(%struct.ieee_info*, i32**, i32) #1

declare dso_local i32 @ieee_require_atn65(%struct.ieee_info*, i32**, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
