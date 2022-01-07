; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_output_section_find_by_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_output_section_find_by_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@lang_output_section_statement = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@output_bfd = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_SMALL_DATA = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @lang_output_section_find_by_flags(%struct.TYPE_15__* %0, %struct.TYPE_13__** %1, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %6, align 8
  store i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %2, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @lang_output_section_statement, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  br label %18

18:                                               ; preds = %76, %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %80

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %36 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %39 = load i32, i32* @output_bfd, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = call i32 %38(i32 %39, %struct.TYPE_14__* %42, i32 %45, %struct.TYPE_15__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %76

50:                                               ; preds = %37, %29
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %59 = load i32, i32* @SEC_ALLOC, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SEC_LOAD, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SEC_READONLY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SEC_CODE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SEC_SMALL_DATA, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %57, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %51
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %10, align 8
  br label %75

75:                                               ; preds = %73, %51
  br label %76

76:                                               ; preds = %75, %49
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %9, align 8
  br label %18

80:                                               ; preds = %18
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = icmp ne %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %85 = icmp ne %struct.TYPE_13__** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %4, align 8
  br label %453

91:                                               ; preds = %80
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SEC_CODE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %161

98:                                               ; preds = %91
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %9, align 8
  br label %100

100:                                              ; preds = %156, %98
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %160

103:                                              ; preds = %100
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %11, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %111, label %133

111:                                              ; preds = %103
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %118 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %111
  %120 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %121 = load i32, i32* @output_bfd, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = call i32 %120(i32 %121, %struct.TYPE_14__* %124, i32 %127, %struct.TYPE_15__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  br label %156

132:                                              ; preds = %119, %111
  br label %133

133:                                              ; preds = %132, %103
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = xor i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %141 = load i32, i32* @SEC_ALLOC, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @SEC_LOAD, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SEC_CODE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @SEC_SMALL_DATA, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %139, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %133
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %154, %struct.TYPE_13__** %10, align 8
  br label %155

155:                                              ; preds = %153, %133
  br label %156

156:                                              ; preds = %155, %131
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %9, align 8
  br label %100

160:                                              ; preds = %100
  br label %442

161:                                              ; preds = %91
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SEC_READONLY, align 4
  %166 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %238

170:                                              ; preds = %161
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %171, %struct.TYPE_13__** %9, align 8
  br label %172

172:                                              ; preds = %233, %170
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %174 = icmp ne %struct.TYPE_13__* %173, null
  br i1 %174, label %175, label %237

175:                                              ; preds = %172
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %11, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = icmp ne %struct.TYPE_14__* %181, null
  br i1 %182, label %183, label %205

183:                                              ; preds = %175
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %11, align 4
  %189 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %190 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %189, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %183
  %192 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %193 = load i32, i32* @output_bfd, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = call i32 %192(i32 %193, %struct.TYPE_14__* %196, i32 %199, %struct.TYPE_15__* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  br label %233

204:                                              ; preds = %191, %183
  br label %205

205:                                              ; preds = %204, %175
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %11, align 4
  %210 = xor i32 %209, %208
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %213 = load i32, i32* @SEC_ALLOC, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @SEC_LOAD, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @SEC_READONLY, align 4
  %218 = or i32 %216, %217
  %219 = and i32 %211, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %232, label %221

221:                                              ; preds = %205
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @SEC_SMALL_DATA, align 4
  %226 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %227 = or i32 %225, %226
  %228 = and i32 %224, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %221
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %231, %struct.TYPE_13__** %10, align 8
  br label %232

232:                                              ; preds = %230, %221, %205
  br label %233

233:                                              ; preds = %232, %203
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  store %struct.TYPE_13__* %236, %struct.TYPE_13__** %9, align 8
  br label %172

237:                                              ; preds = %172
  br label %441

238:                                              ; preds = %161
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @SEC_SMALL_DATA, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %318

245:                                              ; preds = %238
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %246, %struct.TYPE_13__** %9, align 8
  br label %247

247:                                              ; preds = %313, %245
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %249 = icmp ne %struct.TYPE_13__* %248, null
  br i1 %249, label %250, label %317

250:                                              ; preds = %247
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %11, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %255, align 8
  %257 = icmp ne %struct.TYPE_14__* %256, null
  br i1 %257, label %258, label %280

258:                                              ; preds = %250
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %11, align 4
  %264 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %265 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %264, null
  br i1 %265, label %266, label %279

266:                                              ; preds = %258
  %267 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %268 = load i32, i32* @output_bfd, align 4
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %276 = call i32 %267(i32 %268, %struct.TYPE_14__* %271, i32 %274, %struct.TYPE_15__* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %266
  br label %313

279:                                              ; preds = %266, %258
  br label %280

280:                                              ; preds = %279, %250
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %11, align 4
  %285 = xor i32 %284, %283
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %288 = load i32, i32* @SEC_ALLOC, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @SEC_LOAD, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %293 = or i32 %291, %292
  %294 = and i32 %286, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %280
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @SEC_SMALL_DATA, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %296
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %303, %280
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %311, %struct.TYPE_13__** %10, align 8
  br label %312

312:                                              ; preds = %310, %303, %296
  br label %313

313:                                              ; preds = %312, %278
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %315, align 8
  store %struct.TYPE_13__* %316, %struct.TYPE_13__** %9, align 8
  br label %247

317:                                              ; preds = %247
  br label %440

318:                                              ; preds = %238
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %386

325:                                              ; preds = %318
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %326, %struct.TYPE_13__** %9, align 8
  br label %327

327:                                              ; preds = %381, %325
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %329 = icmp ne %struct.TYPE_13__* %328, null
  br i1 %329, label %330, label %385

330:                                              ; preds = %327
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %11, align 4
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = icmp ne %struct.TYPE_14__* %336, null
  br i1 %337, label %338, label %360

338:                                              ; preds = %330
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %11, align 4
  %344 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %345 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %344, null
  br i1 %345, label %346, label %359

346:                                              ; preds = %338
  %347 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %348 = load i32, i32* @output_bfd, align 4
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %350, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %356 = call i32 %347(i32 %348, %struct.TYPE_14__* %351, i32 %354, %struct.TYPE_15__* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %346
  br label %381

359:                                              ; preds = %346, %338
  br label %360

360:                                              ; preds = %359, %330
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %11, align 4
  %365 = xor i32 %364, %363
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %368 = load i32, i32* @SEC_ALLOC, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* @SEC_LOAD, align 4
  %371 = or i32 %369, %370
  %372 = load i32, i32* @SEC_SMALL_DATA, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %375 = or i32 %373, %374
  %376 = and i32 %366, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %360
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %379, %struct.TYPE_13__** %10, align 8
  br label %380

380:                                              ; preds = %378, %360
  br label %381

381:                                              ; preds = %380, %358
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %383, align 8
  store %struct.TYPE_13__* %384, %struct.TYPE_13__** %9, align 8
  br label %327

385:                                              ; preds = %327
  br label %439

386:                                              ; preds = %318
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %387, %struct.TYPE_13__** %9, align 8
  br label %388

388:                                              ; preds = %434, %386
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %390 = icmp ne %struct.TYPE_13__* %389, null
  br i1 %390, label %391, label %438

391:                                              ; preds = %388
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  store i32 %394, i32* %11, align 4
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %396, align 8
  %398 = icmp ne %struct.TYPE_14__* %397, null
  br i1 %398, label %399, label %421

399:                                              ; preds = %391
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %11, align 4
  %405 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %406 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %405, null
  br i1 %406, label %407, label %420

407:                                              ; preds = %399
  %408 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %409 = load i32, i32* @output_bfd, align 4
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 1
  %412 = load %struct.TYPE_14__*, %struct.TYPE_14__** %411, align 8
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %417 = call i32 %408(i32 %409, %struct.TYPE_14__* %412, i32 %415, %struct.TYPE_15__* %416)
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %420, label %419

419:                                              ; preds = %407
  br label %434

420:                                              ; preds = %407, %399
  br label %421

421:                                              ; preds = %420, %391
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %11, align 4
  %426 = xor i32 %425, %424
  store i32 %426, i32* %11, align 4
  %427 = load i32, i32* %11, align 4
  %428 = load i32, i32* @SEC_ALLOC, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %421
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %432, %struct.TYPE_13__** %10, align 8
  br label %433

433:                                              ; preds = %431, %421
  br label %434

434:                                              ; preds = %433, %419
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %436, align 8
  store %struct.TYPE_13__* %437, %struct.TYPE_13__** %9, align 8
  br label %388

438:                                              ; preds = %388
  br label %439

439:                                              ; preds = %438, %385
  br label %440

440:                                              ; preds = %439, %317
  br label %441

441:                                              ; preds = %440, %237
  br label %442

442:                                              ; preds = %441, %160
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %444 = icmp ne %struct.TYPE_13__* %443, null
  br i1 %444, label %448, label %445

445:                                              ; preds = %442
  %446 = load i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)** %7, align 8
  %447 = icmp ne i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* %446, null
  br i1 %447, label %450, label %448

448:                                              ; preds = %445, %442
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %449, %struct.TYPE_13__** %4, align 8
  br label %453

450:                                              ; preds = %445
  %451 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %452 = call %struct.TYPE_13__* @lang_output_section_find_by_flags(%struct.TYPE_15__* %451, %struct.TYPE_13__** null, i32 (i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* null)
  store %struct.TYPE_13__* %452, %struct.TYPE_13__** %4, align 8
  br label %453

453:                                              ; preds = %450, %448, %89
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %454
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
