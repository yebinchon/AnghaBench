; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_completer.c_complete_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_completer.c_complete_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.cmd_list_element = type { i8** (i8*, i8*)*, i64, i32, %struct.cmd_list_element** }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@rl_completer_word_break_characters = common dso_local global i32 0, align 4
@cmdlist = common dso_local global %struct.cmd_list_element* null, align 8
@gdb_completer_command_word_break_characters = common dso_local global i32 0, align 4
@gdb_completer_file_name_break_characters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @complete_line(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cmd_list_element*, align 8
  %12 = alloca %struct.cmd_list_element*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8** null, i8*** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  store i32 %18, i32* @rl_completer_word_break_characters, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i64 @alloca(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @strncpy(i8* %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strlen(i8* %36)
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  store %struct.cmd_list_element* inttoptr (i64 -1 to %struct.cmd_list_element*), %struct.cmd_list_element** %11, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %12, align 8
  br label %48

45:                                               ; preds = %3
  %46 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %47 = call %struct.cmd_list_element* @lookup_cmd_1(i8** %9, %struct.cmd_list_element* %46, %struct.cmd_list_element** %12, i32 1)
  store %struct.cmd_list_element* %47, %struct.cmd_list_element** %11, align 8
  br label %48

48:                                               ; preds = %45, %44
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 9
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  br label %49

64:                                               ; preds = %59
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %66 = icmp ne %struct.cmd_list_element* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i8** null, i8*** %7, align 8
  br label %366

68:                                               ; preds = %64
  %69 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %70 = icmp eq %struct.cmd_list_element* %69, inttoptr (i64 -1 to %struct.cmd_list_element*)
  br i1 %70, label %71, label %127

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %13, align 8
  br label %73

73:                                               ; preds = %97, %71
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load i8*, i8** %13, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isalnum(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 95
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = phi i1 [ true, %83 ], [ true, %78 ], [ %92, %88 ]
  br label %95

95:                                               ; preds = %93, %73
  %96 = phi i1 [ false, %73 ], [ %94, %93 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %13, align 8
  br label %73

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = icmp ne i8* %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i8** null, i8*** %7, align 8
  br label %126

108:                                              ; preds = %100
  %109 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %110 = icmp ne %struct.cmd_list_element* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %113 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %112, i32 0, i32 3
  %114 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %113, align 8
  %115 = load %struct.cmd_list_element*, %struct.cmd_list_element** %114, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i8** @complete_on_cmdlist(%struct.cmd_list_element* %115, i8* %116, i8* %117)
  store i8** %118, i8*** %7, align 8
  br label %124

119:                                              ; preds = %108
  %120 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i8** @complete_on_cmdlist(%struct.cmd_list_element* %120, i8* %121, i8* %122)
  store i8** %123, i8*** %7, align 8
  br label %124

124:                                              ; preds = %119, %111
  %125 = load i32, i32* @gdb_completer_command_word_break_characters, align 4
  store i32 %125, i32* @rl_completer_word_break_characters, align 4
  br label %126

126:                                              ; preds = %124, %107
  br label %365

127:                                              ; preds = %68
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = icmp eq i8* %128, %132
  br i1 %133, label %134, label %275

134:                                              ; preds = %127
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 -1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 -1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 9
  br i1 %145, label %146, label %239

146:                                              ; preds = %140, %134
  %147 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %148 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %147, i32 0, i32 3
  %149 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %148, align 8
  %150 = icmp ne %struct.cmd_list_element** %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %153 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %152, i32 0, i32 3
  %154 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %153, align 8
  %155 = load %struct.cmd_list_element*, %struct.cmd_list_element** %154, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i8** @complete_on_cmdlist(%struct.cmd_list_element* %155, i8* %156, i8* %157)
  store i8** %158, i8*** %7, align 8
  %159 = load i32, i32* @gdb_completer_command_word_break_characters, align 4
  store i32 %159, i32* @rl_completer_word_break_characters, align 4
  br label %238

160:                                              ; preds = %146
  %161 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %162 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %167 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = call i8** @complete_on_enum(i64 %168, i8* %169, i8* %170)
  store i8** %171, i8*** %7, align 8
  %172 = load i32, i32* @gdb_completer_command_word_break_characters, align 4
  store i32 %172, i32* @rl_completer_word_break_characters, align 4
  br label %237

173:                                              ; preds = %160
  %174 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %175 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %174, i32 0, i32 0
  %176 = load i8** (i8*, i8*)*, i8** (i8*, i8*)** %175, align 8
  %177 = icmp eq i8** (i8*, i8*)* %176, @filename_completer
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  %179 = load i8*, i8** %10, align 8
  store i8* %179, i8** %9, align 8
  br label %180

180:                                              ; preds = %194, %178
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = icmp ugt i8* %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, i32* @gdb_completer_file_name_break_characters, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -1
  %188 = load i8, i8* %187, align 1
  %189 = call i32* @strchr(i32 %185, i8 signext %188)
  %190 = icmp eq i32* %189, null
  br label %191

191:                                              ; preds = %184, %180
  %192 = phi i1 [ false, %180 ], [ %190, %184 ]
  br i1 %192, label %193, label %197

193:                                              ; preds = %191
  br label %194

194:                                              ; preds = %193
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 -1
  store i8* %196, i8** %9, align 8
  br label %180

197:                                              ; preds = %191
  %198 = load i32, i32* @gdb_completer_file_name_break_characters, align 4
  store i32 %198, i32* @rl_completer_word_break_characters, align 4
  br label %230

199:                                              ; preds = %173
  %200 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %201 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %200, i32 0, i32 0
  %202 = load i8** (i8*, i8*)*, i8** (i8*, i8*)** %201, align 8
  %203 = icmp eq i8** (i8*, i8*)* %202, @location_completer
  br i1 %203, label %204, label %229

204:                                              ; preds = %199
  %205 = load i8*, i8** %10, align 8
  store i8* %205, i8** %9, align 8
  br label %206

206:                                              ; preds = %225, %204
  %207 = load i8*, i8** %9, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = icmp ugt i8* %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 -1
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 32
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 -1
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 9
  br label %222

222:                                              ; preds = %216, %210, %206
  %223 = phi i1 [ false, %210 ], [ false, %206 ], [ %221, %216 ]
  br i1 %223, label %224, label %228

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224
  %226 = load i8*, i8** %9, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 -1
  store i8* %227, i8** %9, align 8
  br label %206

228:                                              ; preds = %222
  br label %229

229:                                              ; preds = %228, %199
  br label %230

230:                                              ; preds = %229, %197
  %231 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %232 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %231, i32 0, i32 0
  %233 = load i8** (i8*, i8*)*, i8** (i8*, i8*)** %232, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = call i8** %233(i8* %234, i8* %235)
  store i8** %236, i8*** %7, align 8
  br label %237

237:                                              ; preds = %230, %165
  br label %238

238:                                              ; preds = %237, %151
  br label %274

239:                                              ; preds = %140
  %240 = load i8*, i8** %9, align 8
  store i8* %240, i8** %14, align 8
  br label %241

241:                                              ; preds = %267, %239
  %242 = load i8*, i8** %14, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = icmp ugt i8* %242, %243
  br i1 %244, label %245, label %268

245:                                              ; preds = %241
  %246 = load i8*, i8** %14, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 -1
  %248 = load i8, i8* %247, align 1
  %249 = call i64 @isalnum(i8 signext %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %263, label %251

251:                                              ; preds = %245
  %252 = load i8*, i8** %14, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 -1
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 45
  br i1 %256, label %263, label %257

257:                                              ; preds = %251
  %258 = load i8*, i8** %14, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 -1
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 95
  br i1 %262, label %263, label %266

263:                                              ; preds = %257, %251, %245
  %264 = load i8*, i8** %14, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 -1
  store i8* %265, i8** %14, align 8
  br label %267

266:                                              ; preds = %257
  br label %268

267:                                              ; preds = %263
  br label %241

268:                                              ; preds = %266, %241
  %269 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %270 = load i8*, i8** %14, align 8
  %271 = load i8*, i8** %10, align 8
  %272 = call i8** @complete_on_cmdlist(%struct.cmd_list_element* %269, i8* %270, i8* %271)
  store i8** %272, i8*** %7, align 8
  %273 = load i32, i32* @gdb_completer_command_word_break_characters, align 4
  store i32 %273, i32* @rl_completer_word_break_characters, align 4
  br label %274

274:                                              ; preds = %268, %238
  br label %364

275:                                              ; preds = %127
  %276 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %277 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %276, i32 0, i32 3
  %278 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %277, align 8
  %279 = icmp ne %struct.cmd_list_element** %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %282 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  store i8** null, i8*** %7, align 8
  br label %363

286:                                              ; preds = %280, %275
  %287 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %288 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %293 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i8*, i8** %9, align 8
  %296 = load i8*, i8** %10, align 8
  %297 = call i8** @complete_on_enum(i64 %294, i8* %295, i8* %296)
  store i8** %297, i8*** %7, align 8
  br label %362

298:                                              ; preds = %286
  %299 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %300 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %299, i32 0, i32 0
  %301 = load i8** (i8*, i8*)*, i8** (i8*, i8*)** %300, align 8
  %302 = icmp eq i8** (i8*, i8*)* %301, @filename_completer
  br i1 %302, label %303, label %324

303:                                              ; preds = %298
  %304 = load i8*, i8** %10, align 8
  store i8* %304, i8** %9, align 8
  br label %305

305:                                              ; preds = %319, %303
  %306 = load i8*, i8** %9, align 8
  %307 = load i8*, i8** %8, align 8
  %308 = icmp ugt i8* %306, %307
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load i32, i32* @gdb_completer_file_name_break_characters, align 4
  %311 = load i8*, i8** %9, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 -1
  %313 = load i8, i8* %312, align 1
  %314 = call i32* @strchr(i32 %310, i8 signext %313)
  %315 = icmp eq i32* %314, null
  br label %316

316:                                              ; preds = %309, %305
  %317 = phi i1 [ false, %305 ], [ %315, %309 ]
  br i1 %317, label %318, label %322

318:                                              ; preds = %316
  br label %319

319:                                              ; preds = %318
  %320 = load i8*, i8** %9, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 -1
  store i8* %321, i8** %9, align 8
  br label %305

322:                                              ; preds = %316
  %323 = load i32, i32* @gdb_completer_file_name_break_characters, align 4
  store i32 %323, i32* @rl_completer_word_break_characters, align 4
  br label %355

324:                                              ; preds = %298
  %325 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %326 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %325, i32 0, i32 0
  %327 = load i8** (i8*, i8*)*, i8** (i8*, i8*)** %326, align 8
  %328 = icmp eq i8** (i8*, i8*)* %327, @location_completer
  br i1 %328, label %329, label %354

329:                                              ; preds = %324
  %330 = load i8*, i8** %10, align 8
  store i8* %330, i8** %9, align 8
  br label %331

331:                                              ; preds = %350, %329
  %332 = load i8*, i8** %9, align 8
  %333 = load i8*, i8** %8, align 8
  %334 = icmp ugt i8* %332, %333
  br i1 %334, label %335, label %347

335:                                              ; preds = %331
  %336 = load i8*, i8** %9, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 -1
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp ne i32 %339, 32
  br i1 %340, label %341, label %347

341:                                              ; preds = %335
  %342 = load i8*, i8** %9, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 -1
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 9
  br label %347

347:                                              ; preds = %341, %335, %331
  %348 = phi i1 [ false, %335 ], [ false, %331 ], [ %346, %341 ]
  br i1 %348, label %349, label %353

349:                                              ; preds = %347
  br label %350

350:                                              ; preds = %349
  %351 = load i8*, i8** %9, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 -1
  store i8* %352, i8** %9, align 8
  br label %331

353:                                              ; preds = %347
  br label %354

354:                                              ; preds = %353, %324
  br label %355

355:                                              ; preds = %354, %322
  %356 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %357 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %356, i32 0, i32 0
  %358 = load i8** (i8*, i8*)*, i8** (i8*, i8*)** %357, align 8
  %359 = load i8*, i8** %9, align 8
  %360 = load i8*, i8** %10, align 8
  %361 = call i8** %358(i8* %359, i8* %360)
  store i8** %361, i8*** %7, align 8
  br label %362

362:                                              ; preds = %355, %291
  br label %363

363:                                              ; preds = %362, %285
  br label %364

364:                                              ; preds = %363, %274
  br label %365

365:                                              ; preds = %364, %126
  br label %366

366:                                              ; preds = %365, %67
  %367 = load i8**, i8*** %7, align 8
  ret i8** %367
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local %struct.cmd_list_element* @lookup_cmd_1(i8**, %struct.cmd_list_element*, %struct.cmd_list_element**, i32) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i8** @complete_on_cmdlist(%struct.cmd_list_element*, i8*, i8*) #1

declare dso_local i8** @complete_on_enum(i64, i8*, i8*) #1

declare dso_local i8** @filename_completer(i8*, i8*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i8** @location_completer(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
