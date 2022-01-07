; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_format.c_bfd_check_format_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_format.c_bfd_check_format_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_16__*, i32 }

@bfd_type_end = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@bfd_unknown = common dso_local global i64 0, align 8
@_bfd_target_vector_entries = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@_bfd_check_format = common dso_local global i32 0, align 4
@both_direction = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i64 0, align 8
@binary_vec = external dso_local constant %struct.TYPE_16__, align 8
@bfd_error_file_not_recognized = common dso_local global i64 0, align 8
@bfd_target_vector = common dso_local global %struct.TYPE_16__** null, align 8
@bfd_error_wrong_format = common dso_local global i64 0, align 8
@bfd_default_vector = common dso_local global %struct.TYPE_16__** null, align 8
@bfd_error_wrong_object_format = common dso_local global i64 0, align 8
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@bfd_associated_vector = common dso_local global %struct.TYPE_16__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_check_format_matches(%struct.TYPE_17__* %0, i64 %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8*** %2, i8**** %7, align 8
  store %struct.TYPE_16__** null, %struct.TYPE_16__*** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = call i32 @bfd_read_p(%struct.TYPE_17__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* @bfd_type_end, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp uge i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24, %3
  %33 = load i64, i64* @bfd_error_invalid_operation, align 8
  %34 = call i32 @bfd_set_error(i64 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %411

36:                                               ; preds = %24
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @bfd_unknown, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %411

49:                                               ; preds = %36
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %13, align 4
  %53 = load i32, i32* @_bfd_target_vector_entries, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i8***, i8**** %7, align 8
  %55 = icmp ne i8*** %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %57, align 8
  %58 = load i32, i32* @_bfd_target_vector_entries, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 16, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.TYPE_16__** @bfd_malloc(i32 %62)
  store %struct.TYPE_16__** %63, %struct.TYPE_16__*** %9, align 8
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %65 = icmp ne %struct.TYPE_16__** %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %4, align 4
  br label %411

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %49
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %142, label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i64 @bfd_seek(%struct.TYPE_17__* %78, i32 0, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i8***, i8**** %7, align 8
  %84 = icmp ne i8*** %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %87 = call i32 @free(%struct.TYPE_16__** %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %411

90:                                               ; preds = %77
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = load i32, i32* @_bfd_check_format, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = call %struct.TYPE_16__* @BFD_SEND_FMT(%struct.TYPE_17__* %91, i32 %92, %struct.TYPE_17__* %93)
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %11, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %100, align 8
  %101 = load i8***, i8**** %7, align 8
  %102 = icmp ne i8*** %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %105 = call i32 @free(%struct.TYPE_16__** %104)
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @both_direction, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @TRUE, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %4, align 4
  br label %411

118:                                              ; preds = %90
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @bfd_archive, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = icmp eq %struct.TYPE_16__* %123, @binary_vec
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  store %struct.TYPE_16__* %126, %struct.TYPE_16__** %128, align 8
  %129 = load i64, i64* @bfd_unknown, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i8***, i8**** %7, align 8
  %133 = icmp ne i8*** %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %136 = call i32 @free(%struct.TYPE_16__** %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i64, i64* @bfd_error_file_not_recognized, align 8
  %139 = call i32 @bfd_set_error(i64 %138)
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %4, align 4
  br label %411

141:                                              ; preds = %122, %118
  br label %142

142:                                              ; preds = %141, %69
  %143 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @bfd_target_vector, align 8
  store %struct.TYPE_16__** %143, %struct.TYPE_16__*** %8, align 8
  br label %144

144:                                              ; preds = %260, %142
  %145 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = icmp ne %struct.TYPE_16__* %146, null
  br i1 %147, label %148, label %263

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = icmp eq %struct.TYPE_16__* %150, @binary_vec
  br i1 %151, label %162, label %152

152:                                              ; preds = %148
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %161 = icmp eq %struct.TYPE_16__* %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157, %148
  br label %260

163:                                              ; preds = %157, %152
  %164 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %167, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = load i32, i32* @SEEK_SET, align 4
  %170 = call i64 @bfd_seek(%struct.TYPE_17__* %168, i32 0, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load i8***, i8**** %7, align 8
  %174 = icmp ne i8*** %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %177 = call i32 @free(%struct.TYPE_16__** %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* @FALSE, align 4
  store i32 %179, i32* %4, align 4
  br label %411

180:                                              ; preds = %163
  %181 = load i64, i64* @bfd_error_wrong_format, align 8
  %182 = call i32 @bfd_set_error(i64 %181)
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = load i32, i32* @_bfd_check_format, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = call %struct.TYPE_16__* @BFD_SEND_FMT(%struct.TYPE_17__* %183, i32 %184, %struct.TYPE_17__* %185)
  store %struct.TYPE_16__* %186, %struct.TYPE_16__** %16, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %188 = icmp ne %struct.TYPE_16__* %187, null
  br i1 %188, label %189, label %209

189:                                              ; preds = %180
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %190, %struct.TYPE_16__** %11, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %192 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @bfd_default_vector, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %192, i64 0
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = icmp eq %struct.TYPE_16__* %191, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  store i32 1, i32* %13, align 4
  br label %263

197:                                              ; preds = %189
  %198 = load i8***, i8**** %7, align 8
  %199 = icmp ne i8*** %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %202 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %202, i64 %204
  store %struct.TYPE_16__* %201, %struct.TYPE_16__** %205, align 8
  br label %206

206:                                              ; preds = %200, %197
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %259

209:                                              ; preds = %180
  %210 = call i64 (...) @bfd_get_error()
  store i64 %210, i64* %17, align 8
  %211 = load i64, i64* @bfd_error_wrong_object_format, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %17, align 8
  %215 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %239

217:                                              ; preds = %213, %209
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %219 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @bfd_default_vector, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %219, i64 0
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = icmp ne %struct.TYPE_16__* %218, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  store %struct.TYPE_16__* %225, %struct.TYPE_16__** %12, align 8
  br label %226

226:                                              ; preds = %223, %217
  %227 = load i8***, i8**** %7, align 8
  %228 = icmp ne i8*** %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %232, i64 %234
  store %struct.TYPE_16__* %231, %struct.TYPE_16__** %235, align 8
  br label %236

236:                                              ; preds = %229, %226
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %258

239:                                              ; preds = %213
  %240 = load i64, i64* %17, align 8
  %241 = load i64, i64* @bfd_error_wrong_format, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %239
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 3
  store %struct.TYPE_16__* %244, %struct.TYPE_16__** %246, align 8
  %247 = load i64, i64* @bfd_unknown, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = load i8***, i8**** %7, align 8
  %251 = icmp ne i8*** %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %243
  %253 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %254 = call i32 @free(%struct.TYPE_16__** %253)
  br label %255

255:                                              ; preds = %252, %243
  %256 = load i32, i32* @FALSE, align 4
  store i32 %256, i32* %4, align 4
  br label %411

257:                                              ; preds = %239
  br label %258

258:                                              ; preds = %257, %236
  br label %259

259:                                              ; preds = %258, %206
  br label %260

260:                                              ; preds = %259, %162
  %261 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %261, i32 1
  store %struct.TYPE_16__** %262, %struct.TYPE_16__*** %8, align 8
  br label %144

263:                                              ; preds = %196, %144
  %264 = load i32, i32* %13, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %296

266:                                              ; preds = %263
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %267, %struct.TYPE_16__** %11, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %269 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @bfd_default_vector, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %269, i64 0
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = icmp eq %struct.TYPE_16__* %268, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  store i32 1, i32* %13, align 4
  br label %295

274:                                              ; preds = %266
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* @_bfd_target_vector_entries, align 4
  %277 = sub nsw i32 %275, %276
  store i32 %277, i32* %13, align 4
  %278 = load i8***, i8**** %7, align 8
  %279 = icmp ne i8*** %278, null
  br i1 %279, label %280, label %294

280:                                              ; preds = %274
  %281 = load i32, i32* %13, align 4
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %285 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %286 = load i32, i32* @_bfd_target_vector_entries, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %285, i64 %287
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = mul i64 8, %290
  %292 = trunc i64 %291 to i32
  %293 = call i32 @memcpy(%struct.TYPE_16__** %284, %struct.TYPE_16__** %288, i32 %292)
  br label %294

294:                                              ; preds = %283, %280, %274
  br label %295

295:                                              ; preds = %294, %273
  br label %296

296:                                              ; preds = %295, %263
  %297 = load i32, i32* %13, align 4
  %298 = icmp sgt i32 %297, 1
  br i1 %298, label %299, label %334

299:                                              ; preds = %296
  %300 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @bfd_associated_vector, align 8
  %301 = icmp ne %struct.TYPE_16__** %300, null
  br i1 %301, label %302, label %334

302:                                              ; preds = %299
  %303 = load i8***, i8**** %7, align 8
  %304 = icmp ne i8*** %303, null
  br i1 %304, label %305, label %334

305:                                              ; preds = %302
  %306 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @bfd_associated_vector, align 8
  store %struct.TYPE_16__** %306, %struct.TYPE_16__*** %18, align 8
  br label %307

307:                                              ; preds = %332, %305
  %308 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %308, i32 1
  store %struct.TYPE_16__** %309, %struct.TYPE_16__*** %18, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  store %struct.TYPE_16__* %310, %struct.TYPE_16__** %11, align 8
  %311 = icmp ne %struct.TYPE_16__* %310, null
  br i1 %311, label %312, label %333

312:                                              ; preds = %307
  %313 = load i32, i32* %13, align 4
  store i32 %313, i32* %19, align 4
  br label %314

314:                                              ; preds = %327, %312
  %315 = load i32, i32* %19, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %19, align 4
  %317 = icmp sge i32 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %314
  %319 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %320 = load i32, i32* %19, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %319, i64 %321
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %325 = icmp eq %struct.TYPE_16__* %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %328

327:                                              ; preds = %318
  br label %314

328:                                              ; preds = %326, %314
  %329 = load i32, i32* %19, align 4
  %330 = icmp sge i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  store i32 1, i32* %13, align 4
  br label %333

332:                                              ; preds = %328
  br label %307

333:                                              ; preds = %331, %307
  br label %334

334:                                              ; preds = %333, %302, %299, %296
  %335 = load i32, i32* %13, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %358

337:                                              ; preds = %334
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 3
  store %struct.TYPE_16__* %338, %struct.TYPE_16__** %340, align 8
  %341 = load i8***, i8**** %7, align 8
  %342 = icmp ne i8*** %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %337
  %344 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %345 = call i32 @free(%struct.TYPE_16__** %344)
  br label %346

346:                                              ; preds = %343, %337
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @both_direction, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load i32, i32* @TRUE, align 4
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 2
  store i32 %353, i32* %355, align 8
  br label %356

356:                                              ; preds = %352, %346
  %357 = load i32, i32* @TRUE, align 4
  store i32 %357, i32* %4, align 4
  br label %411

358:                                              ; preds = %334
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 3
  store %struct.TYPE_16__* %359, %struct.TYPE_16__** %361, align 8
  %362 = load i64, i64* @bfd_unknown, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  store i64 %362, i64* %364, align 8
  %365 = load i32, i32* %13, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %358
  %368 = load i64, i64* @bfd_error_file_not_recognized, align 8
  %369 = call i32 @bfd_set_error(i64 %368)
  %370 = load i8***, i8**** %7, align 8
  %371 = icmp ne i8*** %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %367
  %373 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %374 = call i32 @free(%struct.TYPE_16__** %373)
  br label %375

375:                                              ; preds = %372, %367
  br label %409

376:                                              ; preds = %358
  %377 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %378 = call i32 @bfd_set_error(i64 %377)
  %379 = load i8***, i8**** %7, align 8
  %380 = icmp ne i8*** %379, null
  br i1 %380, label %381, label %408

381:                                              ; preds = %376
  %382 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %383 = bitcast %struct.TYPE_16__** %382 to i8**
  %384 = load i8***, i8**** %7, align 8
  store i8** %383, i8*** %384, align 8
  %385 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %385, i64 %387
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %388, align 8
  br label %389

389:                                              ; preds = %393, %381
  %390 = load i32, i32* %13, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %13, align 4
  %392 = icmp sge i32 %391, 0
  br i1 %392, label %393, label %407

393:                                              ; preds = %389
  %394 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %395 = load i32, i32* %13, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %394, i64 %396
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  store i8* %400, i8** %20, align 8
  %401 = load i8*, i8** %20, align 8
  %402 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %403 = load i32, i32* %13, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %402, i64 %404
  %406 = bitcast %struct.TYPE_16__** %405 to i8**
  store i8* %401, i8** %406, align 8
  br label %389

407:                                              ; preds = %389
  br label %408

408:                                              ; preds = %407, %376
  br label %409

409:                                              ; preds = %408, %375
  %410 = load i32, i32* @FALSE, align 4
  store i32 %410, i32* %4, align 4
  br label %411

411:                                              ; preds = %409, %356, %255, %178, %137, %116, %88, %66, %42, %32
  %412 = load i32, i32* %4, align 4
  ret i32 %412
}

declare dso_local i32 @bfd_read_p(%struct.TYPE_17__*) #1

declare dso_local i32 @bfd_set_error(i64) #1

declare dso_local %struct.TYPE_16__** @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__* @BFD_SEND_FMT(%struct.TYPE_17__*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__**, %struct.TYPE_16__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
