; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i64, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i64, i32, %struct.TYPE_15__*, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }

@SEC_EXCLUDE = common dso_local global i32 0, align 4
@DISCARD_SECTION_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@link_info = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@strip_debugger = common dso_local global i64 0, align 8
@strip_all = common dso_local global i64 0, align 8
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_15__* null, align 8
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@stripped_excluded_sections = common dso_local global i32 0, align 4
@lang_input_section = common dso_local global i32 0, align 4
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@SEC_LINK_DUPLICATES = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_MERGE = common dso_local global i32 0, align 4
@SEC_STRINGS = common dso_local global i32 0, align 4
@SEC_SMALL_DATA = common dso_local global i32 0, align 4
@bfd_arch_tic54x = common dso_local global i64 0, align 8
@SEC_TIC54X_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_add_section(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SEC_EXCLUDE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DISCARD_SECTION_NAME, align 4
  %25 = call i64 @strcmp(i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %3
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @link_info, i32 0, i32 0), align 8
  %31 = load i64, i64* @strip_debugger, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @link_info, i32 0, i32 0), align 8
  %35 = load i64, i64* @strip_all, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SEC_DEBUGGING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %37, %33
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = icmp eq %struct.TYPE_15__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bfd_abs_section_ptr, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 4
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  br label %333

57:                                               ; preds = %44
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = icmp eq %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %333

62:                                               ; preds = %57
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %87 [
    i32 129, label %73
    i32 128, label %73
    i32 131, label %74
    i32 130, label %79
  ]

73:                                               ; preds = %62, %62
  br label %87

74:                                               ; preds = %62
  %75 = load i32, i32* @SEC_ALLOC, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %87

79:                                               ; preds = %62
  %80 = load i32, i32* @SEC_LOAD, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %62, %79, %74, %73
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = icmp eq %struct.TYPE_15__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @init_os(%struct.TYPE_20__* %93, %struct.TYPE_22__* %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %9, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @link_info, i32 0, i32 1), align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %97
  %113 = load i32, i32* @stripped_excluded_sections, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %150, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  store %struct.TYPE_22__* %121, %struct.TYPE_22__** %12, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %127, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %130, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  store %struct.TYPE_22__* %131, %struct.TYPE_22__** %134, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %136 = icmp ne %struct.TYPE_22__* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %115
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store %struct.TYPE_22__* %138, %struct.TYPE_22__** %141, align 8
  br label %149

142:                                              ; preds = %115
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  store %struct.TYPE_22__* %143, %struct.TYPE_22__** %148, align 8
  br label %149

149:                                              ; preds = %142, %137
  br label %150

150:                                              ; preds = %149, %112, %97
  %151 = load i32, i32* @lang_input_section, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = call %struct.TYPE_21__* @new_stat(i32 %151, i32* %152)
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %10, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store %struct.TYPE_22__* %154, %struct.TYPE_22__** %156, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 4
  store %struct.TYPE_15__* %159, %struct.TYPE_15__** %161, align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @link_info, i32 0, i32 1), align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %150
  %165 = load i32, i32* @SEC_LINK_ONCE, align 4
  %166 = load i32, i32* @SEC_LINK_DUPLICATES, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %11, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %164, %150
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %171
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @SEC_READONLY, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %174
  %184 = load i32, i32* @SEC_READONLY, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %11, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %183, %174, %171
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %239, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SEC_MERGE, align 4
  %198 = load i32, i32* @SEC_STRINGS, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @SEC_MERGE, align 4
  %203 = load i32, i32* @SEC_STRINGS, align 4
  %204 = or i32 %202, %203
  %205 = and i32 %201, %204
  %206 = icmp ne i32 %200, %205
  br i1 %206, label %222, label %207

207:                                              ; preds = %191
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @SEC_MERGE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %239

212:                                              ; preds = %207
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %217, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %212, %191
  %223 = load i32, i32* @SEC_MERGE, align 4
  %224 = load i32, i32* @SEC_STRINGS, align 4
  %225 = or i32 %223, %224
  %226 = xor i32 %225, -1
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, %226
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* @SEC_MERGE, align 4
  %234 = load i32, i32* @SEC_STRINGS, align 4
  %235 = or i32 %233, %234
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %11, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %222, %212, %207, %188
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %240
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* @SEC_MERGE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %239
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 2
  store i64 %254, i64* %258, align 8
  br label %259

259:                                              ; preds = %251, %239
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @SEC_READONLY, align 4
  %264 = and i32 %262, %263
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %259
  %267 = load i32, i32* @SEC_READONLY, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %268
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %266, %259
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @SEC_SMALL_DATA, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %275
  %283 = load i32, i32* @SEC_SMALL_DATA, align 4
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %283
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %282, %275
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %293, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %290
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 3
  store i64 %303, i64* %307, align 8
  br label %308

308:                                              ; preds = %300, %290
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @bfd_get_arch(i32 %311)
  %313 = load i64, i64* @bfd_arch_tic54x, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %332

315:                                              ; preds = %308
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @SEC_TIC54X_BLOCK, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %332

322:                                              ; preds = %315
  %323 = load i32, i32* @SEC_TIC54X_BLOCK, align 4
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %323
  store i32 %329, i32* %327, align 4
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  store i32 128, i32* %331, align 4
  br label %332

332:                                              ; preds = %322, %315, %308
  br label %333

333:                                              ; preds = %56, %332, %57
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @init_os(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @new_stat(i32, i32*) #1

declare dso_local i64 @bfd_get_arch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
