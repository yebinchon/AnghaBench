; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_fixup_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_fixup_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32*, i32, %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@absolute_section = common dso_local global i64 0, align 8
@abs_section_sym = common dso_local global i32* null, align 8
@linkrelax = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"can't resolve `%s' {%s section} - `%s' {%s section}\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@undefined_section = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"value of %s too large for field of %d bytes at %s\00", align 1
@ATTRIBUTE_UNUSED_LABEL = common dso_local global i32 0, align 4
@flag_signed_overflow_ok = common dso_local global i32 0, align 4
@skip = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i64)* @fixup_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fixup_segment(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [50 x i8], align 16
  %13 = alloca [50 x i8], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load i64, i64* @absolute_section, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32*, i32** @abs_section_sym, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @absolute_section, align 8
  %22 = call i32* @section_symbol(i64 %21)
  store i32* %22, i32** @abs_section_sym, align 8
  br label %23

23:                                               ; preds = %20, %17, %2
  %24 = load i64, i64* @linkrelax, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @TC_LINKRELAX_FIXUP(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %66, %30
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 11
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** @abs_section_sym, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 11
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 11
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @symbol_mark_used_in_reloc(i32* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 10
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @symbol_mark_used_in_reloc(i32* %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %62, %34
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 14
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %4, align 8
  br label %31

70:                                               ; preds = %31
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @TC_ADJUST_RELOC_COUNT(%struct.TYPE_18__* %71, i64 %72)
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %3, align 8
  br label %503

75:                                               ; preds = %26, %23
  br label %76

76:                                               ; preds = %494, %75
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = icmp ne %struct.TYPE_18__* %77, null
  br i1 %78, label %79, label %498

79:                                               ; preds = %76
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 13
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %8, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = call i32 @know(%struct.TYPE_17__* %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %7, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 11
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 11
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @S_GET_SEGMENT(i32* %95)
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %92, %79
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 10
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %254

102:                                              ; preds = %97
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @resolve_symbol_value(i32* %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 10
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @S_GET_SEGMENT(i32* %109)
  store i64 %110, i64* %10, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 11
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %148

115:                                              ; preds = %102
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %9, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @TC_FORCE_RELOCATION_SUB_SAME(%struct.TYPE_18__* %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %148, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 11
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @S_GET_VALUE(i32* %127)
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @S_GET_VALUE(i32* %135)
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 11
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 10
  store i32* null, i32** %147, align 8
  br label %253

148:                                              ; preds = %119, %115, %102
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* @absolute_section, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = call i32 @TC_FORCE_RELOCATION_SUB_ABS(%struct.TYPE_18__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 10
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @S_GET_VALUE(i32* %159)
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 10
  store i32* null, i32** %169, align 8
  br label %252

170:                                              ; preds = %152, %148
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %217

174:                                              ; preds = %170
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = call i32 @TC_FORCE_RELOCATION_SUB_LOCAL(%struct.TYPE_18__* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %217, label %178

178:                                              ; preds = %174
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 10
  %181 = load i32*, i32** %180, align 8
  %182 = call i64 @S_GET_VALUE(i32* %181)
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %187, %190
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 13
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %191, %196
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %178
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = load i64, i64* %5, align 8
  %207 = call i64 @MD_PCREL_FROM_SECTION(%struct.TYPE_18__* %205, i64 %206)
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %204, %178
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 10
  store i32* null, i32** %214, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  br label %251

217:                                              ; preds = %174, %170
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %219 = call i32 @TC_VALIDATE_FIX_SUB(%struct.TYPE_18__* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %250, label %221

221:                                              ; preds = %217
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 11
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %221
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 11
  %236 = load i32*, i32** %235, align 8
  %237 = call i8* @S_GET_NAME(i32* %236)
  br label %239

238:                                              ; preds = %221
  br label %239

239:                                              ; preds = %238, %233
  %240 = phi i8* [ %237, %233 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %238 ]
  %241 = load i64, i64* %9, align 8
  %242 = call i32 @segment_name(i64 %241)
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 10
  %245 = load i32*, i32** %244, align 8
  %246 = call i8* @S_GET_NAME(i32* %245)
  %247 = load i64, i64* %10, align 8
  %248 = call i32 @segment_name(i64 %247)
  %249 = call i32 (i32, i32, i32, ...) @as_bad_where(i32 %224, i32 %227, i32 %228, i8* %240, i32 %242, i8* %246, i32 %248)
  br label %250

250:                                              ; preds = %239, %217
  br label %251

251:                                              ; preds = %250, %212
  br label %252

252:                                              ; preds = %251, %156
  br label %253

253:                                              ; preds = %252, %124
  br label %254

254:                                              ; preds = %253, %97
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 11
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %342

259:                                              ; preds = %254
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* %5, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %296

263:                                              ; preds = %259
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %265 = call i32 @TC_FORCE_RELOCATION_LOCAL(%struct.TYPE_18__* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %296, label %267

267:                                              ; preds = %263
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 11
  %270 = load i32*, i32** %269, align 8
  %271 = call i64 @S_GET_VALUE(i32* %270)
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %267
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %285 = load i64, i64* %5, align 8
  %286 = call i64 @MD_PCREL_FROM_SECTION(%struct.TYPE_18__* %284, i64 %285)
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = sub nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %283, %267
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 11
  store i32* null, i32** %293, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  store i32 0, i32* %295, align 4
  br label %341

296:                                              ; preds = %263, %259
  %297 = load i64, i64* %9, align 8
  %298 = load i64, i64* @absolute_section, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %318

300:                                              ; preds = %296
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %302 = call i32 @TC_FORCE_RELOCATION_ABS(%struct.TYPE_18__* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %318, label %304

304:                                              ; preds = %300
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 11
  %307 = load i32*, i32** %306, align 8
  %308 = call i64 @S_GET_VALUE(i32* %307)
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %310, %308
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %7, align 4
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 11
  store i32* null, i32** %317, align 8
  br label %340

318:                                              ; preds = %300, %296
  %319 = load i64, i64* %9, align 8
  %320 = load i64, i64* @undefined_section, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %339

322:                                              ; preds = %318
  %323 = load i64, i64* %9, align 8
  %324 = call i32 @bfd_is_com_section(i64 %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %339, label %326

326:                                              ; preds = %322
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %328 = call i64 @MD_APPLY_SYM_VALUE(%struct.TYPE_18__* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %326
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 11
  %333 = load i32*, i32** %332, align 8
  %334 = call i64 @S_GET_VALUE(i32* %333)
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %336, %334
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %7, align 4
  br label %339

339:                                              ; preds = %330, %326, %322, %318
  br label %340

340:                                              ; preds = %339, %304
  br label %341

341:                                              ; preds = %340, %291
  br label %342

342:                                              ; preds = %341, %254
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %369

347:                                              ; preds = %342
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %349 = load i64, i64* %5, align 8
  %350 = call i64 @MD_PCREL_FROM_SECTION(%struct.TYPE_18__* %348, i64 %349)
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = sub nsw i64 %352, %350
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %7, align 4
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 12
  %357 = load i32, i32* %356, align 8
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %368, label %359

359:                                              ; preds = %347
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 11
  %362 = load i32*, i32** %361, align 8
  %363 = icmp eq i32* %362, null
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load i32*, i32** @abs_section_sym, align 8
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 11
  store i32* %365, i32** %367, align 8
  br label %368

368:                                              ; preds = %364, %359, %347
  br label %369

369:                                              ; preds = %368, %342
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 12
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %369
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %376 = load i64, i64* %5, align 8
  %377 = call i32 @md_apply_fix(%struct.TYPE_18__* %375, i32* %7, i64 %376)
  br label %378

378:                                              ; preds = %374, %369
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 12
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %409, label %383

383:                                              ; preds = %378
  %384 = load i64, i64* %6, align 8
  %385 = add nsw i64 %384, 1
  store i64 %385, i64* %6, align 8
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 11
  %388 = load i32*, i32** %387, align 8
  %389 = icmp eq i32* %388, null
  br i1 %389, label %390, label %394

390:                                              ; preds = %383
  %391 = load i32*, i32** @abs_section_sym, align 8
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 11
  store i32* %391, i32** %393, align 8
  br label %394

394:                                              ; preds = %390, %383
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 11
  %397 = load i32*, i32** %396, align 8
  %398 = call i32 @symbol_mark_used_in_reloc(i32* %397)
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 10
  %401 = load i32*, i32** %400, align 8
  %402 = icmp ne i32* %401, null
  br i1 %402, label %403, label %408

403:                                              ; preds = %394
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 10
  %406 = load i32*, i32** %405, align 8
  %407 = call i32 @symbol_mark_used_in_reloc(i32* %406)
  br label %408

408:                                              ; preds = %403, %394
  br label %409

409:                                              ; preds = %408, %378
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 9
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %493, label %414

414:                                              ; preds = %409
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 8
  %417 = load i32, i32* %416, align 8
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %493, label %419

419:                                              ; preds = %414
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %493

424:                                              ; preds = %419
  %425 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = icmp ult i64 %428, 4
  br i1 %429, label %430, label %492

430:                                              ; preds = %424
  store i32 0, i32* %11, align 4
  %431 = load i32, i32* %11, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %11, align 4
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = mul nsw i32 %435, 8
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i32 0, i32 7
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  %441 = zext i1 %440 to i64
  %442 = select i1 %440, i32 1, i32 0
  %443 = sub nsw i32 %436, %442
  %444 = load i32, i32* %11, align 4
  %445 = shl i32 %444, %443
  store i32 %445, i32* %11, align 4
  %446 = load i32, i32* %7, align 4
  %447 = load i32, i32* %11, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %491

450:                                              ; preds = %430
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %11, align 4
  %453 = and i32 %451, %452
  %454 = load i32, i32* %11, align 4
  %455 = icmp ne i32 %453, %454
  br i1 %455, label %456, label %491

456:                                              ; preds = %450
  %457 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = add nsw i32 %460, %463
  %465 = call i32 @sprint_value(i8* %457, i32 %464)
  %466 = load i32, i32* %7, align 4
  %467 = icmp sgt i32 %466, 1000
  br i1 %467, label %468, label %472

468:                                              ; preds = %456
  %469 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %470 = load i32, i32* %7, align 4
  %471 = call i32 @sprint_value(i8* %469, i32 %470)
  br label %477

472:                                              ; preds = %456
  %473 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %474 = load i32, i32* %7, align 4
  %475 = sext i32 %474 to i64
  %476 = call i32 @sprintf(i8* %473, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %475)
  br label %477

477:                                              ; preds = %472, %468
  %478 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %478, i32 0, i32 6
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %481, i32 0, i32 5
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %485 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %486 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %490 = call i32 (i32, i32, i32, ...) @as_bad_where(i32 %480, i32 %483, i32 %484, i8* %485, i32 %488, i8* %489)
  br label %491

491:                                              ; preds = %477, %450, %430
  br label %492

492:                                              ; preds = %491, %424
  br label %493

493:                                              ; preds = %492, %419, %414, %409
  br label %494

494:                                              ; preds = %493
  %495 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %495, i32 0, i32 14
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %496, align 8
  store %struct.TYPE_18__* %497, %struct.TYPE_18__** %4, align 8
  br label %76

498:                                              ; preds = %76
  %499 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %500 = load i64, i64* %6, align 8
  %501 = call i32 @TC_ADJUST_RELOC_COUNT(%struct.TYPE_18__* %499, i64 %500)
  %502 = load i64, i64* %6, align 8
  store i64 %502, i64* %3, align 8
  br label %503

503:                                              ; preds = %498, %70
  %504 = load i64, i64* %3, align 8
  ret i64 %504
}

declare dso_local i32* @section_symbol(i64) #1

declare dso_local i64 @TC_LINKRELAX_FIXUP(i64) #1

declare dso_local i32 @symbol_mark_used_in_reloc(i32*) #1

declare dso_local i32 @TC_ADJUST_RELOC_COUNT(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @know(%struct.TYPE_17__*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @resolve_symbol_value(i32*) #1

declare dso_local i32 @TC_FORCE_RELOCATION_SUB_SAME(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i32 @TC_FORCE_RELOCATION_SUB_ABS(%struct.TYPE_18__*) #1

declare dso_local i32 @TC_FORCE_RELOCATION_SUB_LOCAL(%struct.TYPE_18__*) #1

declare dso_local i64 @MD_PCREL_FROM_SECTION(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @TC_VALIDATE_FIX_SUB(%struct.TYPE_18__*) #1

declare dso_local i32 @as_bad_where(i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i32 @segment_name(i64) #1

declare dso_local i32 @TC_FORCE_RELOCATION_LOCAL(%struct.TYPE_18__*) #1

declare dso_local i32 @TC_FORCE_RELOCATION_ABS(%struct.TYPE_18__*) #1

declare dso_local i32 @bfd_is_com_section(i64) #1

declare dso_local i64 @MD_APPLY_SYM_VALUE(%struct.TYPE_18__*) #1

declare dso_local i32 @md_apply_fix(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @sprint_value(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
