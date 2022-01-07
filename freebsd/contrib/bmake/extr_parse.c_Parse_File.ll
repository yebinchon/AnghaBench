; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_File.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_File.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.loadedfile* }
%struct.loadedfile = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@inLine = common dso_local global i64 0, align 8
@fatals = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@loadedfile_nextbuf = common dso_local global i32 0, align 4
@curFile = common dso_local global %struct.TYPE_2__* null, align 8
@PARSE = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ParseReadLine (%d): '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unexport\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Unassociated shell command \22%s\22\00", align 1
@targets = common dso_local global i64 0, align 8
@ParseAddCmd = common dso_local global i32 0, align 4
@PARSE_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Shell command needs a leading tab\00", align 1
@VAR_CMD = common dso_local global i32 0, align 4
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CONTINUE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"%s: Fatal errors encountered -- cannot continue\00", align 1
@progname = common dso_local global i8* null, align 8
@targCmds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Parse_File(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.loadedfile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.loadedfile* @loadfile(i8* %10, i32 %11)
  store %struct.loadedfile* %12, %struct.loadedfile** %7, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* @inLine, align 8
  store i64 0, i64* @fatals, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @loadedfile_nextbuf, align 4
  %20 = load %struct.loadedfile*, %struct.loadedfile** %7, align 8
  %21 = call i32 @Parse_SetInput(i8* %18, i32 0, i32 -1, i32 %19, %struct.loadedfile* %20)
  %22 = load %struct.loadedfile*, %struct.loadedfile** %7, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curFile, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.loadedfile* %22, %struct.loadedfile** %24, align 8
  br label %25

25:                                               ; preds = %372, %17
  br label %26

26:                                               ; preds = %370, %197, %192, %146, %127, %120, %99, %62, %25
  %27 = call i8* (...) @ParseReadLine()
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %371

29:                                               ; preds = %26
  %30 = load i32, i32* @PARSE, align 4
  %31 = call i64 @DEBUG(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @debug_file, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curFile, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %152

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %54, %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isspace(i8 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %48

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* @FALSE, align 8
  %60 = call i64 @IsInclude(i8* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @ParseDoInclude(i8* %63)
  br label %26

65:                                               ; preds = %57
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %78, %69
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isspace(i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  br label %72

81:                                               ; preds = %72
  %82 = load i8*, i8** %5, align 8
  store i8* %82, i8** %8, align 8
  br label %83

83:                                               ; preds = %96, %81
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isspace(i8 zeroext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ false, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  br label %83

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* @VAR_GLOBAL, align 4
  %103 = call i32 @Var_Delete(i8* %101, i32 %102)
  br label %26

104:                                              ; preds = %65
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @strncmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 6
  store i8* %110, i8** %5, align 8
  br label %111

111:                                              ; preds = %117, %108
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @isspace(i8 zeroext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  br label %111

120:                                              ; preds = %111
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @Var_Export(i8* %121, i32 1)
  br label %26

123:                                              ; preds = %104
  %124 = load i8*, i8** %5, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @Var_UnExport(i8* %128)
  br label %26

130:                                              ; preds = %123
  %131 = load i8*, i8** %5, align 8
  %132 = call i64 @strncmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = call i64 @strncmp(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %5, align 8
  %140 = call i64 @strncmp(i8* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138, %134, %130
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 @ParseMessage(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %26

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %138
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %40
  %153 = load i8*, i8** %6, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 9
  br i1 %156, label %157, label %193

157:                                              ; preds = %152
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %5, align 8
  br label %160

160:                                              ; preds = %369, %263, %157
  br label %161

161:                                              ; preds = %167, %160
  %162 = load i8*, i8** %5, align 8
  %163 = load i8, i8* %162, align 1
  %164 = call i64 @isspace(i8 zeroext %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %5, align 8
  br label %161

170:                                              ; preds = %161
  %171 = load i8*, i8** %5, align 8
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load i64, i64* @inLine, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @PARSE_FATAL, align 4
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 (i32, i8*, ...) @Parse_Error(i32 %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i64, i64* @targets, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i8*, i8** %5, align 8
  %186 = call i8* @bmake_strdup(i8* %185)
  store i8* %186, i8** %5, align 8
  %187 = load i64, i64* @targets, align 8
  %188 = load i32, i32* @ParseAddCmd, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @Lst_ForEach(i64 %187, i32 %188, i8* %189)
  br label %191

191:                                              ; preds = %184, %181
  br label %192

192:                                              ; preds = %191, %170
  br label %26

193:                                              ; preds = %152
  %194 = load i8*, i8** %6, align 8
  %195 = call i64 @Parse_IsVar(i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = call i32 (...) @ParseFinishLine()
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* @VAR_GLOBAL, align 4
  %201 = call i32 @Parse_DoVar(i8* %199, i32 %200)
  br label %26

202:                                              ; preds = %193
  %203 = load i8*, i8** %6, align 8
  store i8* %203, i8** %5, align 8
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = call i64 @isspace(i8 zeroext %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %268

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %222, %209
  %211 = load i8*, i8** %5, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i8*, i8** %5, align 8
  %217 = load i8, i8* %216, align 1
  %218 = call i64 @isspace(i8 zeroext %217)
  %219 = icmp ne i64 %218, 0
  br label %220

220:                                              ; preds = %215, %210
  %221 = phi i1 [ false, %210 ], [ %219, %215 ]
  br i1 %221, label %222, label %225

222:                                              ; preds = %220
  %223 = load i8*, i8** %5, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %5, align 8
  br label %210

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %252, %225
  %227 = load i8*, i8** %5, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %250

231:                                              ; preds = %226
  %232 = load i8*, i8** %6, align 8
  %233 = load i8*, i8** %5, align 8
  %234 = call i64 @ParseIsEscaped(i8* %232, i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %248, label %236

236:                                              ; preds = %231
  %237 = load i8*, i8** %5, align 8
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 58
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load i8*, i8** %5, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 33
  br label %246

246:                                              ; preds = %241, %236
  %247 = phi i1 [ false, %236 ], [ %245, %241 ]
  br label %248

248:                                              ; preds = %246, %231
  %249 = phi i1 [ true, %231 ], [ %247, %246 ]
  br label %250

250:                                              ; preds = %248, %226
  %251 = phi i1 [ false, %226 ], [ %249, %248 ]
  br i1 %251, label %252, label %255

252:                                              ; preds = %250
  %253 = load i8*, i8** %5, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %5, align 8
  br label %226

255:                                              ; preds = %250
  %256 = load i8*, i8** %5, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = load i64, i64* @inLine, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* @PARSE_WARNING, align 4
  %265 = call i32 (i32, i8*, ...) @Parse_Error(i32 %264, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %160

266:                                              ; preds = %260
  br label %267

267:                                              ; preds = %266, %255
  br label %268

268:                                              ; preds = %267, %202
  %269 = call i32 (...) @ParseFinishLine()
  store i32 0, i32* %9, align 4
  %270 = load i8*, i8** %6, align 8
  store i8* %270, i8** %5, align 8
  br label %271

271:                                              ; preds = %335, %268
  %272 = load i8*, i8** %5, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %338

276:                                              ; preds = %271
  %277 = load i8*, i8** %5, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 92
  br i1 %280, label %281, label %290

281:                                              ; preds = %276
  %282 = load i8*, i8** %5, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 1
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = load i8*, i8** %5, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %5, align 8
  br label %335

290:                                              ; preds = %281, %276
  %291 = load i8*, i8** %5, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 36
  br i1 %294, label %295, label %310

295:                                              ; preds = %290
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 40
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load i8*, i8** %5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 123
  br i1 %306, label %307, label %310

307:                                              ; preds = %301, %295
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %335

310:                                              ; preds = %301, %290
  %311 = load i32, i32* %9, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %310
  %314 = load i8*, i8** %5, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 41
  br i1 %317, label %323, label %318

318:                                              ; preds = %313
  %319 = load i8*, i8** %5, align 8
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 125
  br i1 %322, label %323, label %326

323:                                              ; preds = %318, %313
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %9, align 4
  br label %335

326:                                              ; preds = %318
  br label %334

327:                                              ; preds = %310
  %328 = load i8*, i8** %5, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 59
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  br label %338

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %333, %326
  br label %335

335:                                              ; preds = %334, %323, %307, %287
  %336 = load i8*, i8** %5, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %337, i8** %5, align 8
  br label %271

338:                                              ; preds = %332, %271
  %339 = load i8*, i8** %5, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %338
  %344 = load i8*, i8** %5, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %5, align 8
  store i8 0, i8* %344, align 1
  br label %347

346:                                              ; preds = %338
  store i8* null, i8** %5, align 8
  br label %347

347:                                              ; preds = %346, %343
  %348 = load i8*, i8** %6, align 8
  %349 = load i32, i32* @VAR_CMD, align 4
  %350 = load i32, i32* @VARF_UNDEFERR, align 4
  %351 = load i32, i32* @VARF_WANTRES, align 4
  %352 = or i32 %350, %351
  %353 = call i8* @Var_Subst(i32* null, i8* %348, i32 %349, i32 %352)
  store i8* %353, i8** %6, align 8
  %354 = load i64, i64* @targets, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %347
  %357 = load i64, i64* @targets, align 8
  %358 = call i32 @Lst_Destroy(i64 %357, i32* null)
  br label %359

359:                                              ; preds = %356, %347
  %360 = load i64, i64* @FALSE, align 8
  %361 = call i64 @Lst_Init(i64 %360)
  store i64 %361, i64* @targets, align 8
  %362 = load i64, i64* @TRUE, align 8
  store i64 %362, i64* @inLine, align 8
  %363 = load i8*, i8** %6, align 8
  %364 = call i32 @ParseDoDependency(i8* %363)
  %365 = load i8*, i8** %6, align 8
  %366 = call i32 @free(i8* %365)
  %367 = load i8*, i8** %5, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %370

369:                                              ; preds = %359
  br label %160

370:                                              ; preds = %359
  br label %26

371:                                              ; preds = %26
  br label %372

372:                                              ; preds = %371
  %373 = call i64 (...) @ParseEOF()
  %374 = load i64, i64* @CONTINUE, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %25, label %376

376:                                              ; preds = %372
  %377 = load i64, i64* @fatals, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %376
  %380 = load i32, i32* @stdout, align 4
  %381 = call i32 @fflush(i32 %380)
  %382 = load i32, i32* @stderr, align 4
  %383 = load i8*, i8** @progname, align 8
  %384 = call i32 (i32, i8*, ...) @fprintf(i32 %382, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %383)
  %385 = call i32 @PrintOnError(i32* null, i32* null)
  %386 = call i32 @exit(i32 1) #3
  unreachable

387:                                              ; preds = %376
  ret void
}

declare dso_local %struct.loadedfile* @loadfile(i8*, i32) #1

declare dso_local i32 @Parse_SetInput(i8*, i32, i32, i32, %struct.loadedfile*) #1

declare dso_local i8* @ParseReadLine(...) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @IsInclude(i8*, i64) #1

declare dso_local i32 @ParseDoInclude(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Var_Delete(i8*, i32) #1

declare dso_local i32 @Var_Export(i8*, i32) #1

declare dso_local i32 @Var_UnExport(i8*) #1

declare dso_local i64 @ParseMessage(i8*) #1

declare dso_local i32 @Parse_Error(i32, i8*, ...) #1

declare dso_local i8* @bmake_strdup(i8*) #1

declare dso_local i32 @Lst_ForEach(i64, i32, i8*) #1

declare dso_local i64 @Parse_IsVar(i8*) #1

declare dso_local i32 @ParseFinishLine(...) #1

declare dso_local i32 @Parse_DoVar(i8*, i32) #1

declare dso_local i64 @ParseIsEscaped(i8*, i8*) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #1

declare dso_local i32 @Lst_Destroy(i64, i32*) #1

declare dso_local i64 @Lst_Init(i64) #1

declare dso_local i32 @ParseDoDependency(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ParseEOF(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @PrintOnError(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
