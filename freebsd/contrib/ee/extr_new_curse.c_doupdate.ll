; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_doupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_doupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct._line*, i64, i64 }
%struct._line = type { i8*, i8*, i64, i32, i8*, %struct._line*, %struct._line* }

@FALSE = common dso_local global i8* null, align 8
@virtual_scr = common dso_local global %struct.TYPE_10__* null, align 8
@nc_attributes = common dso_local global i32 0, align 4
@A_NC_BIG5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@Repaint_screen = common dso_local global i8 0, align 1
@String_table = common dso_local global i32** null, align 8
@cl__ = common dso_local global i64 0, align 8
@LINES = common dso_local global i32 0, align 4
@curscr = common dso_local global %struct.TYPE_10__* null, align 8
@ce__ = common dso_local global i64 0, align 8
@STAND = common dso_local global i8 0, align 1
@top_of_win = common dso_local global %struct._line* null, align 8
@virtual_lines = common dso_local global i8** null, align 8
@nc_scrolling_ability = common dso_local global i64 0, align 8
@cs__ = common dso_local global i64 0, align 8
@Curr_x = common dso_local global i32 0, align 4
@Curr_y = common dso_local global i32 0, align 4
@ic__ = common dso_local global i64 0, align 8
@im__ = common dso_local global i64 0, align 8
@dc__ = common dso_local global i64 0, align 8
@Booleans = common dso_local global i64* null, align 8
@xs__ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doupdate() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [10 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct._line*, align 8
  %20 = alloca %struct._line*, align 8
  %21 = alloca %struct._line*, align 8
  %22 = alloca %struct._line*, align 8
  %23 = alloca %struct._line*, align 8
  %24 = alloca %struct._line*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8, align 1
  %34 = load i8*, i8** @FALSE, align 8
  %35 = ptrtoint i8* %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @virtual_scr, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %1, align 8
  %37 = load i32, i32* @nc_attributes, align 4
  %38 = load i32, i32* @A_NC_BIG5, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %0
  %42 = load i8*, i8** @TRUE, align 8
  %43 = ptrtoint i8* %42 to i8
  store i8 %43, i8* %33, align 1
  br label %44

44:                                               ; preds = %41, %0
  %45 = load i8, i8* @Repaint_screen, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %175

47:                                               ; preds = %44
  %48 = load i32**, i32*** @String_table, align 8
  %49 = load i64, i64* @cl__, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32**, i32*** @String_table, align 8
  %55 = load i64, i64* @cl__, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @String_Out(i32* %57, i32* null, i32 0)
  br label %96

59:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %92, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @LINES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @Position(%struct.TYPE_10__* %65, i32 %66, i32 0)
  %68 = load i32**, i32*** @String_table, align 8
  %69 = load i64, i64* @ce__, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32**, i32*** @String_table, align 8
  %75 = load i64, i64* @ce__, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @String_Out(i32* %77, i32* null, i32 0)
  br label %92

79:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %88, %79
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = call i32 @putchar(i8 signext 32)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %80

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %60

95:                                               ; preds = %60
  br label %96

96:                                               ; preds = %95, %53
  store i32 0, i32* %10, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load %struct._line*, %struct._line** %98, align 8
  store %struct._line* %99, %struct._line** %19, align 8
  br label %100

100:                                              ; preds = %166, %96
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %172

106:                                              ; preds = %100
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @Position(%struct.TYPE_10__* %107, i32 %108, i32 0)
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %151, %106
  %111 = load %struct._line*, %struct._line** %19, align 8
  %112 = getelementptr inbounds %struct._line, %struct._line* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br label %126

126:                                              ; preds = %120, %110
  %127 = phi i1 [ false, %110 ], [ %125, %120 ]
  br i1 %127, label %128, label %154

128:                                              ; preds = %126
  %129 = load %struct._line*, %struct._line** %19, align 8
  %130 = getelementptr inbounds %struct._line, %struct._line* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = load %struct._line*, %struct._line** %19, align 8
  %137 = getelementptr inbounds %struct._line, %struct._line* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load %struct._line*, %struct._line** %19, align 8
  %144 = getelementptr inbounds %struct._line, %struct._line* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct._line*, %struct._line** %19, align 8
  %147 = getelementptr inbounds %struct._line, %struct._line* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @Char_out(i8 signext %135, i8 signext %142, i8* %145, i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %128
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %110

154:                                              ; preds = %126
  %155 = load i8, i8* @STAND, align 1
  %156 = icmp ne i8 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i8*, i8** @FALSE, align 8
  %159 = ptrtoint i8* %158 to i8
  store i8 %159, i8* @STAND, align 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @Position(%struct.TYPE_10__* %160, i32 %161, i32 %162)
  %164 = call i32 (...) @attribute_off()
  br label %165

165:                                              ; preds = %157, %154
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = load %struct._line*, %struct._line** %19, align 8
  %170 = getelementptr inbounds %struct._line, %struct._line* %169, i32 0, i32 5
  %171 = load %struct._line*, %struct._line** %170, align 8
  store %struct._line* %171, %struct._line** %19, align 8
  br label %100

172:                                              ; preds = %100
  %173 = load i8*, i8** @FALSE, align 8
  %174 = ptrtoint i8* %173 to i8
  store i8 %174, i8* @Repaint_screen, align 1
  br label %175

175:                                              ; preds = %172, %44
  store i32 0, i32* %2, align 4
  %176 = load i8*, i8** @FALSE, align 8
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %3, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 5
  %180 = load %struct._line*, %struct._line** %179, align 8
  store %struct._line* %180, %struct._line** @top_of_win, align 8
  store i32 0, i32* %10, align 4
  %181 = load %struct._line*, %struct._line** @top_of_win, align 8
  store %struct._line* %181, %struct._line** %19, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 5
  %184 = load %struct._line*, %struct._line** %183, align 8
  store %struct._line* %184, %struct._line** %20, align 8
  br label %185

185:                                              ; preds = %216, %175
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %219

191:                                              ; preds = %185
  %192 = load i8*, i8** @TRUE, align 8
  %193 = load i8**, i8*** @virtual_lines, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  store i8* %192, i8** %196, align 8
  %197 = load %struct._line*, %struct._line** %19, align 8
  %198 = load %struct._line*, %struct._line** %20, align 8
  %199 = call i32 @Comp_line(%struct._line* %197, %struct._line* %198)
  store i32 %199, i32* %2, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %191
  %202 = load i8*, i8** @FALSE, align 8
  %203 = load i8**, i8*** @virtual_lines, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  store i8* %202, i8** %206, align 8
  %207 = load i8*, i8** @TRUE, align 8
  %208 = ptrtoint i8* %207 to i32
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %201, %191
  %210 = load %struct._line*, %struct._line** %19, align 8
  %211 = getelementptr inbounds %struct._line, %struct._line* %210, i32 0, i32 5
  %212 = load %struct._line*, %struct._line** %211, align 8
  store %struct._line* %212, %struct._line** %19, align 8
  %213 = load %struct._line*, %struct._line** %20, align 8
  %214 = getelementptr inbounds %struct._line, %struct._line* %213, i32 0, i32 5
  %215 = load %struct._line*, %struct._line** %214, align 8
  store %struct._line* %215, %struct._line** %20, align 8
  br label %216

216:                                              ; preds = %209
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %185

219:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 5
  %222 = load %struct._line*, %struct._line** %221, align 8
  store %struct._line* %222, %struct._line** %20, align 8
  %223 = load %struct._line*, %struct._line** @top_of_win, align 8
  store %struct._line* %223, %struct._line** %19, align 8
  store i32 0, i32* %2, align 4
  %224 = load i32, i32* %3, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %712

226:                                              ; preds = %219
  store i32 -1, i32* %16, align 4
  %227 = load i8*, i8** @FALSE, align 8
  %228 = ptrtoint i8* %227 to i32
  store i32 %228, i32* %13, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %15, align 4
  br label %232

232:                                              ; preds = %247, %226
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load i8**, i8*** @virtual_lines, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br label %244

244:                                              ; preds = %236, %232
  %245 = phi i1 [ false, %232 ], [ %243, %236 ]
  br i1 %245, label %246, label %250

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %15, align 4
  br label %232

250:                                              ; preds = %244
  store i32 0, i32* %16, align 4
  br label %251

251:                                              ; preds = %268, %250
  %252 = load i32, i32* %16, align 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %251
  %258 = load i8**, i8*** @virtual_lines, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = load i8*, i8** @FALSE, align 8
  %264 = icmp eq i8* %262, %263
  br label %265

265:                                              ; preds = %257, %251
  %266 = phi i1 [ false, %251 ], [ %264, %257 ]
  br i1 %266, label %267, label %271

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %16, align 4
  br label %251

271:                                              ; preds = %265
  br label %272

272:                                              ; preds = %702, %271
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %15, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i64, i64* @nc_scrolling_ability, align 8
  %278 = icmp ne i64 %277, 0
  br label %279

279:                                              ; preds = %276, %272
  %280 = phi i1 [ false, %272 ], [ %278, %276 ]
  br i1 %280, label %281, label %711

281:                                              ; preds = %279
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %16, align 4
  %284 = icmp sge i32 %282, %283
  br i1 %284, label %285, label %308

285:                                              ; preds = %281
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %16, align 4
  br label %287

287:                                              ; preds = %304, %285
  %288 = load i32, i32* %16, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %301

293:                                              ; preds = %287
  %294 = load i8**, i8*** @virtual_lines, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = load i8*, i8** @FALSE, align 8
  %300 = icmp eq i8* %298, %299
  br label %301

301:                                              ; preds = %293, %287
  %302 = phi i1 [ false, %287 ], [ %300, %293 ]
  br i1 %302, label %303, label %307

303:                                              ; preds = %301
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %16, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %16, align 4
  br label %287

307:                                              ; preds = %301
  br label %308

308:                                              ; preds = %307, %281
  %309 = load i8**, i8*** @virtual_lines, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %702, label %315

315:                                              ; preds = %308
  %316 = load i8*, i8** @TRUE, align 8
  %317 = ptrtoint i8* %316 to i32
  store i32 %317, i32* %3, align 4
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  %320 = load %struct._line*, %struct._line** %19, align 8
  %321 = getelementptr inbounds %struct._line, %struct._line* %320, i32 0, i32 5
  %322 = load %struct._line*, %struct._line** %321, align 8
  store %struct._line* %322, %struct._line** %21, align 8
  br label %323

323:                                              ; preds = %510, %315
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 7
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %323
  %329 = load i32, i32* %3, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %328
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* %16, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %343

335:                                              ; preds = %331
  %336 = load i8**, i8*** @virtual_lines, align 8
  %337 = load i32, i32* %11, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ne i8* %340, null
  %342 = xor i1 %341, true
  br label %343

343:                                              ; preds = %335, %331, %328, %323
  %344 = phi i1 [ false, %331 ], [ false, %328 ], [ false, %323 ], [ %342, %335 ]
  br i1 %344, label %345, label %513

345:                                              ; preds = %343
  %346 = load %struct._line*, %struct._line** %21, align 8
  %347 = load %struct._line*, %struct._line** %20, align 8
  %348 = call i32 @Comp_line(%struct._line* %346, %struct._line* %347)
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %505

350:                                              ; preds = %345
  %351 = load i8**, i8*** @virtual_lines, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %351, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %505, label %357

357:                                              ; preds = %350
  %358 = load i32, i32* %11, align 4
  store i32 %358, i32* %18, align 4
  %359 = load %struct._line*, %struct._line** %21, align 8
  store %struct._line* %359, %struct._line** %23, align 8
  %360 = load %struct._line*, %struct._line** %20, align 8
  store %struct._line* %360, %struct._line** %24, align 8
  store i32 0, i32* %8, align 4
  br label %361

361:                                              ; preds = %375, %357
  %362 = load i32, i32* %18, align 4
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %362, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %361
  %368 = load %struct._line*, %struct._line** %23, align 8
  %369 = load %struct._line*, %struct._line** %24, align 8
  %370 = call i32 @Comp_line(%struct._line* %368, %struct._line* %369)
  %371 = icmp sle i32 %370, 0
  br label %372

372:                                              ; preds = %367, %361
  %373 = phi i1 [ false, %361 ], [ %371, %367 ]
  br i1 %373, label %374, label %386

374:                                              ; preds = %372
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %18, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %18, align 4
  %378 = load %struct._line*, %struct._line** %23, align 8
  %379 = getelementptr inbounds %struct._line, %struct._line* %378, i32 0, i32 5
  %380 = load %struct._line*, %struct._line** %379, align 8
  store %struct._line* %380, %struct._line** %23, align 8
  %381 = load %struct._line*, %struct._line** %24, align 8
  %382 = getelementptr inbounds %struct._line, %struct._line* %381, i32 0, i32 5
  %383 = load %struct._line*, %struct._line** %382, align 8
  store %struct._line* %383, %struct._line** %24, align 8
  %384 = load i32, i32* %8, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %8, align 4
  br label %361

386:                                              ; preds = %372
  %387 = load i32, i32* %8, align 4
  %388 = icmp sgt i32 %387, 3
  br i1 %388, label %389, label %504

389:                                              ; preds = %386
  %390 = load i32**, i32*** @String_table, align 8
  %391 = load i64, i64* @cs__, align 8
  %392 = getelementptr inbounds i32*, i32** %390, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = icmp ne i32* %393, null
  br i1 %394, label %395, label %412

395:                                              ; preds = %389
  %396 = load i32, i32* %10, align 4
  %397 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 1
  store i32 %396, i32* %397, align 4
  %398 = load i32, i32* %18, align 4
  %399 = sub nsw i32 %398, 1
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %402, 1
  %404 = call i32 @min(i32 %399, i32 %403)
  %405 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %404, i32* %405, align 16
  %406 = load i32**, i32*** @String_table, align 8
  %407 = load i64, i64* @cs__, align 8
  %408 = getelementptr inbounds i32*, i32** %406, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %411 = call i32 @String_Out(i32* %409, i32* %410, i32 2)
  store i32 -1, i32* @Curr_x, align 4
  store i32 -1, i32* @Curr_y, align 4
  br label %412

412:                                              ; preds = %395, %389
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* %10, align 4
  %415 = sub nsw i32 %413, %414
  store i32 %415, i32* %12, align 4
  br label %416

416:                                              ; preds = %432, %412
  %417 = load i32, i32* %12, align 4
  %418 = icmp sgt i32 %417, 0
  br i1 %418, label %419, label %435

419:                                              ; preds = %416
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %18, align 4
  %422 = sub nsw i32 %421, 1
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 %425, 1
  %427 = call i32 @min(i32 %422, i32 %426)
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %429 = call %struct._line* @Delete_line(i32 %420, i32 %427, %struct.TYPE_10__* %428)
  store %struct._line* %429, %struct._line** %21, align 8
  %430 = load i8*, i8** @FALSE, align 8
  %431 = ptrtoint i8* %430 to i32
  store i32 %431, i32* %3, align 4
  br label %432

432:                                              ; preds = %419
  %433 = load i32, i32* %12, align 4
  %434 = add nsw i32 %433, -1
  store i32 %434, i32* %12, align 4
  br label %416

435:                                              ; preds = %416
  %436 = load i32**, i32*** @String_table, align 8
  %437 = load i64, i64* @cs__, align 8
  %438 = getelementptr inbounds i32*, i32** %436, i64 %437
  %439 = load i32*, i32** %438, align 8
  %440 = icmp ne i32* %439, null
  br i1 %440, label %441, label %452

441:                                              ; preds = %435
  %442 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %442, align 4
  %443 = load i32, i32* @LINES, align 4
  %444 = sub nsw i32 %443, 1
  %445 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %444, i32* %445, align 16
  %446 = load i32**, i32*** @String_table, align 8
  %447 = load i64, i64* @cs__, align 8
  %448 = getelementptr inbounds i32*, i32** %446, i64 %447
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %451 = call i32 @String_Out(i32* %449, i32* %450, i32 2)
  store i32 -1, i32* @Curr_x, align 4
  store i32 -1, i32* @Curr_y, align 4
  br label %452

452:                                              ; preds = %441, %435
  %453 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %453, i32 0, i32 5
  %455 = load %struct._line*, %struct._line** %454, align 8
  store %struct._line* %455, %struct._line** @top_of_win, align 8
  %456 = load %struct._line*, %struct._line** @top_of_win, align 8
  store %struct._line* %456, %struct._line** %19, align 8
  store i32 0, i32* %12, align 4
  br label %457

457:                                              ; preds = %465, %452
  %458 = load i32, i32* %12, align 4
  %459 = load i32, i32* %10, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %468

461:                                              ; preds = %457
  %462 = load %struct._line*, %struct._line** %19, align 8
  %463 = getelementptr inbounds %struct._line, %struct._line* %462, i32 0, i32 5
  %464 = load %struct._line*, %struct._line** %463, align 8
  store %struct._line* %464, %struct._line** %19, align 8
  br label %465

465:                                              ; preds = %461
  %466 = load i32, i32* %12, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %12, align 4
  br label %457

468:                                              ; preds = %457
  %469 = load i32, i32* %10, align 4
  store i32 %469, i32* %12, align 4
  %470 = load %struct._line*, %struct._line** %19, align 8
  store %struct._line* %470, %struct._line** %21, align 8
  %471 = load %struct._line*, %struct._line** %20, align 8
  store %struct._line* %471, %struct._line** %22, align 8
  br label %472

472:                                              ; preds = %494, %468
  %473 = load i32, i32* %12, align 4
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = icmp slt i32 %473, %476
  br i1 %477, label %478, label %503

478:                                              ; preds = %472
  %479 = load %struct._line*, %struct._line** %21, align 8
  %480 = load %struct._line*, %struct._line** %22, align 8
  %481 = call i32 @Comp_line(%struct._line* %479, %struct._line* %480)
  store i32 %481, i32* %2, align 4
  %482 = load i32, i32* %2, align 4
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %478
  %485 = load i8*, i8** @FALSE, align 8
  br label %488

486:                                              ; preds = %478
  %487 = load i8*, i8** @TRUE, align 8
  br label %488

488:                                              ; preds = %486, %484
  %489 = phi i8* [ %485, %484 ], [ %487, %486 ]
  %490 = load i8**, i8*** @virtual_lines, align 8
  %491 = load i32, i32* %12, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8*, i8** %490, i64 %492
  store i8* %489, i8** %493, align 8
  br label %494

494:                                              ; preds = %488
  %495 = load %struct._line*, %struct._line** %21, align 8
  %496 = getelementptr inbounds %struct._line, %struct._line* %495, i32 0, i32 5
  %497 = load %struct._line*, %struct._line** %496, align 8
  store %struct._line* %497, %struct._line** %21, align 8
  %498 = load %struct._line*, %struct._line** %22, align 8
  %499 = getelementptr inbounds %struct._line, %struct._line* %498, i32 0, i32 5
  %500 = load %struct._line*, %struct._line** %499, align 8
  store %struct._line* %500, %struct._line** %22, align 8
  %501 = load i32, i32* %12, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %12, align 4
  br label %472

503:                                              ; preds = %472
  br label %504

504:                                              ; preds = %503, %386
  br label %509

505:                                              ; preds = %350, %345
  %506 = load %struct._line*, %struct._line** %21, align 8
  %507 = getelementptr inbounds %struct._line, %struct._line* %506, i32 0, i32 5
  %508 = load %struct._line*, %struct._line** %507, align 8
  store %struct._line* %508, %struct._line** %21, align 8
  br label %509

509:                                              ; preds = %505, %504
  br label %510

510:                                              ; preds = %509
  %511 = load i32, i32* %11, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %11, align 4
  br label %323

513:                                              ; preds = %343
  %514 = load i32, i32* %10, align 4
  %515 = sub nsw i32 %514, 1
  store i32 %515, i32* %11, align 4
  %516 = load %struct._line*, %struct._line** %19, align 8
  %517 = getelementptr inbounds %struct._line, %struct._line* %516, i32 0, i32 6
  %518 = load %struct._line*, %struct._line** %517, align 8
  store %struct._line* %518, %struct._line** %21, align 8
  br label %519

519:                                              ; preds = %698, %513
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 6
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %538

524:                                              ; preds = %519
  %525 = load i32, i32* %11, align 4
  %526 = icmp sge i32 %525, 0
  br i1 %526, label %527, label %538

527:                                              ; preds = %524
  %528 = load i32, i32* %3, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %538

530:                                              ; preds = %527
  %531 = load i8**, i8*** @virtual_lines, align 8
  %532 = load i32, i32* %11, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8*, i8** %531, i64 %533
  %535 = load i8*, i8** %534, align 8
  %536 = icmp ne i8* %535, null
  %537 = xor i1 %536, true
  br label %538

538:                                              ; preds = %530, %527, %524, %519
  %539 = phi i1 [ false, %527 ], [ false, %524 ], [ false, %519 ], [ %537, %530 ]
  br i1 %539, label %540, label %701

540:                                              ; preds = %538
  %541 = load %struct._line*, %struct._line** %21, align 8
  %542 = load %struct._line*, %struct._line** %20, align 8
  %543 = call i32 @Comp_line(%struct._line* %541, %struct._line* %542)
  %544 = icmp eq i32 %543, -1
  br i1 %544, label %545, label %693

545:                                              ; preds = %540
  %546 = load i32, i32* %10, align 4
  store i32 %546, i32* %18, align 4
  %547 = load %struct._line*, %struct._line** %21, align 8
  store %struct._line* %547, %struct._line** %23, align 8
  %548 = load %struct._line*, %struct._line** %20, align 8
  store %struct._line* %548, %struct._line** %24, align 8
  store i32 0, i32* %8, align 4
  br label %549

549:                                              ; preds = %563, %545
  %550 = load i32, i32* %18, align 4
  %551 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = icmp slt i32 %550, %553
  br i1 %554, label %555, label %560

555:                                              ; preds = %549
  %556 = load %struct._line*, %struct._line** %23, align 8
  %557 = load %struct._line*, %struct._line** %24, align 8
  %558 = call i32 @Comp_line(%struct._line* %556, %struct._line* %557)
  %559 = icmp sle i32 %558, 0
  br label %560

560:                                              ; preds = %555, %549
  %561 = phi i1 [ false, %549 ], [ %559, %555 ]
  br i1 %561, label %562, label %574

562:                                              ; preds = %560
  br label %563

563:                                              ; preds = %562
  %564 = load i32, i32* %18, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %18, align 4
  %566 = load %struct._line*, %struct._line** %23, align 8
  %567 = getelementptr inbounds %struct._line, %struct._line* %566, i32 0, i32 5
  %568 = load %struct._line*, %struct._line** %567, align 8
  store %struct._line* %568, %struct._line** %23, align 8
  %569 = load %struct._line*, %struct._line** %24, align 8
  %570 = getelementptr inbounds %struct._line, %struct._line* %569, i32 0, i32 5
  %571 = load %struct._line*, %struct._line** %570, align 8
  store %struct._line* %571, %struct._line** %24, align 8
  %572 = load i32, i32* %8, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %8, align 4
  br label %549

574:                                              ; preds = %560
  %575 = load i32, i32* %8, align 4
  %576 = icmp sgt i32 %575, 3
  br i1 %576, label %577, label %692

577:                                              ; preds = %574
  %578 = load i32**, i32*** @String_table, align 8
  %579 = load i64, i64* @cs__, align 8
  %580 = getelementptr inbounds i32*, i32** %578, i64 %579
  %581 = load i32*, i32** %580, align 8
  %582 = icmp ne i32* %581, null
  br i1 %582, label %583, label %600

583:                                              ; preds = %577
  %584 = load i32, i32* %11, align 4
  %585 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 1
  store i32 %584, i32* %585, align 4
  %586 = load i32, i32* %18, align 4
  %587 = sub nsw i32 %586, 1
  %588 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %589 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = sub nsw i32 %590, 1
  %592 = call i32 @min(i32 %587, i32 %591)
  %593 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %592, i32* %593, align 16
  %594 = load i32**, i32*** @String_table, align 8
  %595 = load i64, i64* @cs__, align 8
  %596 = getelementptr inbounds i32*, i32** %594, i64 %595
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %599 = call i32 @String_Out(i32* %597, i32* %598, i32 2)
  store i32 -1, i32* @Curr_x, align 4
  store i32 -1, i32* @Curr_y, align 4
  br label %600

600:                                              ; preds = %583, %577
  %601 = load i32, i32* %10, align 4
  %602 = load i32, i32* %11, align 4
  %603 = sub nsw i32 %601, %602
  store i32 %603, i32* %12, align 4
  br label %604

604:                                              ; preds = %620, %600
  %605 = load i32, i32* %12, align 4
  %606 = icmp sgt i32 %605, 0
  br i1 %606, label %607, label %623

607:                                              ; preds = %604
  %608 = load i32, i32* %11, align 4
  %609 = load i32, i32* %18, align 4
  %610 = sub nsw i32 %609, 1
  %611 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 4
  %614 = sub nsw i32 %613, 1
  %615 = call i32 @min(i32 %610, i32 %614)
  %616 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %617 = call %struct._line* @Insert_line(i32 %608, i32 %615, %struct.TYPE_10__* %616)
  store %struct._line* %617, %struct._line** %21, align 8
  %618 = load i8*, i8** @FALSE, align 8
  %619 = ptrtoint i8* %618 to i32
  store i32 %619, i32* %3, align 4
  br label %620

620:                                              ; preds = %607
  %621 = load i32, i32* %12, align 4
  %622 = add nsw i32 %621, -1
  store i32 %622, i32* %12, align 4
  br label %604

623:                                              ; preds = %604
  %624 = load i32**, i32*** @String_table, align 8
  %625 = load i64, i64* @cs__, align 8
  %626 = getelementptr inbounds i32*, i32** %624, i64 %625
  %627 = load i32*, i32** %626, align 8
  %628 = icmp ne i32* %627, null
  br i1 %628, label %629, label %640

629:                                              ; preds = %623
  %630 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %630, align 4
  %631 = load i32, i32* @LINES, align 4
  %632 = sub nsw i32 %631, 1
  %633 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %632, i32* %633, align 16
  %634 = load i32**, i32*** @String_table, align 8
  %635 = load i64, i64* @cs__, align 8
  %636 = getelementptr inbounds i32*, i32** %634, i64 %635
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %639 = call i32 @String_Out(i32* %637, i32* %638, i32 2)
  store i32 -1, i32* @Curr_x, align 4
  store i32 -1, i32* @Curr_y, align 4
  br label %640

640:                                              ; preds = %629, %623
  %641 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %642 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %641, i32 0, i32 5
  %643 = load %struct._line*, %struct._line** %642, align 8
  store %struct._line* %643, %struct._line** @top_of_win, align 8
  %644 = load %struct._line*, %struct._line** @top_of_win, align 8
  store %struct._line* %644, %struct._line** %19, align 8
  store i32 0, i32* %12, align 4
  br label %645

645:                                              ; preds = %653, %640
  %646 = load i32, i32* %12, align 4
  %647 = load i32, i32* %10, align 4
  %648 = icmp slt i32 %646, %647
  br i1 %648, label %649, label %656

649:                                              ; preds = %645
  %650 = load %struct._line*, %struct._line** %19, align 8
  %651 = getelementptr inbounds %struct._line, %struct._line* %650, i32 0, i32 5
  %652 = load %struct._line*, %struct._line** %651, align 8
  store %struct._line* %652, %struct._line** %19, align 8
  br label %653

653:                                              ; preds = %649
  %654 = load i32, i32* %12, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %12, align 4
  br label %645

656:                                              ; preds = %645
  %657 = load i32, i32* %10, align 4
  store i32 %657, i32* %12, align 4
  %658 = load %struct._line*, %struct._line** %19, align 8
  store %struct._line* %658, %struct._line** %21, align 8
  %659 = load %struct._line*, %struct._line** %20, align 8
  store %struct._line* %659, %struct._line** %22, align 8
  br label %660

660:                                              ; preds = %682, %656
  %661 = load i32, i32* %12, align 4
  %662 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %663 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = icmp slt i32 %661, %664
  br i1 %665, label %666, label %691

666:                                              ; preds = %660
  %667 = load %struct._line*, %struct._line** %21, align 8
  %668 = load %struct._line*, %struct._line** %22, align 8
  %669 = call i32 @Comp_line(%struct._line* %667, %struct._line* %668)
  store i32 %669, i32* %2, align 4
  %670 = load i32, i32* %2, align 4
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %672, label %674

672:                                              ; preds = %666
  %673 = load i8*, i8** @FALSE, align 8
  br label %676

674:                                              ; preds = %666
  %675 = load i8*, i8** @TRUE, align 8
  br label %676

676:                                              ; preds = %674, %672
  %677 = phi i8* [ %673, %672 ], [ %675, %674 ]
  %678 = load i8**, i8*** @virtual_lines, align 8
  %679 = load i32, i32* %12, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i8*, i8** %678, i64 %680
  store i8* %677, i8** %681, align 8
  br label %682

682:                                              ; preds = %676
  %683 = load %struct._line*, %struct._line** %21, align 8
  %684 = getelementptr inbounds %struct._line, %struct._line* %683, i32 0, i32 5
  %685 = load %struct._line*, %struct._line** %684, align 8
  store %struct._line* %685, %struct._line** %21, align 8
  %686 = load %struct._line*, %struct._line** %22, align 8
  %687 = getelementptr inbounds %struct._line, %struct._line* %686, i32 0, i32 5
  %688 = load %struct._line*, %struct._line** %687, align 8
  store %struct._line* %688, %struct._line** %22, align 8
  %689 = load i32, i32* %12, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %12, align 4
  br label %660

691:                                              ; preds = %660
  br label %692

692:                                              ; preds = %691, %574
  br label %697

693:                                              ; preds = %540
  %694 = load %struct._line*, %struct._line** %21, align 8
  %695 = getelementptr inbounds %struct._line, %struct._line* %694, i32 0, i32 6
  %696 = load %struct._line*, %struct._line** %695, align 8
  store %struct._line* %696, %struct._line** %21, align 8
  br label %697

697:                                              ; preds = %693, %692
  br label %698

698:                                              ; preds = %697
  %699 = load i32, i32* %11, align 4
  %700 = add nsw i32 %699, -1
  store i32 %700, i32* %11, align 4
  br label %519

701:                                              ; preds = %538
  br label %702

702:                                              ; preds = %701, %308
  %703 = load i32, i32* %10, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %10, align 4
  %705 = load %struct._line*, %struct._line** %19, align 8
  %706 = getelementptr inbounds %struct._line, %struct._line* %705, i32 0, i32 5
  %707 = load %struct._line*, %struct._line** %706, align 8
  store %struct._line* %707, %struct._line** %19, align 8
  %708 = load %struct._line*, %struct._line** %20, align 8
  %709 = getelementptr inbounds %struct._line, %struct._line* %708, i32 0, i32 5
  %710 = load %struct._line*, %struct._line** %709, align 8
  store %struct._line* %710, %struct._line** %20, align 8
  br label %272

711:                                              ; preds = %279
  br label %712

712:                                              ; preds = %711, %219
  store i32 0, i32* %10, align 4
  %713 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curscr, align 8
  %714 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %713, i32 0, i32 5
  %715 = load %struct._line*, %struct._line** %714, align 8
  store %struct._line* %715, %struct._line** %19, align 8
  br label %716

716:                                              ; preds = %726, %712
  %717 = load i32, i32* %10, align 4
  %718 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %719 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %718, i32 0, i32 2
  %720 = load i32, i32* %719, align 8
  %721 = icmp slt i32 %717, %720
  br i1 %721, label %722, label %729

722:                                              ; preds = %716
  %723 = load %struct._line*, %struct._line** %19, align 8
  %724 = getelementptr inbounds %struct._line, %struct._line* %723, i32 0, i32 5
  %725 = load %struct._line*, %struct._line** %724, align 8
  store %struct._line* %725, %struct._line** %19, align 8
  br label %726

726:                                              ; preds = %722
  %727 = load i32, i32* %10, align 4
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %10, align 4
  br label %716

729:                                              ; preds = %716
  %730 = load %struct._line*, %struct._line** %19, align 8
  store %struct._line* %730, %struct._line** @top_of_win, align 8
  store i32 0, i32* %10, align 4
  %731 = load %struct._line*, %struct._line** @top_of_win, align 8
  store %struct._line* %731, %struct._line** %19, align 8
  %732 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %733 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %732, i32 0, i32 5
  %734 = load %struct._line*, %struct._line** %733, align 8
  store %struct._line* %734, %struct._line** %20, align 8
  br label %735

735:                                              ; preds = %1367, %729
  %736 = load i32, i32* %10, align 4
  %737 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %738 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %737, i32 0, i32 1
  %739 = load i32, i32* %738, align 4
  %740 = icmp slt i32 %736, %739
  br i1 %740, label %741, label %1376

741:                                              ; preds = %735
  %742 = load i32**, i32*** @String_table, align 8
  %743 = load i64, i64* @ic__, align 8
  %744 = getelementptr inbounds i32*, i32** %742, i64 %743
  %745 = load i32*, i32** %744, align 8
  %746 = icmp ne i32* %745, null
  br i1 %746, label %753, label %747

747:                                              ; preds = %741
  %748 = load i32**, i32*** @String_table, align 8
  %749 = load i64, i64* @im__, align 8
  %750 = getelementptr inbounds i32*, i32** %748, i64 %749
  %751 = load i32*, i32** %750, align 8
  %752 = icmp ne i32* %751, null
  br i1 %752, label %753, label %1167

753:                                              ; preds = %747, %741
  %754 = load i32**, i32*** @String_table, align 8
  %755 = load i64, i64* @dc__, align 8
  %756 = getelementptr inbounds i32*, i32** %754, i64 %755
  %757 = load i32*, i32** %756, align 8
  %758 = icmp ne i32* %757, null
  br i1 %758, label %759, label %1167

759:                                              ; preds = %753
  %760 = load %struct._line*, %struct._line** %19, align 8
  %761 = getelementptr inbounds %struct._line, %struct._line* %760, i32 0, i32 0
  %762 = load i8*, i8** %761, align 8
  %763 = getelementptr inbounds i8, i8* %762, i64 0
  %764 = load i8, i8* %763, align 1
  %765 = sext i8 %764 to i32
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %1167

767:                                              ; preds = %759
  %768 = load i8, i8* %33, align 1
  %769 = icmp ne i8 %768, 0
  br i1 %769, label %1167, label %770

770:                                              ; preds = %767
  store i32 0, i32* %9, align 4
  %771 = load i8*, i8** @TRUE, align 8
  %772 = ptrtoint i8* %771 to i32
  store i32 %772, i32* %14, align 4
  %773 = load %struct._line*, %struct._line** %20, align 8
  %774 = getelementptr inbounds %struct._line, %struct._line* %773, i32 0, i32 0
  %775 = load i8*, i8** %774, align 8
  store i8* %775, i8** %26, align 8
  %776 = load %struct._line*, %struct._line** %20, align 8
  %777 = getelementptr inbounds %struct._line, %struct._line* %776, i32 0, i32 1
  %778 = load i8*, i8** %777, align 8
  store i8* %778, i8** %28, align 8
  %779 = load %struct._line*, %struct._line** %19, align 8
  %780 = getelementptr inbounds %struct._line, %struct._line* %779, i32 0, i32 0
  %781 = load i8*, i8** %780, align 8
  store i8* %781, i8** %25, align 8
  %782 = load %struct._line*, %struct._line** %19, align 8
  %783 = getelementptr inbounds %struct._line, %struct._line* %782, i32 0, i32 1
  %784 = load i8*, i8** %783, align 8
  store i8* %784, i8** %27, align 8
  br label %785

785:                                              ; preds = %1140, %770
  %786 = load i8*, i8** %26, align 8
  %787 = load i32, i32* %9, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i8, i8* %786, i64 %788
  %790 = load i8, i8* %789, align 1
  %791 = sext i8 %790 to i32
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %785
  %794 = load i32, i32* %9, align 4
  %795 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %796 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 8
  %798 = icmp slt i32 %794, %797
  br label %799

799:                                              ; preds = %793, %785
  %800 = phi i1 [ false, %785 ], [ %798, %793 ]
  br i1 %800, label %801, label %1141

801:                                              ; preds = %799
  %802 = load i8, i8* @STAND, align 1
  %803 = sext i8 %802 to i32
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %805, label %882

805:                                              ; preds = %801
  %806 = load i64*, i64** @Booleans, align 8
  %807 = load i64, i64* @xs__, align 8
  %808 = getelementptr inbounds i64, i64* %806, i64 %807
  %809 = load i64, i64* %808, align 8
  %810 = icmp ne i64 %809, 0
  br i1 %810, label %811, label %882

811:                                              ; preds = %805
  br label %812

812:                                              ; preds = %858, %811
  %813 = load i8*, i8** %26, align 8
  %814 = load i32, i32* %9, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i8, i8* %813, i64 %815
  %817 = load i8, i8* %816, align 1
  %818 = sext i8 %817 to i32
  %819 = load i8*, i8** %25, align 8
  %820 = load i32, i32* %9, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i8, i8* %819, i64 %821
  %823 = load i8, i8* %822, align 1
  %824 = sext i8 %823 to i32
  %825 = icmp eq i32 %818, %824
  br i1 %825, label %826, label %856

826:                                              ; preds = %812
  %827 = load i8*, i8** %28, align 8
  %828 = load i32, i32* %9, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i8, i8* %827, i64 %829
  %831 = load i8, i8* %830, align 1
  %832 = sext i8 %831 to i32
  %833 = load i8*, i8** %27, align 8
  %834 = load i32, i32* %9, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds i8, i8* %833, i64 %835
  %837 = load i8, i8* %836, align 1
  %838 = sext i8 %837 to i32
  %839 = icmp eq i32 %832, %838
  br i1 %839, label %840, label %856

840:                                              ; preds = %826
  %841 = load i8*, i8** %26, align 8
  %842 = load i32, i32* %9, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i8, i8* %841, i64 %843
  %845 = load i8, i8* %844, align 1
  %846 = sext i8 %845 to i32
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %856

848:                                              ; preds = %840
  %849 = load i8*, i8** %28, align 8
  %850 = load i32, i32* %9, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i8, i8* %849, i64 %851
  %853 = load i8, i8* %852, align 1
  %854 = sext i8 %853 to i32
  %855 = icmp ne i32 %854, 0
  br label %856

856:                                              ; preds = %848, %840, %826, %812
  %857 = phi i1 [ false, %840 ], [ false, %826 ], [ false, %812 ], [ %855, %848 ]
  br i1 %857, label %858, label %861

858:                                              ; preds = %856
  %859 = load i32, i32* %9, align 4
  %860 = add nsw i32 %859, 1
  store i32 %860, i32* %9, align 4
  br label %812

861:                                              ; preds = %856
  %862 = load i8, i8* @STAND, align 1
  %863 = sext i8 %862 to i32
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %881

865:                                              ; preds = %861
  %866 = load i8*, i8** %28, align 8
  %867 = load i32, i32* %9, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i8, i8* %866, i64 %868
  %870 = load i8, i8* %869, align 1
  %871 = icmp ne i8 %870, 0
  br i1 %871, label %881, label %872

872:                                              ; preds = %865
  %873 = load i8*, i8** @FALSE, align 8
  %874 = ptrtoint i8* %873 to i8
  store i8 %874, i8* @STAND, align 1
  %875 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %876 = load i32, i32* %10, align 4
  %877 = load i32, i32* %9, align 4
  %878 = call i32 @Position(%struct.TYPE_10__* %875, i32 %876, i32 %877)
  %879 = call i32 (...) @attribute_off()
  %880 = call i32 (...) @attribute_off()
  br label %881

881:                                              ; preds = %872, %865, %861
  br label %925

882:                                              ; preds = %805, %801
  br label %883

883:                                              ; preds = %921, %882
  %884 = load i8*, i8** %26, align 8
  %885 = load i32, i32* %9, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i8, i8* %884, i64 %886
  %888 = load i8, i8* %887, align 1
  %889 = sext i8 %888 to i32
  %890 = load i8*, i8** %25, align 8
  %891 = load i32, i32* %9, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds i8, i8* %890, i64 %892
  %894 = load i8, i8* %893, align 1
  %895 = sext i8 %894 to i32
  %896 = icmp eq i32 %889, %895
  br i1 %896, label %897, label %919

897:                                              ; preds = %883
  %898 = load i8*, i8** %28, align 8
  %899 = load i32, i32* %9, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds i8, i8* %898, i64 %900
  %902 = load i8, i8* %901, align 1
  %903 = sext i8 %902 to i32
  %904 = load i8*, i8** %27, align 8
  %905 = load i32, i32* %9, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i8, i8* %904, i64 %906
  %908 = load i8, i8* %907, align 1
  %909 = sext i8 %908 to i32
  %910 = icmp eq i32 %903, %909
  br i1 %910, label %911, label %919

911:                                              ; preds = %897
  %912 = load i8*, i8** %26, align 8
  %913 = load i32, i32* %9, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i8, i8* %912, i64 %914
  %916 = load i8, i8* %915, align 1
  %917 = sext i8 %916 to i32
  %918 = icmp ne i32 %917, 0
  br label %919

919:                                              ; preds = %911, %897, %883
  %920 = phi i1 [ false, %897 ], [ false, %883 ], [ %918, %911 ]
  br i1 %920, label %921, label %924

921:                                              ; preds = %919
  %922 = load i32, i32* %9, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %9, align 4
  br label %883

924:                                              ; preds = %919
  br label %925

925:                                              ; preds = %924, %881
  %926 = load i8*, i8** %28, align 8
  %927 = load i32, i32* %9, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i8, i8* %926, i64 %928
  %930 = load i8, i8* %929, align 1
  %931 = sext i8 %930 to i32
  %932 = load i8*, i8** %27, align 8
  %933 = load i32, i32* %9, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds i8, i8* %932, i64 %934
  %936 = load i8, i8* %935, align 1
  %937 = sext i8 %936 to i32
  %938 = icmp ne i32 %931, %937
  br i1 %938, label %939, label %960

939:                                              ; preds = %925
  %940 = load i8*, i8** %27, align 8
  %941 = load i32, i32* %9, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds i8, i8* %940, i64 %942
  %944 = load i8, i8* %943, align 1
  %945 = sext i8 %944 to i32
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %947, label %960

947:                                              ; preds = %939
  %948 = load i64*, i64** @Booleans, align 8
  %949 = load i64, i64* @xs__, align 8
  %950 = getelementptr inbounds i64, i64* %948, i64 %949
  %951 = load i64, i64* %950, align 8
  %952 = icmp ne i64 %951, 0
  br i1 %952, label %953, label %960

953:                                              ; preds = %947
  %954 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %955 = load i32, i32* %10, align 4
  %956 = load i32, i32* %9, align 4
  %957 = call i32 @Position(%struct.TYPE_10__* %954, i32 %955, i32 %956)
  %958 = call i32 (...) @attribute_off()
  %959 = call i32 (...) @attribute_off()
  br label %960

960:                                              ; preds = %953, %947, %939, %925
  %961 = load i8*, i8** %26, align 8
  %962 = load i32, i32* %9, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds i8, i8* %961, i64 %963
  %965 = load i8, i8* %964, align 1
  %966 = sext i8 %965 to i32
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %1121

968:                                              ; preds = %960
  %969 = load i32, i32* %9, align 4
  store i32 %969, i32* %5, align 4
  %970 = load i32, i32* %9, align 4
  store i32 %970, i32* %4, align 4
  %971 = load i32, i32* %9, align 4
  store i32 %971, i32* %6, align 4
  %972 = load i32, i32* %9, align 4
  store i32 %972, i32* %7, align 4
  %973 = load i32, i32* %14, align 4
  %974 = icmp ne i32 %973, 0
  br i1 %974, label %975, label %996

975:                                              ; preds = %968
  %976 = load %struct._line*, %struct._line** %20, align 8
  %977 = getelementptr inbounds %struct._line, %struct._line* %976, i32 0, i32 4
  %978 = load i8*, i8** %977, align 8
  %979 = icmp ne i8* %978, null
  br i1 %979, label %980, label %996

980:                                              ; preds = %975
  %981 = load %struct._line*, %struct._line** %19, align 8
  %982 = getelementptr inbounds %struct._line, %struct._line* %981, i32 0, i32 2
  %983 = load i64, i64* %982, align 8
  %984 = load %struct._line*, %struct._line** %20, align 8
  %985 = getelementptr inbounds %struct._line, %struct._line* %984, i32 0, i32 2
  %986 = load i64, i64* %985, align 8
  %987 = icmp sle i64 %983, %986
  br i1 %987, label %988, label %995

988:                                              ; preds = %980
  %989 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %990 = load i32, i32* %10, align 4
  %991 = load i32, i32* %9, align 4
  %992 = load %struct._line*, %struct._line** %20, align 8
  %993 = load %struct._line*, %struct._line** %19, align 8
  %994 = call i32 @check_insert(%struct.TYPE_10__* %989, i32 %990, i32 %991, %struct._line* %992, %struct._line* %993)
  store i32 %994, i32* %13, align 4
  br label %995

995:                                              ; preds = %988, %980
  br label %996

996:                                              ; preds = %995, %975, %968
  %997 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %998 = load i32, i32* %10, align 4
  %999 = load i32, i32* %9, align 4
  %1000 = load %struct._line*, %struct._line** %20, align 8
  %1001 = load %struct._line*, %struct._line** %19, align 8
  %1002 = call i32 @check_delete(%struct.TYPE_10__* %997, i32 %998, i32 %999, %struct._line* %1000, %struct._line* %1001)
  store i32 %1002, i32* %13, align 4
  %1003 = load i8*, i8** @FALSE, align 8
  %1004 = ptrtoint i8* %1003 to i32
  store i32 %1004, i32* %14, align 4
  %1005 = load i8*, i8** @FALSE, align 8
  %1006 = load %struct._line*, %struct._line** %20, align 8
  %1007 = getelementptr inbounds %struct._line, %struct._line* %1006, i32 0, i32 4
  store i8* %1005, i8** %1007, align 8
  %1008 = load i32, i32* %13, align 4
  %1009 = icmp ne i32 %1008, 0
  br i1 %1009, label %1017, label %1010

1010:                                             ; preds = %996
  %1011 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1012 = load i32, i32* %10, align 4
  %1013 = load i32, i32* %9, align 4
  %1014 = load %struct._line*, %struct._line** %20, align 8
  %1015 = load %struct._line*, %struct._line** %19, align 8
  %1016 = call i32 @check_insert(%struct.TYPE_10__* %1011, i32 %1012, i32 %1013, %struct._line* %1014, %struct._line* %1015)
  store i32 %1016, i32* %13, align 4
  br label %1017

1017:                                             ; preds = %1010, %996
  %1018 = load i32, i32* %13, align 4
  %1019 = icmp ne i32 %1018, 0
  br i1 %1019, label %1020, label %1048

1020:                                             ; preds = %1017
  %1021 = load i8*, i8** %25, align 8
  %1022 = load i32, i32* %9, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i8, i8* %1021, i64 %1023
  %1025 = load i8, i8* %1024, align 1
  %1026 = sext i8 %1025 to i32
  %1027 = load i8*, i8** %26, align 8
  %1028 = load i32, i32* %9, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, i8* %1027, i64 %1029
  %1031 = load i8, i8* %1030, align 1
  %1032 = sext i8 %1031 to i32
  %1033 = icmp ne i32 %1026, %1032
  br i1 %1033, label %1048, label %1034

1034:                                             ; preds = %1020
  %1035 = load i8*, i8** %27, align 8
  %1036 = load i32, i32* %9, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i8, i8* %1035, i64 %1037
  %1039 = load i8, i8* %1038, align 1
  %1040 = sext i8 %1039 to i32
  %1041 = load i8*, i8** %28, align 8
  %1042 = load i32, i32* %9, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds i8, i8* %1041, i64 %1043
  %1045 = load i8, i8* %1044, align 1
  %1046 = sext i8 %1045 to i32
  %1047 = icmp ne i32 %1040, %1046
  br i1 %1047, label %1048, label %1109

1048:                                             ; preds = %1034, %1020, %1017
  %1049 = load i32, i32* %9, align 4
  %1050 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1051 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1050, i32 0, i32 0
  %1052 = load i32, i32* %1051, align 8
  %1053 = icmp slt i32 %1049, %1052
  br i1 %1053, label %1054, label %1109

1054:                                             ; preds = %1048
  %1055 = load i8*, i8** %26, align 8
  %1056 = load i32, i32* %9, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds i8, i8* %1055, i64 %1057
  %1059 = load i8, i8* %1058, align 1
  %1060 = sext i8 %1059 to i32
  %1061 = icmp eq i32 %1060, 32
  br i1 %1061, label %1062, label %1089

1062:                                             ; preds = %1054
  %1063 = load i8*, i8** %25, align 8
  %1064 = load i32, i32* %9, align 4
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds i8, i8* %1063, i64 %1065
  %1067 = load i8, i8* %1066, align 1
  %1068 = sext i8 %1067 to i32
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1089

1070:                                             ; preds = %1062
  %1071 = load i8*, i8** %28, align 8
  %1072 = load i32, i32* %9, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds i8, i8* %1071, i64 %1073
  %1075 = load i8, i8* %1074, align 1
  %1076 = sext i8 %1075 to i32
  %1077 = load i8*, i8** %27, align 8
  %1078 = load i32, i32* %9, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds i8, i8* %1077, i64 %1079
  %1081 = load i8, i8* %1080, align 1
  %1082 = sext i8 %1081 to i32
  %1083 = icmp eq i32 %1076, %1082
  br i1 %1083, label %1084, label %1089

1084:                                             ; preds = %1070
  %1085 = load i8*, i8** %25, align 8
  %1086 = load i32, i32* %9, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds i8, i8* %1085, i64 %1087
  store i8 32, i8* %1088, align 1
  br label %1108

1089:                                             ; preds = %1070, %1062, %1054
  %1090 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1091 = load i32, i32* %10, align 4
  %1092 = load i32, i32* %9, align 4
  %1093 = call i32 @Position(%struct.TYPE_10__* %1090, i32 %1091, i32 %1092)
  %1094 = load i8*, i8** %26, align 8
  %1095 = load i32, i32* %9, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i8, i8* %1094, i64 %1096
  %1098 = load i8, i8* %1097, align 1
  %1099 = load i8*, i8** %28, align 8
  %1100 = load i32, i32* %9, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds i8, i8* %1099, i64 %1101
  %1103 = load i8, i8* %1102, align 1
  %1104 = load i8*, i8** %25, align 8
  %1105 = load i8*, i8** %27, align 8
  %1106 = load i32, i32* %9, align 4
  %1107 = call i32 @Char_out(i8 signext %1098, i8 signext %1103, i8* %1104, i8* %1105, i32 %1106)
  br label %1108

1108:                                             ; preds = %1089, %1084
  br label %1109

1109:                                             ; preds = %1108, %1048, %1034
  %1110 = load i8*, i8** %26, align 8
  %1111 = load i32, i32* %9, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds i8, i8* %1110, i64 %1112
  %1114 = load i8, i8* %1113, align 1
  %1115 = sext i8 %1114 to i32
  %1116 = icmp ne i32 %1115, 0
  br i1 %1116, label %1117, label %1120

1117:                                             ; preds = %1109
  %1118 = load i32, i32* %9, align 4
  %1119 = add nsw i32 %1118, 1
  store i32 %1119, i32* %9, align 4
  br label %1120

1120:                                             ; preds = %1117, %1109
  br label %1121

1121:                                             ; preds = %1120, %960
  %1122 = load i8, i8* @STAND, align 1
  %1123 = sext i8 %1122 to i32
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1125, label %1140

1125:                                             ; preds = %1121
  %1126 = load i8*, i8** %28, align 8
  %1127 = load i32, i32* %9, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds i8, i8* %1126, i64 %1128
  %1130 = load i8, i8* %1129, align 1
  %1131 = icmp ne i8 %1130, 0
  br i1 %1131, label %1140, label %1132

1132:                                             ; preds = %1125
  %1133 = load i8*, i8** @FALSE, align 8
  %1134 = ptrtoint i8* %1133 to i8
  store i8 %1134, i8* @STAND, align 1
  %1135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1136 = load i32, i32* %10, align 4
  %1137 = load i32, i32* %9, align 4
  %1138 = call i32 @Position(%struct.TYPE_10__* %1135, i32 %1136, i32 %1137)
  %1139 = call i32 (...) @attribute_off()
  br label %1140

1140:                                             ; preds = %1132, %1125, %1121
  br label %785

1141:                                             ; preds = %799
  %1142 = load i8*, i8** %26, align 8
  %1143 = load i32, i32* %9, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i8, i8* %1142, i64 %1144
  %1146 = load i8, i8* %1145, align 1
  %1147 = sext i8 %1146 to i32
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1149, label %1166

1149:                                             ; preds = %1141
  %1150 = load i8*, i8** %25, align 8
  %1151 = load i32, i32* %9, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds i8, i8* %1150, i64 %1152
  %1154 = load i8, i8* %1153, align 1
  %1155 = sext i8 %1154 to i32
  %1156 = icmp ne i32 %1155, 0
  br i1 %1156, label %1157, label %1166

1157:                                             ; preds = %1149
  %1158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1159 = load i32, i32* %10, align 4
  %1160 = load i32, i32* %9, align 4
  %1161 = call i32 @Position(%struct.TYPE_10__* %1158, i32 %1159, i32 %1160)
  %1162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1163 = load i32, i32* %10, align 4
  %1164 = load i32, i32* %9, align 4
  %1165 = call i32 @CLEAR_TO_EOL(%struct.TYPE_10__* %1162, i32 %1163, i32 %1164)
  br label %1166

1166:                                             ; preds = %1157, %1149, %1141
  br label %1352

1167:                                             ; preds = %767, %759, %753, %747
  store i32 0, i32* %9, align 4
  %1168 = load %struct._line*, %struct._line** %19, align 8
  %1169 = getelementptr inbounds %struct._line, %struct._line* %1168, i32 0, i32 0
  %1170 = load i8*, i8** %1169, align 8
  store i8* %1170, i8** %31, align 8
  %1171 = load %struct._line*, %struct._line** %19, align 8
  %1172 = getelementptr inbounds %struct._line, %struct._line* %1171, i32 0, i32 1
  %1173 = load i8*, i8** %1172, align 8
  store i8* %1173, i8** %29, align 8
  %1174 = load %struct._line*, %struct._line** %20, align 8
  %1175 = getelementptr inbounds %struct._line, %struct._line* %1174, i32 0, i32 0
  %1176 = load i8*, i8** %1175, align 8
  store i8* %1176, i8** %32, align 8
  %1177 = load %struct._line*, %struct._line** %20, align 8
  %1178 = getelementptr inbounds %struct._line, %struct._line* %1177, i32 0, i32 1
  %1179 = load i8*, i8** %1178, align 8
  store i8* %1179, i8** %30, align 8
  br label %1180

1180:                                             ; preds = %1325, %1167
  %1181 = load i32, i32* %9, align 4
  %1182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1182, i32 0, i32 0
  %1184 = load i32, i32* %1183, align 8
  %1185 = icmp slt i32 %1181, %1184
  br i1 %1185, label %1186, label %1194

1186:                                             ; preds = %1180
  %1187 = load i8*, i8** %32, align 8
  %1188 = load i32, i32* %9, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds i8, i8* %1187, i64 %1189
  %1191 = load i8, i8* %1190, align 1
  %1192 = sext i8 %1191 to i32
  %1193 = icmp ne i32 %1192, 0
  br label %1194

1194:                                             ; preds = %1186, %1180
  %1195 = phi i1 [ false, %1180 ], [ %1193, %1186 ]
  br i1 %1195, label %1196, label %1326

1196:                                             ; preds = %1194
  br label %1197

1197:                                             ; preds = %1241, %1196
  %1198 = load i8*, i8** %31, align 8
  %1199 = load i32, i32* %9, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds i8, i8* %1198, i64 %1200
  %1202 = load i8, i8* %1201, align 1
  %1203 = sext i8 %1202 to i32
  %1204 = load i8*, i8** %32, align 8
  %1205 = load i32, i32* %9, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i8, i8* %1204, i64 %1206
  %1208 = load i8, i8* %1207, align 1
  %1209 = sext i8 %1208 to i32
  %1210 = icmp eq i32 %1203, %1209
  br i1 %1210, label %1211, label %1239

1211:                                             ; preds = %1197
  %1212 = load i8*, i8** %29, align 8
  %1213 = load i32, i32* %9, align 4
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds i8, i8* %1212, i64 %1214
  %1216 = load i8, i8* %1215, align 1
  %1217 = sext i8 %1216 to i32
  %1218 = load i8*, i8** %30, align 8
  %1219 = load i32, i32* %9, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds i8, i8* %1218, i64 %1220
  %1222 = load i8, i8* %1221, align 1
  %1223 = sext i8 %1222 to i32
  %1224 = icmp eq i32 %1217, %1223
  br i1 %1224, label %1225, label %1239

1225:                                             ; preds = %1211
  %1226 = load i32, i32* %9, align 4
  %1227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1227, i32 0, i32 0
  %1229 = load i32, i32* %1228, align 8
  %1230 = icmp slt i32 %1226, %1229
  br i1 %1230, label %1231, label %1239

1231:                                             ; preds = %1225
  %1232 = load i8*, i8** %32, align 8
  %1233 = load i32, i32* %9, align 4
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds i8, i8* %1232, i64 %1234
  %1236 = load i8, i8* %1235, align 1
  %1237 = sext i8 %1236 to i32
  %1238 = icmp ne i32 %1237, 0
  br label %1239

1239:                                             ; preds = %1231, %1225, %1211, %1197
  %1240 = phi i1 [ false, %1225 ], [ false, %1211 ], [ false, %1197 ], [ %1238, %1231 ]
  br i1 %1240, label %1241, label %1244

1241:                                             ; preds = %1239
  %1242 = load i32, i32* %9, align 4
  %1243 = add nsw i32 %1242, 1
  store i32 %1243, i32* %9, align 4
  br label %1197

1244:                                             ; preds = %1239
  %1245 = load i8, i8* %33, align 1
  %1246 = sext i8 %1245 to i32
  %1247 = icmp ne i32 %1246, 0
  br i1 %1247, label %1248, label %1260

1248:                                             ; preds = %1244
  %1249 = load i8*, i8** %31, align 8
  %1250 = load i32, i32* %9, align 4
  %1251 = sub nsw i32 %1250, 1
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds i8, i8* %1249, i64 %1252
  %1254 = load i8, i8* %1253, align 1
  %1255 = call i64 @highbitset(i8 signext %1254)
  %1256 = icmp ne i64 %1255, 0
  br i1 %1256, label %1257, label %1260

1257:                                             ; preds = %1248
  %1258 = load i32, i32* %9, align 4
  %1259 = add nsw i32 %1258, -1
  store i32 %1259, i32* %9, align 4
  br label %1260

1260:                                             ; preds = %1257, %1248, %1244
  %1261 = load i32, i32* %9, align 4
  store i32 %1261, i32* %4, align 4
  %1262 = load i32, i32* %9, align 4
  store i32 %1262, i32* %5, align 4
  %1263 = load i32, i32* %9, align 4
  %1264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1264, i32 0, i32 0
  %1266 = load i32, i32* %1265, align 8
  %1267 = icmp slt i32 %1263, %1266
  br i1 %1267, label %1268, label %1325

1268:                                             ; preds = %1260
  %1269 = load i8*, i8** %32, align 8
  %1270 = load i32, i32* %9, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds i8, i8* %1269, i64 %1271
  %1273 = load i8, i8* %1272, align 1
  %1274 = sext i8 %1273 to i32
  %1275 = icmp ne i32 %1274, 0
  br i1 %1275, label %1276, label %1325

1276:                                             ; preds = %1268
  %1277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1278 = load i32, i32* %10, align 4
  %1279 = load i32, i32* %4, align 4
  %1280 = call i32 @Position(%struct.TYPE_10__* %1277, i32 %1278, i32 %1279)
  %1281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1282 = load i32, i32* %10, align 4
  %1283 = load i32, i32* %9, align 4
  %1284 = call i32 @CLEAR_TO_EOL(%struct.TYPE_10__* %1281, i32 %1282, i32 %1283)
  %1285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1286 = load i32, i32* %10, align 4
  %1287 = load i32, i32* %4, align 4
  %1288 = call i32 @Position(%struct.TYPE_10__* %1285, i32 %1286, i32 %1287)
  %1289 = load i32, i32* %4, align 4
  store i32 %1289, i32* %9, align 4
  br label %1290

1290:                                             ; preds = %1321, %1276
  %1291 = load i8*, i8** %32, align 8
  %1292 = load i32, i32* %9, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds i8, i8* %1291, i64 %1293
  %1295 = load i8, i8* %1294, align 1
  %1296 = sext i8 %1295 to i32
  %1297 = icmp ne i32 %1296, 0
  br i1 %1297, label %1298, label %1304

1298:                                             ; preds = %1290
  %1299 = load i32, i32* %9, align 4
  %1300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1300, i32 0, i32 0
  %1302 = load i32, i32* %1301, align 8
  %1303 = icmp slt i32 %1299, %1302
  br label %1304

1304:                                             ; preds = %1298, %1290
  %1305 = phi i1 [ false, %1290 ], [ %1303, %1298 ]
  br i1 %1305, label %1306, label %1324

1306:                                             ; preds = %1304
  %1307 = load i8*, i8** %32, align 8
  %1308 = load i32, i32* %9, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds i8, i8* %1307, i64 %1309
  %1311 = load i8, i8* %1310, align 1
  %1312 = load i8*, i8** %30, align 8
  %1313 = load i32, i32* %9, align 4
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds i8, i8* %1312, i64 %1314
  %1316 = load i8, i8* %1315, align 1
  %1317 = load i8*, i8** %31, align 8
  %1318 = load i8*, i8** %29, align 8
  %1319 = load i32, i32* %9, align 4
  %1320 = call i32 @Char_out(i8 signext %1311, i8 signext %1316, i8* %1317, i8* %1318, i32 %1319)
  br label %1321

1321:                                             ; preds = %1306
  %1322 = load i32, i32* %9, align 4
  %1323 = add nsw i32 %1322, 1
  store i32 %1323, i32* %9, align 4
  br label %1290

1324:                                             ; preds = %1304
  br label %1325

1325:                                             ; preds = %1324, %1268, %1260
  br label %1180

1326:                                             ; preds = %1194
  %1327 = load i8*, i8** %32, align 8
  %1328 = load i32, i32* %9, align 4
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds i8, i8* %1327, i64 %1329
  %1331 = load i8, i8* %1330, align 1
  %1332 = sext i8 %1331 to i32
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1334, label %1351

1334:                                             ; preds = %1326
  %1335 = load i8*, i8** %31, align 8
  %1336 = load i32, i32* %9, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds i8, i8* %1335, i64 %1337
  %1339 = load i8, i8* %1338, align 1
  %1340 = sext i8 %1339 to i32
  %1341 = icmp ne i32 %1340, 0
  br i1 %1341, label %1342, label %1351

1342:                                             ; preds = %1334
  %1343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1344 = load i32, i32* %10, align 4
  %1345 = load i32, i32* %9, align 4
  %1346 = call i32 @Position(%struct.TYPE_10__* %1343, i32 %1344, i32 %1345)
  %1347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1348 = load i32, i32* %10, align 4
  %1349 = load i32, i32* %9, align 4
  %1350 = call i32 @CLEAR_TO_EOL(%struct.TYPE_10__* %1347, i32 %1348, i32 %1349)
  br label %1351

1351:                                             ; preds = %1342, %1334, %1326
  br label %1352

1352:                                             ; preds = %1351, %1166
  %1353 = load i8, i8* @STAND, align 1
  %1354 = icmp ne i8 %1353, 0
  br i1 %1354, label %1355, label %1363

1355:                                             ; preds = %1352
  %1356 = load i8*, i8** @FALSE, align 8
  %1357 = ptrtoint i8* %1356 to i8
  store i8 %1357, i8* @STAND, align 1
  %1358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1359 = load i32, i32* %10, align 4
  %1360 = load i32, i32* %9, align 4
  %1361 = call i32 @Position(%struct.TYPE_10__* %1358, i32 %1359, i32 %1360)
  %1362 = call i32 (...) @attribute_off()
  br label %1363

1363:                                             ; preds = %1355, %1352
  %1364 = load i32, i32* %10, align 4
  %1365 = load %struct._line*, %struct._line** %20, align 8
  %1366 = getelementptr inbounds %struct._line, %struct._line* %1365, i32 0, i32 3
  store i32 %1364, i32* %1366, align 8
  br label %1367

1367:                                             ; preds = %1363
  %1368 = load i32, i32* %10, align 4
  %1369 = add nsw i32 %1368, 1
  store i32 %1369, i32* %10, align 4
  %1370 = load %struct._line*, %struct._line** %19, align 8
  %1371 = getelementptr inbounds %struct._line, %struct._line* %1370, i32 0, i32 5
  %1372 = load %struct._line*, %struct._line** %1371, align 8
  store %struct._line* %1372, %struct._line** %19, align 8
  %1373 = load %struct._line*, %struct._line** %20, align 8
  %1374 = getelementptr inbounds %struct._line, %struct._line* %1373, i32 0, i32 5
  %1375 = load %struct._line*, %struct._line** %1374, align 8
  store %struct._line* %1375, %struct._line** %20, align 8
  br label %735

1376:                                             ; preds = %735
  %1377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1378, i32 0, i32 3
  %1380 = load i32, i32* %1379, align 4
  %1381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %1382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1381, i32 0, i32 4
  %1383 = load i32, i32* %1382, align 8
  %1384 = call i32 @Position(%struct.TYPE_10__* %1377, i32 %1380, i32 %1383)
  ret void
}

declare dso_local i32 @String_Out(i32*, i32*, i32) #1

declare dso_local i32 @Position(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @Char_out(i8 signext, i8 signext, i8*, i8*, i32) #1

declare dso_local i32 @attribute_off(...) #1

declare dso_local i32 @Comp_line(%struct._line*, %struct._line*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct._line* @Delete_line(i32, i32, %struct.TYPE_10__*) #1

declare dso_local %struct._line* @Insert_line(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @check_insert(%struct.TYPE_10__*, i32, i32, %struct._line*, %struct._line*) #1

declare dso_local i32 @check_delete(%struct.TYPE_10__*, i32, i32, %struct._line*, %struct._line*) #1

declare dso_local i32 @CLEAR_TO_EOL(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @highbitset(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
