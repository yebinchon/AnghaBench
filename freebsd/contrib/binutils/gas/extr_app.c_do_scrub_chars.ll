; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_app.c_do_scrub_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_app.c_do_scrub_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_scrub_chars.quotechar = internal global i8 0, align 1
@saved_input = common dso_local global i8* null, align 8
@saved_input_len = common dso_local global i32 0, align 4
@input_buffer = common dso_local global i8* null, align 8
@state = common dso_local global i32 0, align 4
@out_string = common dso_local global i8* null, align 8
@old_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"end of file in comment\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"end of file in string; '%c' inserted\00", align 1
@scrub_m68k_mri = common dso_local global i32 0, align 4
@add_newlines = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"end of file not at end of a line; newline inserted\00", align 1
@lex = common dso_local global i32* null, align 8
@LABELS_WITHOUT_COLONS = common dso_local global i32 0, align 4
@flag_m68k_mri = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"end of file in multiline comment\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"end of file after a one-character quote; \\0 inserted\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"end of file in escape character\00", align 1
@out_buf = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"end of file in comment; newline inserted\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09linefile \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"\09.linefile \00", align 1
@tc_comment_chars = common dso_local global i32 0, align 4
@mri_state = common dso_local global i32* null, align 8
@found_comment = common dso_local global i32 0, align 4
@found_comment_file = common dso_local global i32 0, align 4
@mri_last_ch = common dso_local global i8 0, align 1
@mri_pseudo = common dso_local global i32* null, align 8
@symver_pseudo = common dso_local global i32* null, align 8
@symver_state = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_scrub_chars(i32 (i8*, i32)* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 (i8*, i32)* %0, i32 (i8*, i32)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %26 = load i8*, i8** @saved_input, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i8*, i8** @saved_input, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @saved_input_len, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %11, align 8
  br label %47

34:                                               ; preds = %3
  %35 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %36 = load i8*, i8** @input_buffer, align 8
  %37 = call i32 %35(i8* %36, i32 8)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %1857

41:                                               ; preds = %34
  %42 = load i8*, i8** @input_buffer, align 8
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %41, %28
  br label %48

48:                                               ; preds = %47, %72, %175, %340, %528, %573, %588, %602, %1829
  %49 = load i32, i32* @state, align 4
  switch i32 %49, label %603 [
    i32 -1, label %50
    i32 -2, label %73
    i32 4, label %179
    i32 5, label %341
    i32 6, label %529
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** @out_string, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** @out_string, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i8*, i8** @out_string, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @old_state, align 4
  store i32 %60, i32* @state, align 4
  store i32 3, i32* @old_state, align 4
  br label %61

61:                                               ; preds = %59, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp uge i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %1837

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  br label %48

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %170, %73
  br label %75

75:                                               ; preds = %124, %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  br label %103

84:                                               ; preds = %75
  store i8* null, i8** @saved_input, align 8
  %85 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %86 = load i8*, i8** @input_buffer, align 8
  %87 = call i32 %85(i8* %86, i32 8)
  store i32 %87, i32* %12, align 4
  %88 = load i8*, i8** @input_buffer, align 8
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8* %92, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %101

96:                                               ; preds = %84
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  %99 = load i8, i8* %97, align 1
  %100 = zext i8 %99 to i32
  br label %101

101:                                              ; preds = %96, %95
  %102 = phi i32 [ 141, %95 ], [ %100, %96 ]
  br label %103

103:                                              ; preds = %101, %79
  %104 = phi i32 [ %83, %79 ], [ %102, %101 ]
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 141
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @as_warn(i8* %108)
  br label %1830

110:                                              ; preds = %103
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  store i8 10, i8* %115, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = icmp uge i8* %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %1837

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %110
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 42
  br i1 %126, label %75, label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %159, %127
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ult i8* %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %10, align 8
  %135 = load i8, i8* %133, align 1
  %136 = zext i8 %135 to i32
  br label %156

137:                                              ; preds = %128
  store i8* null, i8** @saved_input, align 8
  %138 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %139 = load i8*, i8** @input_buffer, align 8
  %140 = call i32 %138(i8* %139, i32 8)
  store i32 %140, i32* %12, align 4
  %141 = load i8*, i8** @input_buffer, align 8
  store i8* %141, i8** %10, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8* %145, i8** %11, align 8
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  br label %154

149:                                              ; preds = %137
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %10, align 8
  %152 = load i8, i8* %150, align 1
  %153 = zext i8 %152 to i32
  br label %154

154:                                              ; preds = %149, %148
  %155 = phi i32 [ 141, %148 ], [ %153, %149 ]
  br label %156

156:                                              ; preds = %154, %132
  %157 = phi i32 [ %136, %132 ], [ %155, %154 ]
  store i32 %157, i32* %13, align 4
  %158 = icmp eq i32 %157, 42
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %128

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, 141
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %165 = call i32 (i8*, ...) @as_warn(i8* %164)
  br label %1830

166:                                              ; preds = %160
  %167 = load i32, i32* %13, align 4
  %168 = icmp eq i32 %167, 47
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %175

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = trunc i32 %171 to i8
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 -1
  store i8* %174, i8** %10, align 8
  store i8 %172, i8* %174, align 1
  br label %74

175:                                              ; preds = %169
  %176 = load i32, i32* @old_state, align 4
  store i32 %176, i32* @state, align 4
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 -1
  store i8* %178, i8** %10, align 8
  store i8 32, i8* %178, align 1
  br label %48

179:                                              ; preds = %48
  %180 = load i8*, i8** %10, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = icmp ult i8* %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %10, align 8
  %186 = load i8, i8* %184, align 1
  %187 = zext i8 %186 to i32
  br label %207

188:                                              ; preds = %179
  store i8* null, i8** @saved_input, align 8
  %189 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %190 = load i8*, i8** @input_buffer, align 8
  %191 = call i32 %189(i8* %190, i32 8)
  store i32 %191, i32* %12, align 4
  %192 = load i8*, i8** @input_buffer, align 8
  store i8* %192, i8** %10, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8* %196, i8** %11, align 8
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %205

200:                                              ; preds = %188
  %201 = load i8*, i8** %10, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %10, align 8
  %203 = load i8, i8* %201, align 1
  %204 = zext i8 %203 to i32
  br label %205

205:                                              ; preds = %200, %199
  %206 = phi i32 [ 141, %199 ], [ %204, %200 ]
  br label %207

207:                                              ; preds = %205, %183
  %208 = phi i32 [ %187, %183 ], [ %206, %205 ]
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 141
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %1830

212:                                              ; preds = %207
  %213 = load i32, i32* %13, align 4
  %214 = icmp sge i32 %213, 48
  br i1 %214, label %215, label %230

215:                                              ; preds = %212
  %216 = load i32, i32* %13, align 4
  %217 = icmp sle i32 %216, 57
  br i1 %217, label %218, label %230

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %13, align 4
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %8, align 8
  store i8 %221, i8* %222, align 1
  %224 = load i8*, i8** %8, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = icmp uge i8* %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  br label %1837

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228
  br label %339

230:                                              ; preds = %215, %212
  br label %231

231:                                              ; preds = %268, %230
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 141
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @IS_WHITESPACE(i32 %235)
  %237 = icmp ne i32 %236, 0
  br label %238

238:                                              ; preds = %234, %231
  %239 = phi i1 [ false, %231 ], [ %237, %234 ]
  br i1 %239, label %240, label %270

240:                                              ; preds = %238
  %241 = load i8*, i8** %10, align 8
  %242 = load i8*, i8** %11, align 8
  %243 = icmp ult i8* %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load i8*, i8** %10, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %10, align 8
  %247 = load i8, i8* %245, align 1
  %248 = zext i8 %247 to i32
  br label %268

249:                                              ; preds = %240
  store i8* null, i8** @saved_input, align 8
  %250 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %251 = load i8*, i8** @input_buffer, align 8
  %252 = call i32 %250(i8* %251, i32 8)
  store i32 %252, i32* %12, align 4
  %253 = load i8*, i8** @input_buffer, align 8
  store i8* %253, i8** %10, align 8
  %254 = load i8*, i8** %10, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  store i8* %257, i8** %11, align 8
  %258 = load i32, i32* %12, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %249
  br label %266

261:                                              ; preds = %249
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %10, align 8
  %264 = load i8, i8* %262, align 1
  %265 = zext i8 %264 to i32
  br label %266

266:                                              ; preds = %261, %260
  %267 = phi i32 [ 141, %260 ], [ %265, %261 ]
  br label %268

268:                                              ; preds = %266, %244
  %269 = phi i32 [ %248, %244 ], [ %267, %266 ]
  store i32 %269, i32* %13, align 4
  br label %231

270:                                              ; preds = %238
  %271 = load i32, i32* %13, align 4
  %272 = icmp eq i32 %271, 34
  br i1 %272, label %273, label %287

273:                                              ; preds = %270
  %274 = load i32, i32* %13, align 4
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* @do_scrub_chars.quotechar, align 1
  store i32 5, i32* @state, align 4
  store i32 3, i32* @old_state, align 4
  br label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %13, align 4
  %278 = trunc i32 %277 to i8
  %279 = load i8*, i8** %8, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %8, align 8
  store i8 %278, i8* %279, align 1
  %281 = load i8*, i8** %8, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = icmp uge i8* %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  br label %1837

285:                                              ; preds = %276
  br label %286

286:                                              ; preds = %285
  br label %338

287:                                              ; preds = %270
  br label %288

288:                                              ; preds = %324, %287
  %289 = load i32, i32* %13, align 4
  %290 = icmp ne i32 %289, 141
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, i32* %13, align 4
  %293 = icmp ne i32 %292, 10
  br label %294

294:                                              ; preds = %291, %288
  %295 = phi i1 [ false, %288 ], [ %293, %291 ]
  br i1 %295, label %296, label %326

296:                                              ; preds = %294
  %297 = load i8*, i8** %10, align 8
  %298 = load i8*, i8** %11, align 8
  %299 = icmp ult i8* %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = load i8*, i8** %10, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %10, align 8
  %303 = load i8, i8* %301, align 1
  %304 = zext i8 %303 to i32
  br label %324

305:                                              ; preds = %296
  store i8* null, i8** @saved_input, align 8
  %306 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %307 = load i8*, i8** @input_buffer, align 8
  %308 = call i32 %306(i8* %307, i32 8)
  store i32 %308, i32* %12, align 4
  %309 = load i8*, i8** @input_buffer, align 8
  store i8* %309, i8** %10, align 8
  %310 = load i8*, i8** %10, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  store i8* %313, i8** %11, align 8
  %314 = load i32, i32* %12, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %305
  br label %322

317:                                              ; preds = %305
  %318 = load i8*, i8** %10, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %10, align 8
  %320 = load i8, i8* %318, align 1
  %321 = zext i8 %320 to i32
  br label %322

322:                                              ; preds = %317, %316
  %323 = phi i32 [ 141, %316 ], [ %321, %317 ]
  br label %324

324:                                              ; preds = %322, %300
  %325 = phi i32 [ %304, %300 ], [ %323, %322 ]
  store i32 %325, i32* %13, align 4
  br label %288

326:                                              ; preds = %294
  store i32 0, i32* @state, align 4
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %13, align 4
  %329 = trunc i32 %328 to i8
  %330 = load i8*, i8** %8, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %8, align 8
  store i8 %329, i8* %330, align 1
  %332 = load i8*, i8** %8, align 8
  %333 = load i8*, i8** %9, align 8
  %334 = icmp uge i8* %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  br label %1837

336:                                              ; preds = %327
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337, %286
  br label %339

339:                                              ; preds = %338, %229
  br label %340

340:                                              ; preds = %339
  br label %48

341:                                              ; preds = %48
  %342 = load i8*, i8** %10, align 8
  store i8* %342, i8** %15, align 8
  br label %343

343:                                              ; preds = %363, %341
  %344 = load i8*, i8** %15, align 8
  %345 = load i8*, i8** %11, align 8
  %346 = icmp ult i8* %344, %345
  br i1 %346, label %347, label %366

347:                                              ; preds = %343
  %348 = load i8*, i8** %15, align 8
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  store i32 %350, i32* %13, align 4
  %351 = load i32, i32* %13, align 4
  %352 = icmp eq i32 %351, 92
  br i1 %352, label %361, label %353

353:                                              ; preds = %347
  %354 = load i32, i32* %13, align 4
  %355 = load i8, i8* @do_scrub_chars.quotechar, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %354, %356
  br i1 %357, label %361, label %358

358:                                              ; preds = %353
  %359 = load i32, i32* %13, align 4
  %360 = icmp eq i32 %359, 10
  br i1 %360, label %361, label %362

361:                                              ; preds = %358, %353, %347
  br label %366

362:                                              ; preds = %358
  br label %363

363:                                              ; preds = %362
  %364 = load i8*, i8** %15, align 8
  %365 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %365, i8** %15, align 8
  br label %343

366:                                              ; preds = %361, %343
  %367 = load i8*, i8** %15, align 8
  %368 = load i8*, i8** %10, align 8
  %369 = ptrtoint i8* %367 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %16, align 4
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = load i8*, i8** %9, align 8
  %376 = load i8*, i8** %8, align 8
  %377 = ptrtoint i8* %375 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  %380 = icmp sgt i64 %374, %379
  br i1 %380, label %381, label %388

381:                                              ; preds = %366
  %382 = load i8*, i8** %9, align 8
  %383 = load i8*, i8** %8, align 8
  %384 = ptrtoint i8* %382 to i64
  %385 = ptrtoint i8* %383 to i64
  %386 = sub i64 %384, %385
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %16, align 4
  br label %388

388:                                              ; preds = %381, %366
  %389 = load i32, i32* %16, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %409

391:                                              ; preds = %388
  %392 = load i8*, i8** %8, align 8
  %393 = load i8*, i8** %10, align 8
  %394 = load i32, i32* %16, align 4
  %395 = call i32 @memcpy(i8* %392, i8* %393, i32 %394)
  %396 = load i32, i32* %16, align 4
  %397 = load i8*, i8** %8, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8* %399, i8** %8, align 8
  %400 = load i32, i32* %16, align 4
  %401 = load i8*, i8** %10, align 8
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i8, i8* %401, i64 %402
  store i8* %403, i8** %10, align 8
  %404 = load i8*, i8** %8, align 8
  %405 = load i8*, i8** %9, align 8
  %406 = icmp uge i8* %404, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %391
  br label %1837

408:                                              ; preds = %391
  br label %409

409:                                              ; preds = %408, %388
  %410 = load i8*, i8** %10, align 8
  %411 = load i8*, i8** %11, align 8
  %412 = icmp ult i8* %410, %411
  br i1 %412, label %413, label %418

413:                                              ; preds = %409
  %414 = load i8*, i8** %10, align 8
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** %10, align 8
  %416 = load i8, i8* %414, align 1
  %417 = zext i8 %416 to i32
  br label %437

418:                                              ; preds = %409
  store i8* null, i8** @saved_input, align 8
  %419 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %420 = load i8*, i8** @input_buffer, align 8
  %421 = call i32 %419(i8* %420, i32 8)
  store i32 %421, i32* %12, align 4
  %422 = load i8*, i8** @input_buffer, align 8
  store i8* %422, i8** %10, align 8
  %423 = load i8*, i8** %10, align 8
  %424 = load i32, i32* %12, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %423, i64 %425
  store i8* %426, i8** %11, align 8
  %427 = load i32, i32* %12, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %418
  br label %435

430:                                              ; preds = %418
  %431 = load i8*, i8** %10, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %10, align 8
  %433 = load i8, i8* %431, align 1
  %434 = zext i8 %433 to i32
  br label %435

435:                                              ; preds = %430, %429
  %436 = phi i32 [ 141, %429 ], [ %434, %430 ]
  br label %437

437:                                              ; preds = %435, %413
  %438 = phi i32 [ %417, %413 ], [ %436, %435 ]
  store i32 %438, i32* %13, align 4
  %439 = load i32, i32* %13, align 4
  %440 = icmp eq i32 %439, 141
  br i1 %440, label %441, label %459

441:                                              ; preds = %437
  %442 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %443 = load i8, i8* @do_scrub_chars.quotechar, align 1
  %444 = sext i8 %443 to i32
  %445 = call i32 (i8*, ...) @as_warn(i8* %442, i32 %444)
  %446 = load i32, i32* @old_state, align 4
  store i32 %446, i32* @state, align 4
  %447 = load i8*, i8** %10, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 -1
  store i8* %448, i8** %10, align 8
  store i8 10, i8* %448, align 1
  br label %449

449:                                              ; preds = %441
  %450 = load i8, i8* @do_scrub_chars.quotechar, align 1
  %451 = load i8*, i8** %8, align 8
  %452 = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %452, i8** %8, align 8
  store i8 %450, i8* %451, align 1
  %453 = load i8*, i8** %8, align 8
  %454 = load i8*, i8** %9, align 8
  %455 = icmp uge i8* %453, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %449
  br label %1837

457:                                              ; preds = %449
  br label %458

458:                                              ; preds = %457
  br label %528

459:                                              ; preds = %437
  %460 = load i32, i32* %13, align 4
  %461 = load i8, i8* @do_scrub_chars.quotechar, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp eq i32 %460, %462
  br i1 %463, label %464, label %477

464:                                              ; preds = %459
  %465 = load i32, i32* @old_state, align 4
  store i32 %465, i32* @state, align 4
  br label %466

466:                                              ; preds = %464
  %467 = load i32, i32* %13, align 4
  %468 = trunc i32 %467 to i8
  %469 = load i8*, i8** %8, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %8, align 8
  store i8 %468, i8* %469, align 1
  %471 = load i8*, i8** %8, align 8
  %472 = load i8*, i8** %9, align 8
  %473 = icmp uge i8* %471, %472
  br i1 %473, label %474, label %475

474:                                              ; preds = %466
  br label %1837

475:                                              ; preds = %466
  br label %476

476:                                              ; preds = %475
  br label %527

477:                                              ; preds = %459
  %478 = load i32, i32* %13, align 4
  %479 = icmp eq i32 %478, 92
  br i1 %479, label %480, label %492

480:                                              ; preds = %477
  store i32 6, i32* @state, align 4
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %13, align 4
  %483 = trunc i32 %482 to i8
  %484 = load i8*, i8** %8, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %485, i8** %8, align 8
  store i8 %483, i8* %484, align 1
  %486 = load i8*, i8** %8, align 8
  %487 = load i8*, i8** %9, align 8
  %488 = icmp uge i8* %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %481
  br label %1837

490:                                              ; preds = %481
  br label %491

491:                                              ; preds = %490
  br label %526

492:                                              ; preds = %477
  %493 = load i32, i32* @scrub_m68k_mri, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %513

495:                                              ; preds = %492
  %496 = load i32, i32* %13, align 4
  %497 = icmp eq i32 %496, 10
  br i1 %497, label %498, label %513

498:                                              ; preds = %495
  %499 = load i32, i32* @old_state, align 4
  store i32 %499, i32* @state, align 4
  %500 = load i32, i32* %13, align 4
  %501 = trunc i32 %500 to i8
  %502 = load i8*, i8** %10, align 8
  %503 = getelementptr inbounds i8, i8* %502, i32 -1
  store i8* %503, i8** %10, align 8
  store i8 %501, i8* %503, align 1
  br label %504

504:                                              ; preds = %498
  %505 = load i8*, i8** %8, align 8
  %506 = getelementptr inbounds i8, i8* %505, i32 1
  store i8* %506, i8** %8, align 8
  store i8 39, i8* %505, align 1
  %507 = load i8*, i8** %8, align 8
  %508 = load i8*, i8** %9, align 8
  %509 = icmp uge i8* %507, %508
  br i1 %509, label %510, label %511

510:                                              ; preds = %504
  br label %1837

511:                                              ; preds = %504
  br label %512

512:                                              ; preds = %511
  br label %525

513:                                              ; preds = %495, %492
  br label %514

514:                                              ; preds = %513
  %515 = load i32, i32* %13, align 4
  %516 = trunc i32 %515 to i8
  %517 = load i8*, i8** %8, align 8
  %518 = getelementptr inbounds i8, i8* %517, i32 1
  store i8* %518, i8** %8, align 8
  store i8 %516, i8* %517, align 1
  %519 = load i8*, i8** %8, align 8
  %520 = load i8*, i8** %9, align 8
  %521 = icmp uge i8* %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %514
  br label %1837

523:                                              ; preds = %514
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524, %512
  br label %526

526:                                              ; preds = %525, %491
  br label %527

527:                                              ; preds = %526, %476
  br label %528

528:                                              ; preds = %527, %458
  br label %48

529:                                              ; preds = %48
  store i32 5, i32* @state, align 4
  %530 = load i8*, i8** %10, align 8
  %531 = load i8*, i8** %11, align 8
  %532 = icmp ult i8* %530, %531
  br i1 %532, label %533, label %538

533:                                              ; preds = %529
  %534 = load i8*, i8** %10, align 8
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %10, align 8
  %536 = load i8, i8* %534, align 1
  %537 = zext i8 %536 to i32
  br label %557

538:                                              ; preds = %529
  store i8* null, i8** @saved_input, align 8
  %539 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %540 = load i8*, i8** @input_buffer, align 8
  %541 = call i32 %539(i8* %540, i32 8)
  store i32 %541, i32* %12, align 4
  %542 = load i8*, i8** @input_buffer, align 8
  store i8* %542, i8** %10, align 8
  %543 = load i8*, i8** %10, align 8
  %544 = load i32, i32* %12, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %543, i64 %545
  store i8* %546, i8** %11, align 8
  %547 = load i32, i32* %12, align 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %538
  br label %555

550:                                              ; preds = %538
  %551 = load i8*, i8** %10, align 8
  %552 = getelementptr inbounds i8, i8* %551, i32 1
  store i8* %552, i8** %10, align 8
  %553 = load i8, i8* %551, align 1
  %554 = zext i8 %553 to i32
  br label %555

555:                                              ; preds = %550, %549
  %556 = phi i32 [ 141, %549 ], [ %554, %550 ]
  br label %557

557:                                              ; preds = %555, %533
  %558 = phi i32 [ %537, %533 ], [ %556, %555 ]
  store i32 %558, i32* %13, align 4
  %559 = load i32, i32* %13, align 4
  switch i32 %559, label %590 [
    i32 10, label %560
    i32 141, label %574
    i32 34, label %589
    i32 92, label %589
    i32 98, label %589
    i32 102, label %589
    i32 110, label %589
    i32 114, label %589
    i32 116, label %589
    i32 118, label %589
    i32 120, label %589
    i32 88, label %589
    i32 48, label %589
    i32 49, label %589
    i32 50, label %589
    i32 51, label %589
    i32 52, label %589
    i32 53, label %589
    i32 54, label %589
    i32 55, label %589
  ]

560:                                              ; preds = %557
  %561 = load i8*, i8** %10, align 8
  %562 = getelementptr inbounds i8, i8* %561, i32 -1
  store i8* %562, i8** %10, align 8
  store i8 110, i8* %562, align 1
  %563 = load i32, i32* @add_newlines, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* @add_newlines, align 4
  br label %565

565:                                              ; preds = %560
  %566 = load i8*, i8** %8, align 8
  %567 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %567, i8** %8, align 8
  store i8 92, i8* %566, align 1
  %568 = load i8*, i8** %8, align 8
  %569 = load i8*, i8** %9, align 8
  %570 = icmp uge i8* %568, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %565
  br label %1837

572:                                              ; preds = %565
  br label %573

573:                                              ; preds = %572
  br label %48

574:                                              ; preds = %557
  %575 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %576 = load i8, i8* @do_scrub_chars.quotechar, align 1
  %577 = sext i8 %576 to i32
  %578 = call i32 (i8*, ...) @as_warn(i8* %575, i32 %577)
  br label %579

579:                                              ; preds = %574
  %580 = load i8, i8* @do_scrub_chars.quotechar, align 1
  %581 = load i8*, i8** %8, align 8
  %582 = getelementptr inbounds i8, i8* %581, i32 1
  store i8* %582, i8** %8, align 8
  store i8 %580, i8* %581, align 1
  %583 = load i8*, i8** %8, align 8
  %584 = load i8*, i8** %9, align 8
  %585 = icmp uge i8* %583, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %579
  br label %1837

587:                                              ; preds = %579
  br label %588

588:                                              ; preds = %587
  br label %48

589:                                              ; preds = %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557
  br label %591

590:                                              ; preds = %557
  br label %591

591:                                              ; preds = %590, %589
  br label %592

592:                                              ; preds = %591
  %593 = load i32, i32* %13, align 4
  %594 = trunc i32 %593 to i8
  %595 = load i8*, i8** %8, align 8
  %596 = getelementptr inbounds i8, i8* %595, i32 1
  store i8* %596, i8** %8, align 8
  store i8 %594, i8* %595, align 1
  %597 = load i8*, i8** %8, align 8
  %598 = load i8*, i8** %9, align 8
  %599 = icmp uge i8* %597, %598
  br i1 %599, label %600, label %601

600:                                              ; preds = %592
  br label %1837

601:                                              ; preds = %592
  br label %602

602:                                              ; preds = %601
  br label %48

603:                                              ; preds = %48
  %604 = load i8*, i8** %10, align 8
  %605 = load i8*, i8** %11, align 8
  %606 = icmp ult i8* %604, %605
  br i1 %606, label %607, label %612

607:                                              ; preds = %603
  %608 = load i8*, i8** %10, align 8
  %609 = getelementptr inbounds i8, i8* %608, i32 1
  store i8* %609, i8** %10, align 8
  %610 = load i8, i8* %608, align 1
  %611 = zext i8 %610 to i32
  br label %631

612:                                              ; preds = %603
  store i8* null, i8** @saved_input, align 8
  %613 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %614 = load i8*, i8** @input_buffer, align 8
  %615 = call i32 %613(i8* %614, i32 8)
  store i32 %615, i32* %12, align 4
  %616 = load i8*, i8** @input_buffer, align 8
  store i8* %616, i8** %10, align 8
  %617 = load i8*, i8** %10, align 8
  %618 = load i32, i32* %12, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %617, i64 %619
  store i8* %620, i8** %11, align 8
  %621 = load i32, i32* %12, align 4
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %612
  br label %629

624:                                              ; preds = %612
  %625 = load i8*, i8** %10, align 8
  %626 = getelementptr inbounds i8, i8* %625, i32 1
  store i8* %626, i8** %10, align 8
  %627 = load i8, i8* %625, align 1
  %628 = zext i8 %627 to i32
  br label %629

629:                                              ; preds = %624, %623
  %630 = phi i32 [ 141, %623 ], [ %628, %624 ]
  br label %631

631:                                              ; preds = %629, %607
  %632 = phi i32 [ %611, %607 ], [ %630, %629 ]
  store i32 %632, i32* %13, align 4
  br label %633

633:                                              ; preds = %1008, %847, %829, %797, %782, %751, %631
  %634 = load i32, i32* %13, align 4
  %635 = icmp eq i32 %634, 141
  br i1 %635, label %636, label %652

636:                                              ; preds = %633
  %637 = load i32, i32* @state, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %651

639:                                              ; preds = %636
  %640 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %641 = call i32 (i8*, ...) @as_warn(i8* %640)
  store i32 0, i32* @state, align 4
  br label %642

642:                                              ; preds = %639
  %643 = load i8*, i8** %8, align 8
  %644 = getelementptr inbounds i8, i8* %643, i32 1
  store i8* %644, i8** %8, align 8
  store i8 10, i8* %643, align 1
  %645 = load i8*, i8** %8, align 8
  %646 = load i8*, i8** %9, align 8
  %647 = icmp uge i8* %645, %646
  br i1 %647, label %648, label %649

648:                                              ; preds = %642
  br label %1837

649:                                              ; preds = %642
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650, %636
  br label %1830

652:                                              ; preds = %633
  %653 = load i32*, i32** @lex, align 8
  %654 = load i32, i32* %13, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %653, i64 %655
  %657 = load i32, i32* %656, align 4
  switch i32 %657, label %1776 [
    i32 128, label %658
    i32 129, label %874
    i32 131, label %1037
    i32 133, label %1104
    i32 140, label %1282
    i32 134, label %1306
    i32 135, label %1317
    i32 132, label %1329
    i32 136, label %1341
    i32 139, label %1571
    i32 130, label %1628
  ]

658:                                              ; preds = %652
  br label %659

659:                                              ; preds = %696, %658
  %660 = load i8*, i8** %10, align 8
  %661 = load i8*, i8** %11, align 8
  %662 = icmp ult i8* %660, %661
  br i1 %662, label %663, label %668

663:                                              ; preds = %659
  %664 = load i8*, i8** %10, align 8
  %665 = getelementptr inbounds i8, i8* %664, i32 1
  store i8* %665, i8** %10, align 8
  %666 = load i8, i8* %664, align 1
  %667 = zext i8 %666 to i32
  br label %687

668:                                              ; preds = %659
  store i8* null, i8** @saved_input, align 8
  %669 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %670 = load i8*, i8** @input_buffer, align 8
  %671 = call i32 %669(i8* %670, i32 8)
  store i32 %671, i32* %12, align 4
  %672 = load i8*, i8** @input_buffer, align 8
  store i8* %672, i8** %10, align 8
  %673 = load i8*, i8** %10, align 8
  %674 = load i32, i32* %12, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, i8* %673, i64 %675
  store i8* %676, i8** %11, align 8
  %677 = load i32, i32* %12, align 4
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %680

679:                                              ; preds = %668
  br label %685

680:                                              ; preds = %668
  %681 = load i8*, i8** %10, align 8
  %682 = getelementptr inbounds i8, i8* %681, i32 1
  store i8* %682, i8** %10, align 8
  %683 = load i8, i8* %681, align 1
  %684 = zext i8 %683 to i32
  br label %685

685:                                              ; preds = %680, %679
  %686 = phi i32 [ 141, %679 ], [ %684, %680 ]
  br label %687

687:                                              ; preds = %685, %663
  %688 = phi i32 [ %667, %663 ], [ %686, %685 ]
  store i32 %688, i32* %13, align 4
  br label %689

689:                                              ; preds = %687
  %690 = load i32, i32* %13, align 4
  %691 = icmp ne i32 %690, 141
  br i1 %691, label %692, label %696

692:                                              ; preds = %689
  %693 = load i32, i32* %13, align 4
  %694 = call i32 @IS_WHITESPACE(i32 %693)
  %695 = icmp ne i32 %694, 0
  br label %696

696:                                              ; preds = %692, %689
  %697 = phi i1 [ false, %689 ], [ %695, %692 ]
  br i1 %697, label %659, label %698

698:                                              ; preds = %696
  %699 = load i32, i32* %13, align 4
  %700 = icmp eq i32 %699, 141
  br i1 %700, label %701, label %702

701:                                              ; preds = %698
  br label %1830

702:                                              ; preds = %698
  %703 = load i32, i32* @state, align 4
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %719

705:                                              ; preds = %702
  store i32 1, i32* @state, align 4
  %706 = load i32, i32* %13, align 4
  %707 = trunc i32 %706 to i8
  %708 = load i8*, i8** %10, align 8
  %709 = getelementptr inbounds i8, i8* %708, i32 -1
  store i8* %709, i8** %10, align 8
  store i8 %707, i8* %709, align 1
  br label %710

710:                                              ; preds = %705
  %711 = load i8*, i8** %8, align 8
  %712 = getelementptr inbounds i8, i8* %711, i32 1
  store i8* %712, i8** %8, align 8
  store i8 32, i8* %711, align 1
  %713 = load i8*, i8** %8, align 8
  %714 = load i8*, i8** %9, align 8
  %715 = icmp uge i8* %713, %714
  br i1 %715, label %716, label %717

716:                                              ; preds = %710
  br label %1837

717:                                              ; preds = %710
  br label %718

718:                                              ; preds = %717
  br label %1829

719:                                              ; preds = %702
  %720 = load i32, i32* %13, align 4
  %721 = call i32 @IS_COMMENT(i32 %720)
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %734, label %723

723:                                              ; preds = %719
  %724 = load i32, i32* %13, align 4
  %725 = icmp eq i32 %724, 47
  br i1 %725, label %734, label %726

726:                                              ; preds = %723
  %727 = load i32, i32* %13, align 4
  %728 = call i32 @IS_LINE_SEPARATOR(i32 %727)
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %734, label %730

730:                                              ; preds = %726
  %731 = load i32, i32* %13, align 4
  %732 = call i32 @IS_PARALLEL_SEPARATOR(i32 %731)
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %752

734:                                              ; preds = %730, %726, %723, %719
  %735 = load i32, i32* @scrub_m68k_mri, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %751

737:                                              ; preds = %734
  %738 = load i32, i32* %13, align 4
  %739 = trunc i32 %738 to i8
  %740 = load i8*, i8** %10, align 8
  %741 = getelementptr inbounds i8, i8* %740, i32 -1
  store i8* %741, i8** %10, align 8
  store i8 %739, i8* %741, align 1
  br label %742

742:                                              ; preds = %737
  %743 = load i8*, i8** %8, align 8
  %744 = getelementptr inbounds i8, i8* %743, i32 1
  store i8* %744, i8** %8, align 8
  store i8 32, i8* %743, align 1
  %745 = load i8*, i8** %8, align 8
  %746 = load i8*, i8** %9, align 8
  %747 = icmp uge i8* %745, %746
  br i1 %747, label %748, label %749

748:                                              ; preds = %742
  br label %1837

749:                                              ; preds = %742
  br label %750

750:                                              ; preds = %749
  br label %1829

751:                                              ; preds = %734
  br label %633

752:                                              ; preds = %730
  %753 = load i32, i32* @state, align 4
  %754 = icmp eq i32 %753, 2
  br i1 %754, label %758, label %755

755:                                              ; preds = %752
  %756 = load i32, i32* @state, align 4
  %757 = icmp eq i32 %756, 11
  br i1 %757, label %758, label %780

758:                                              ; preds = %755, %752
  %759 = load i32*, i32** @lex, align 8
  %760 = load i32, i32* %13, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i32, i32* %759, i64 %761
  %763 = load i32, i32* %762, align 4
  %764 = icmp eq i32 %763, 140
  br i1 %764, label %765, label %780

765:                                              ; preds = %758
  %766 = load i32, i32* @scrub_m68k_mri, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %780, label %768

768:                                              ; preds = %765
  store i32 1, i32* @state, align 4
  br label %769

769:                                              ; preds = %768
  %770 = load i32, i32* %13, align 4
  %771 = trunc i32 %770 to i8
  %772 = load i8*, i8** %8, align 8
  %773 = getelementptr inbounds i8, i8* %772, i32 1
  store i8* %773, i8** %8, align 8
  store i8 %771, i8* %772, align 1
  %774 = load i8*, i8** %8, align 8
  %775 = load i8*, i8** %9, align 8
  %776 = icmp uge i8* %774, %775
  br i1 %776, label %777, label %778

777:                                              ; preds = %769
  br label %1837

778:                                              ; preds = %769
  br label %779

779:                                              ; preds = %778
  br label %1829

780:                                              ; preds = %765, %758, %755
  %781 = load i32, i32* @state, align 4
  switch i32 %781, label %870 [
    i32 1, label %782
    i32 2, label %783
    i32 3, label %812
    i32 9, label %830
    i32 10, label %830
    i32 11, label %848
  ]

782:                                              ; preds = %780
  br label %633

783:                                              ; preds = %780
  store i32 3, i32* @state, align 4
  %784 = load i8*, i8** %8, align 8
  %785 = getelementptr inbounds i8, i8* %784, i64 1
  %786 = load i8*, i8** %9, align 8
  %787 = icmp ult i8* %785, %786
  br i1 %787, label %788, label %798

788:                                              ; preds = %783
  br label %789

789:                                              ; preds = %788
  %790 = load i8*, i8** %8, align 8
  %791 = getelementptr inbounds i8, i8* %790, i32 1
  store i8* %791, i8** %8, align 8
  store i8 32, i8* %790, align 1
  %792 = load i8*, i8** %8, align 8
  %793 = load i8*, i8** %9, align 8
  %794 = icmp uge i8* %792, %793
  br i1 %794, label %795, label %796

795:                                              ; preds = %789
  br label %1837

796:                                              ; preds = %789
  br label %797

797:                                              ; preds = %796
  br label %633

798:                                              ; preds = %783
  %799 = load i32, i32* %13, align 4
  %800 = trunc i32 %799 to i8
  %801 = load i8*, i8** %10, align 8
  %802 = getelementptr inbounds i8, i8* %801, i32 -1
  store i8* %802, i8** %10, align 8
  store i8 %800, i8* %802, align 1
  br label %803

803:                                              ; preds = %798
  %804 = load i8*, i8** %8, align 8
  %805 = getelementptr inbounds i8, i8* %804, i32 1
  store i8* %805, i8** %8, align 8
  store i8 32, i8* %804, align 1
  %806 = load i8*, i8** %8, align 8
  %807 = load i8*, i8** %9, align 8
  %808 = icmp uge i8* %806, %807
  br i1 %808, label %809, label %810

809:                                              ; preds = %803
  br label %1837

810:                                              ; preds = %803
  br label %811

811:                                              ; preds = %810
  br label %873

812:                                              ; preds = %780
  %813 = load i32, i32* @scrub_m68k_mri, align 4
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %829

815:                                              ; preds = %812
  %816 = load i32, i32* %13, align 4
  %817 = trunc i32 %816 to i8
  %818 = load i8*, i8** %10, align 8
  %819 = getelementptr inbounds i8, i8* %818, i32 -1
  store i8* %819, i8** %10, align 8
  store i8 %817, i8* %819, align 1
  br label %820

820:                                              ; preds = %815
  %821 = load i8*, i8** %8, align 8
  %822 = getelementptr inbounds i8, i8* %821, i32 1
  store i8* %822, i8** %8, align 8
  store i8 32, i8* %821, align 1
  %823 = load i8*, i8** %8, align 8
  %824 = load i8*, i8** %9, align 8
  %825 = icmp uge i8* %823, %824
  br i1 %825, label %826, label %827

826:                                              ; preds = %820
  br label %1837

827:                                              ; preds = %820
  br label %828

828:                                              ; preds = %827
  br label %873

829:                                              ; preds = %812
  br label %633

830:                                              ; preds = %780, %780
  %831 = load i32, i32* @scrub_m68k_mri, align 4
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %833, label %847

833:                                              ; preds = %830
  store i32 3, i32* @state, align 4
  %834 = load i32, i32* %13, align 4
  %835 = trunc i32 %834 to i8
  %836 = load i8*, i8** %10, align 8
  %837 = getelementptr inbounds i8, i8* %836, i32 -1
  store i8* %837, i8** %10, align 8
  store i8 %835, i8* %837, align 1
  br label %838

838:                                              ; preds = %833
  %839 = load i8*, i8** %8, align 8
  %840 = getelementptr inbounds i8, i8* %839, i32 1
  store i8* %840, i8** %8, align 8
  store i8 32, i8* %839, align 1
  %841 = load i8*, i8** %8, align 8
  %842 = load i8*, i8** %9, align 8
  %843 = icmp uge i8* %841, %842
  br i1 %843, label %844, label %845

844:                                              ; preds = %838
  br label %1837

845:                                              ; preds = %838
  br label %846

846:                                              ; preds = %845
  br label %873

847:                                              ; preds = %830
  store i32 10, i32* @state, align 4
  br label %633

848:                                              ; preds = %780
  %849 = load i32, i32* @LABELS_WITHOUT_COLONS, align 4
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %854, label %851

851:                                              ; preds = %848
  %852 = load i32, i32* @flag_m68k_mri, align 4
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %855

854:                                              ; preds = %851, %848
  store i32 1, i32* @state, align 4
  br label %856

855:                                              ; preds = %851
  store i32 3, i32* @state, align 4
  br label %856

856:                                              ; preds = %855, %854
  %857 = load i32, i32* %13, align 4
  %858 = trunc i32 %857 to i8
  %859 = load i8*, i8** %10, align 8
  %860 = getelementptr inbounds i8, i8* %859, i32 -1
  store i8* %860, i8** %10, align 8
  store i8 %858, i8* %860, align 1
  br label %861

861:                                              ; preds = %856
  %862 = load i8*, i8** %8, align 8
  %863 = getelementptr inbounds i8, i8* %862, i32 1
  store i8* %863, i8** %8, align 8
  store i8 32, i8* %862, align 1
  %864 = load i8*, i8** %8, align 8
  %865 = load i8*, i8** %9, align 8
  %866 = icmp uge i8* %864, %865
  br i1 %866, label %867, label %868

867:                                              ; preds = %861
  br label %1837

868:                                              ; preds = %861
  br label %869

869:                                              ; preds = %868
  br label %873

870:                                              ; preds = %780
  %871 = load i32, i32* @state, align 4
  %872 = call i32 @BAD_CASE(i32 %871)
  br label %873

873:                                              ; preds = %870, %869, %846, %828, %811
  br label %1829

874:                                              ; preds = %652
  %875 = load i8*, i8** %10, align 8
  %876 = load i8*, i8** %11, align 8
  %877 = icmp ult i8* %875, %876
  br i1 %877, label %878, label %883

878:                                              ; preds = %874
  %879 = load i8*, i8** %10, align 8
  %880 = getelementptr inbounds i8, i8* %879, i32 1
  store i8* %880, i8** %10, align 8
  %881 = load i8, i8* %879, align 1
  %882 = zext i8 %881 to i32
  br label %902

883:                                              ; preds = %874
  store i8* null, i8** @saved_input, align 8
  %884 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %885 = load i8*, i8** @input_buffer, align 8
  %886 = call i32 %884(i8* %885, i32 8)
  store i32 %886, i32* %12, align 4
  %887 = load i8*, i8** @input_buffer, align 8
  store i8* %887, i8** %10, align 8
  %888 = load i8*, i8** %10, align 8
  %889 = load i32, i32* %12, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds i8, i8* %888, i64 %890
  store i8* %891, i8** %11, align 8
  %892 = load i32, i32* %12, align 4
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %895

894:                                              ; preds = %883
  br label %900

895:                                              ; preds = %883
  %896 = load i8*, i8** %10, align 8
  %897 = getelementptr inbounds i8, i8* %896, i32 1
  store i8* %897, i8** %10, align 8
  %898 = load i8, i8* %896, align 1
  %899 = zext i8 %898 to i32
  br label %900

900:                                              ; preds = %895, %894
  %901 = phi i32 [ 141, %894 ], [ %899, %895 ]
  br label %902

902:                                              ; preds = %900, %878
  %903 = phi i32 [ %882, %878 ], [ %901, %900 ]
  store i32 %903, i32* %14, align 4
  %904 = load i32, i32* %14, align 4
  %905 = icmp eq i32 %904, 42
  br i1 %905, label %906, label %1009

906:                                              ; preds = %902
  br label %907

907:                                              ; preds = %997, %906
  br label %908

908:                                              ; preds = %954, %907
  %909 = load i8*, i8** %10, align 8
  %910 = load i8*, i8** %11, align 8
  %911 = icmp ult i8* %909, %910
  br i1 %911, label %912, label %917

912:                                              ; preds = %908
  %913 = load i8*, i8** %10, align 8
  %914 = getelementptr inbounds i8, i8* %913, i32 1
  store i8* %914, i8** %10, align 8
  %915 = load i8, i8* %913, align 1
  %916 = zext i8 %915 to i32
  br label %936

917:                                              ; preds = %908
  store i8* null, i8** @saved_input, align 8
  %918 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %919 = load i8*, i8** @input_buffer, align 8
  %920 = call i32 %918(i8* %919, i32 8)
  store i32 %920, i32* %12, align 4
  %921 = load i8*, i8** @input_buffer, align 8
  store i8* %921, i8** %10, align 8
  %922 = load i8*, i8** %10, align 8
  %923 = load i32, i32* %12, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds i8, i8* %922, i64 %924
  store i8* %925, i8** %11, align 8
  %926 = load i32, i32* %12, align 4
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %929

928:                                              ; preds = %917
  br label %934

929:                                              ; preds = %917
  %930 = load i8*, i8** %10, align 8
  %931 = getelementptr inbounds i8, i8* %930, i32 1
  store i8* %931, i8** %10, align 8
  %932 = load i8, i8* %930, align 1
  %933 = zext i8 %932 to i32
  br label %934

934:                                              ; preds = %929, %928
  %935 = phi i32 [ 141, %928 ], [ %933, %929 ]
  br label %936

936:                                              ; preds = %934, %912
  %937 = phi i32 [ %916, %912 ], [ %935, %934 ]
  store i32 %937, i32* %14, align 4
  %938 = load i32, i32* %14, align 4
  %939 = icmp ne i32 %938, 141
  br i1 %939, label %940, label %947

940:                                              ; preds = %936
  %941 = load i32, i32* %14, align 4
  %942 = call i64 @IS_NEWLINE(i32 %941)
  %943 = icmp ne i64 %942, 0
  br i1 %943, label %944, label %947

944:                                              ; preds = %940
  %945 = load i32, i32* @add_newlines, align 4
  %946 = add nsw i32 %945, 1
  store i32 %946, i32* @add_newlines, align 4
  br label %947

947:                                              ; preds = %944, %940, %936
  br label %948

948:                                              ; preds = %947
  %949 = load i32, i32* %14, align 4
  %950 = icmp ne i32 %949, 141
  br i1 %950, label %951, label %954

951:                                              ; preds = %948
  %952 = load i32, i32* %14, align 4
  %953 = icmp ne i32 %952, 42
  br label %954

954:                                              ; preds = %951, %948
  %955 = phi i1 [ false, %948 ], [ %953, %951 ]
  br i1 %955, label %908, label %956

956:                                              ; preds = %954
  br label %957

957:                                              ; preds = %988, %956
  %958 = load i32, i32* %14, align 4
  %959 = icmp eq i32 %958, 42
  br i1 %959, label %960, label %990

960:                                              ; preds = %957
  %961 = load i8*, i8** %10, align 8
  %962 = load i8*, i8** %11, align 8
  %963 = icmp ult i8* %961, %962
  br i1 %963, label %964, label %969

964:                                              ; preds = %960
  %965 = load i8*, i8** %10, align 8
  %966 = getelementptr inbounds i8, i8* %965, i32 1
  store i8* %966, i8** %10, align 8
  %967 = load i8, i8* %965, align 1
  %968 = zext i8 %967 to i32
  br label %988

969:                                              ; preds = %960
  store i8* null, i8** @saved_input, align 8
  %970 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %971 = load i8*, i8** @input_buffer, align 8
  %972 = call i32 %970(i8* %971, i32 8)
  store i32 %972, i32* %12, align 4
  %973 = load i8*, i8** @input_buffer, align 8
  store i8* %973, i8** %10, align 8
  %974 = load i8*, i8** %10, align 8
  %975 = load i32, i32* %12, align 4
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds i8, i8* %974, i64 %976
  store i8* %977, i8** %11, align 8
  %978 = load i32, i32* %12, align 4
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %981

980:                                              ; preds = %969
  br label %986

981:                                              ; preds = %969
  %982 = load i8*, i8** %10, align 8
  %983 = getelementptr inbounds i8, i8* %982, i32 1
  store i8* %983, i8** %10, align 8
  %984 = load i8, i8* %982, align 1
  %985 = zext i8 %984 to i32
  br label %986

986:                                              ; preds = %981, %980
  %987 = phi i32 [ 141, %980 ], [ %985, %981 ]
  br label %988

988:                                              ; preds = %986, %964
  %989 = phi i32 [ %968, %964 ], [ %987, %986 ]
  store i32 %989, i32* %14, align 4
  br label %957

990:                                              ; preds = %957
  %991 = load i32, i32* %14, align 4
  %992 = icmp eq i32 %991, 141
  br i1 %992, label %996, label %993

993:                                              ; preds = %990
  %994 = load i32, i32* %14, align 4
  %995 = icmp eq i32 %994, 47
  br i1 %995, label %996, label %997

996:                                              ; preds = %993, %990
  br label %1002

997:                                              ; preds = %993
  %998 = load i32, i32* %14, align 4
  %999 = trunc i32 %998 to i8
  %1000 = load i8*, i8** %10, align 8
  %1001 = getelementptr inbounds i8, i8* %1000, i32 -1
  store i8* %1001, i8** %10, align 8
  store i8 %999, i8* %1001, align 1
  br label %907

1002:                                             ; preds = %996
  %1003 = load i32, i32* %14, align 4
  %1004 = icmp eq i32 %1003, 141
  br i1 %1004, label %1005, label %1008

1005:                                             ; preds = %1002
  %1006 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %1007 = call i32 (i8*, ...) @as_warn(i8* %1006)
  br label %1008

1008:                                             ; preds = %1005, %1002
  store i32 32, i32* %13, align 4
  br label %633

1009:                                             ; preds = %902
  %1010 = load i32, i32* %14, align 4
  %1011 = icmp ne i32 %1010, 141
  br i1 %1011, label %1012, label %1017

1012:                                             ; preds = %1009
  %1013 = load i32, i32* %14, align 4
  %1014 = trunc i32 %1013 to i8
  %1015 = load i8*, i8** %10, align 8
  %1016 = getelementptr inbounds i8, i8* %1015, i32 -1
  store i8* %1016, i8** %10, align 8
  store i8 %1014, i8* %1016, align 1
  br label %1017

1017:                                             ; preds = %1012, %1009
  %1018 = load i32, i32* @state, align 4
  %1019 = icmp eq i32 %1018, 9
  br i1 %1019, label %1023, label %1020

1020:                                             ; preds = %1017
  %1021 = load i32, i32* @state, align 4
  %1022 = icmp eq i32 %1021, 10
  br i1 %1022, label %1023, label %1024

1023:                                             ; preds = %1020, %1017
  store i32 3, i32* @state, align 4
  br label %1024

1024:                                             ; preds = %1023, %1020
  br label %1025

1025:                                             ; preds = %1024
  %1026 = load i32, i32* %13, align 4
  %1027 = trunc i32 %1026 to i8
  %1028 = load i8*, i8** %8, align 8
  %1029 = getelementptr inbounds i8, i8* %1028, i32 1
  store i8* %1029, i8** %8, align 8
  store i8 %1027, i8* %1028, align 1
  %1030 = load i8*, i8** %8, align 8
  %1031 = load i8*, i8** %9, align 8
  %1032 = icmp uge i8* %1030, %1031
  br i1 %1032, label %1033, label %1034

1033:                                             ; preds = %1025
  br label %1837

1034:                                             ; preds = %1025
  br label %1035

1035:                                             ; preds = %1034
  br label %1036

1036:                                             ; preds = %1035
  br label %1829

1037:                                             ; preds = %652
  %1038 = load i32, i32* %13, align 4
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* @do_scrub_chars.quotechar, align 1
  %1040 = load i32, i32* @state, align 4
  %1041 = icmp eq i32 %1040, 10
  br i1 %1041, label %1042, label %1085

1042:                                             ; preds = %1037
  %1043 = load i32, i32* %13, align 4
  %1044 = trunc i32 %1043 to i8
  %1045 = load i8*, i8** %10, align 8
  %1046 = getelementptr inbounds i8, i8* %1045, i32 -1
  store i8* %1046, i8** %10, align 8
  store i8 %1044, i8* %1046, align 1
  store i32 3, i32* @state, align 4
  br label %1047

1047:                                             ; preds = %1042
  %1048 = load i8*, i8** %8, align 8
  %1049 = getelementptr inbounds i8, i8* %1048, i32 1
  store i8* %1049, i8** %8, align 8
  store i8 32, i8* %1048, align 1
  %1050 = load i8*, i8** %8, align 8
  %1051 = load i8*, i8** %9, align 8
  %1052 = icmp uge i8* %1050, %1051
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1047
  br label %1837

1054:                                             ; preds = %1047
  br label %1055

1055:                                             ; preds = %1054
  %1056 = load i8*, i8** %10, align 8
  %1057 = load i8*, i8** %11, align 8
  %1058 = icmp ult i8* %1056, %1057
  br i1 %1058, label %1059, label %1064

1059:                                             ; preds = %1055
  %1060 = load i8*, i8** %10, align 8
  %1061 = getelementptr inbounds i8, i8* %1060, i32 1
  store i8* %1061, i8** %10, align 8
  %1062 = load i8, i8* %1060, align 1
  %1063 = zext i8 %1062 to i32
  br label %1083

1064:                                             ; preds = %1055
  store i8* null, i8** @saved_input, align 8
  %1065 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1066 = load i8*, i8** @input_buffer, align 8
  %1067 = call i32 %1065(i8* %1066, i32 8)
  store i32 %1067, i32* %12, align 4
  %1068 = load i8*, i8** @input_buffer, align 8
  store i8* %1068, i8** %10, align 8
  %1069 = load i8*, i8** %10, align 8
  %1070 = load i32, i32* %12, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i8, i8* %1069, i64 %1071
  store i8* %1072, i8** %11, align 8
  %1073 = load i32, i32* %12, align 4
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1075, label %1076

1075:                                             ; preds = %1064
  br label %1081

1076:                                             ; preds = %1064
  %1077 = load i8*, i8** %10, align 8
  %1078 = getelementptr inbounds i8, i8* %1077, i32 1
  store i8* %1078, i8** %10, align 8
  %1079 = load i8, i8* %1077, align 1
  %1080 = zext i8 %1079 to i32
  br label %1081

1081:                                             ; preds = %1076, %1075
  %1082 = phi i32 [ 141, %1075 ], [ %1080, %1076 ]
  br label %1083

1083:                                             ; preds = %1081, %1059
  %1084 = phi i32 [ %1063, %1059 ], [ %1082, %1081 ]
  store i32 %1084, i32* %13, align 4
  store i32 3, i32* @old_state, align 4
  br label %1092

1085:                                             ; preds = %1037
  %1086 = load i32, i32* @state, align 4
  %1087 = icmp eq i32 %1086, 9
  br i1 %1087, label %1088, label %1089

1088:                                             ; preds = %1085
  store i32 3, i32* @old_state, align 4
  br label %1091

1089:                                             ; preds = %1085
  %1090 = load i32, i32* @state, align 4
  store i32 %1090, i32* @old_state, align 4
  br label %1091

1091:                                             ; preds = %1089, %1088
  br label %1092

1092:                                             ; preds = %1091, %1083
  store i32 5, i32* @state, align 4
  br label %1093

1093:                                             ; preds = %1092
  %1094 = load i32, i32* %13, align 4
  %1095 = trunc i32 %1094 to i8
  %1096 = load i8*, i8** %8, align 8
  %1097 = getelementptr inbounds i8, i8* %1096, i32 1
  store i8* %1097, i8** %8, align 8
  store i8 %1095, i8* %1096, align 1
  %1098 = load i8*, i8** %8, align 8
  %1099 = load i8*, i8** %9, align 8
  %1100 = icmp uge i8* %1098, %1099
  br i1 %1100, label %1101, label %1102

1101:                                             ; preds = %1093
  br label %1837

1102:                                             ; preds = %1093
  br label %1103

1103:                                             ; preds = %1102
  br label %1829

1104:                                             ; preds = %652
  %1105 = load i32, i32* @state, align 4
  %1106 = icmp eq i32 %1105, 10
  br i1 %1106, label %1107, label %1121

1107:                                             ; preds = %1104
  %1108 = load i32, i32* %13, align 4
  %1109 = trunc i32 %1108 to i8
  %1110 = load i8*, i8** %10, align 8
  %1111 = getelementptr inbounds i8, i8* %1110, i32 -1
  store i8* %1111, i8** %10, align 8
  store i8 %1109, i8* %1111, align 1
  store i32 3, i32* @state, align 4
  br label %1112

1112:                                             ; preds = %1107
  %1113 = load i8*, i8** %8, align 8
  %1114 = getelementptr inbounds i8, i8* %1113, i32 1
  store i8* %1114, i8** %8, align 8
  store i8 32, i8* %1113, align 1
  %1115 = load i8*, i8** %8, align 8
  %1116 = load i8*, i8** %9, align 8
  %1117 = icmp uge i8* %1115, %1116
  br i1 %1117, label %1118, label %1119

1118:                                             ; preds = %1112
  br label %1837

1119:                                             ; preds = %1112
  br label %1120

1120:                                             ; preds = %1119
  br label %1829

1121:                                             ; preds = %1104
  %1122 = load i8*, i8** %10, align 8
  %1123 = load i8*, i8** %11, align 8
  %1124 = icmp ult i8* %1122, %1123
  br i1 %1124, label %1125, label %1130

1125:                                             ; preds = %1121
  %1126 = load i8*, i8** %10, align 8
  %1127 = getelementptr inbounds i8, i8* %1126, i32 1
  store i8* %1127, i8** %10, align 8
  %1128 = load i8, i8* %1126, align 1
  %1129 = zext i8 %1128 to i32
  br label %1149

1130:                                             ; preds = %1121
  store i8* null, i8** @saved_input, align 8
  %1131 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1132 = load i8*, i8** @input_buffer, align 8
  %1133 = call i32 %1131(i8* %1132, i32 8)
  store i32 %1133, i32* %12, align 4
  %1134 = load i8*, i8** @input_buffer, align 8
  store i8* %1134, i8** %10, align 8
  %1135 = load i8*, i8** %10, align 8
  %1136 = load i32, i32* %12, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds i8, i8* %1135, i64 %1137
  store i8* %1138, i8** %11, align 8
  %1139 = load i32, i32* %12, align 4
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1141, label %1142

1141:                                             ; preds = %1130
  br label %1147

1142:                                             ; preds = %1130
  %1143 = load i8*, i8** %10, align 8
  %1144 = getelementptr inbounds i8, i8* %1143, i32 1
  store i8* %1144, i8** %10, align 8
  %1145 = load i8, i8* %1143, align 1
  %1146 = zext i8 %1145 to i32
  br label %1147

1147:                                             ; preds = %1142, %1141
  %1148 = phi i32 [ 141, %1141 ], [ %1146, %1142 ]
  br label %1149

1149:                                             ; preds = %1147, %1125
  %1150 = phi i32 [ %1129, %1125 ], [ %1148, %1147 ]
  store i32 %1150, i32* %13, align 4
  %1151 = load i32, i32* %13, align 4
  %1152 = icmp eq i32 %1151, 141
  br i1 %1152, label %1153, label %1156

1153:                                             ; preds = %1149
  %1154 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %1155 = call i32 (i8*, ...) @as_warn(i8* %1154)
  store i32 0, i32* %13, align 4
  br label %1156

1156:                                             ; preds = %1153, %1149
  %1157 = load i32, i32* %13, align 4
  %1158 = icmp eq i32 %1157, 92
  br i1 %1158, label %1159, label %1198

1159:                                             ; preds = %1156
  %1160 = load i8*, i8** %10, align 8
  %1161 = load i8*, i8** %11, align 8
  %1162 = icmp ult i8* %1160, %1161
  br i1 %1162, label %1163, label %1168

1163:                                             ; preds = %1159
  %1164 = load i8*, i8** %10, align 8
  %1165 = getelementptr inbounds i8, i8* %1164, i32 1
  store i8* %1165, i8** %10, align 8
  %1166 = load i8, i8* %1164, align 1
  %1167 = zext i8 %1166 to i32
  br label %1187

1168:                                             ; preds = %1159
  store i8* null, i8** @saved_input, align 8
  %1169 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1170 = load i8*, i8** @input_buffer, align 8
  %1171 = call i32 %1169(i8* %1170, i32 8)
  store i32 %1171, i32* %12, align 4
  %1172 = load i8*, i8** @input_buffer, align 8
  store i8* %1172, i8** %10, align 8
  %1173 = load i8*, i8** %10, align 8
  %1174 = load i32, i32* %12, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds i8, i8* %1173, i64 %1175
  store i8* %1176, i8** %11, align 8
  %1177 = load i32, i32* %12, align 4
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1180

1179:                                             ; preds = %1168
  br label %1185

1180:                                             ; preds = %1168
  %1181 = load i8*, i8** %10, align 8
  %1182 = getelementptr inbounds i8, i8* %1181, i32 1
  store i8* %1182, i8** %10, align 8
  %1183 = load i8, i8* %1181, align 1
  %1184 = zext i8 %1183 to i32
  br label %1185

1185:                                             ; preds = %1180, %1179
  %1186 = phi i32 [ 141, %1179 ], [ %1184, %1180 ]
  br label %1187

1187:                                             ; preds = %1185, %1163
  %1188 = phi i32 [ %1167, %1163 ], [ %1186, %1185 ]
  store i32 %1188, i32* %13, align 4
  %1189 = load i32, i32* %13, align 4
  %1190 = icmp eq i32 %1189, 141
  br i1 %1190, label %1191, label %1194

1191:                                             ; preds = %1187
  %1192 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %1193 = call i32 (i8*, ...) @as_warn(i8* %1192)
  store i32 92, i32* %13, align 4
  br label %1197

1194:                                             ; preds = %1187
  %1195 = load i32, i32* %13, align 4
  %1196 = call i32 @process_escape(i32 %1195)
  store i32 %1196, i32* %13, align 4
  br label %1197

1197:                                             ; preds = %1194, %1191
  br label %1198

1198:                                             ; preds = %1197, %1156
  %1199 = load i32*, i32** @out_buf, align 8
  %1200 = load i32, i32* %13, align 4
  %1201 = trunc i32 %1200 to i8
  %1202 = zext i8 %1201 to i32
  %1203 = call i32 @sprintf(i32* %1199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %1202)
  %1204 = load i8*, i8** %10, align 8
  %1205 = load i8*, i8** %11, align 8
  %1206 = icmp ult i8* %1204, %1205
  br i1 %1206, label %1207, label %1212

1207:                                             ; preds = %1198
  %1208 = load i8*, i8** %10, align 8
  %1209 = getelementptr inbounds i8, i8* %1208, i32 1
  store i8* %1209, i8** %10, align 8
  %1210 = load i8, i8* %1208, align 1
  %1211 = zext i8 %1210 to i32
  br label %1231

1212:                                             ; preds = %1198
  store i8* null, i8** @saved_input, align 8
  %1213 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1214 = load i8*, i8** @input_buffer, align 8
  %1215 = call i32 %1213(i8* %1214, i32 8)
  store i32 %1215, i32* %12, align 4
  %1216 = load i8*, i8** @input_buffer, align 8
  store i8* %1216, i8** %10, align 8
  %1217 = load i8*, i8** %10, align 8
  %1218 = load i32, i32* %12, align 4
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds i8, i8* %1217, i64 %1219
  store i8* %1220, i8** %11, align 8
  %1221 = load i32, i32* %12, align 4
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1223, label %1224

1223:                                             ; preds = %1212
  br label %1229

1224:                                             ; preds = %1212
  %1225 = load i8*, i8** %10, align 8
  %1226 = getelementptr inbounds i8, i8* %1225, i32 1
  store i8* %1226, i8** %10, align 8
  %1227 = load i8, i8* %1225, align 1
  %1228 = zext i8 %1227 to i32
  br label %1229

1229:                                             ; preds = %1224, %1223
  %1230 = phi i32 [ 141, %1223 ], [ %1228, %1224 ]
  br label %1231

1231:                                             ; preds = %1229, %1207
  %1232 = phi i32 [ %1211, %1207 ], [ %1230, %1229 ]
  store i32 %1232, i32* %13, align 4
  %1233 = icmp ne i32 %1232, 39
  br i1 %1233, label %1234, label %1243

1234:                                             ; preds = %1231
  %1235 = load i32, i32* %13, align 4
  %1236 = icmp ne i32 %1235, 141
  br i1 %1236, label %1237, label %1242

1237:                                             ; preds = %1234
  %1238 = load i32, i32* %13, align 4
  %1239 = trunc i32 %1238 to i8
  %1240 = load i8*, i8** %10, align 8
  %1241 = getelementptr inbounds i8, i8* %1240, i32 -1
  store i8* %1241, i8** %10, align 8
  store i8 %1239, i8* %1241, align 1
  br label %1242

1242:                                             ; preds = %1237, %1234
  br label %1243

1243:                                             ; preds = %1242, %1231
  %1244 = load i32*, i32** @out_buf, align 8
  %1245 = call i32 @strlen(i32* %1244)
  %1246 = icmp eq i32 %1245, 1
  br i1 %1246, label %1247, label %1261

1247:                                             ; preds = %1243
  br label %1248

1248:                                             ; preds = %1247
  %1249 = load i32*, i32** @out_buf, align 8
  %1250 = getelementptr inbounds i32, i32* %1249, i64 0
  %1251 = load i32, i32* %1250, align 4
  %1252 = trunc i32 %1251 to i8
  %1253 = load i8*, i8** %8, align 8
  %1254 = getelementptr inbounds i8, i8* %1253, i32 1
  store i8* %1254, i8** %8, align 8
  store i8 %1252, i8* %1253, align 1
  %1255 = load i8*, i8** %8, align 8
  %1256 = load i8*, i8** %9, align 8
  %1257 = icmp uge i8* %1255, %1256
  br i1 %1257, label %1258, label %1259

1258:                                             ; preds = %1248
  br label %1837

1259:                                             ; preds = %1248
  br label %1260

1260:                                             ; preds = %1259
  br label %1829

1261:                                             ; preds = %1243
  %1262 = load i32, i32* @state, align 4
  %1263 = icmp eq i32 %1262, 9
  br i1 %1263, label %1264, label %1265

1264:                                             ; preds = %1261
  store i32 3, i32* @old_state, align 4
  br label %1267

1265:                                             ; preds = %1261
  %1266 = load i32, i32* @state, align 4
  store i32 %1266, i32* @old_state, align 4
  br label %1267

1267:                                             ; preds = %1265, %1264
  store i32 -1, i32* @state, align 4
  %1268 = load i32*, i32** @out_buf, align 8
  %1269 = bitcast i32* %1268 to i8*
  store i8* %1269, i8** @out_string, align 8
  br label %1270

1270:                                             ; preds = %1267
  %1271 = load i8*, i8** @out_string, align 8
  %1272 = getelementptr inbounds i8, i8* %1271, i32 1
  store i8* %1272, i8** @out_string, align 8
  %1273 = load i8, i8* %1271, align 1
  %1274 = load i8*, i8** %8, align 8
  %1275 = getelementptr inbounds i8, i8* %1274, i32 1
  store i8* %1275, i8** %8, align 8
  store i8 %1273, i8* %1274, align 1
  %1276 = load i8*, i8** %8, align 8
  %1277 = load i8*, i8** %9, align 8
  %1278 = icmp uge i8* %1276, %1277
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1270
  br label %1837

1280:                                             ; preds = %1270
  br label %1281

1281:                                             ; preds = %1280
  br label %1829

1282:                                             ; preds = %652
  %1283 = load i32, i32* @state, align 4
  %1284 = icmp eq i32 %1283, 9
  br i1 %1284, label %1288, label %1285

1285:                                             ; preds = %1282
  %1286 = load i32, i32* @state, align 4
  %1287 = icmp eq i32 %1286, 10
  br i1 %1287, label %1288, label %1289

1288:                                             ; preds = %1285, %1282
  store i32 3, i32* @state, align 4
  br label %1294

1289:                                             ; preds = %1285
  %1290 = load i32, i32* @state, align 4
  %1291 = icmp ne i32 %1290, 3
  br i1 %1291, label %1292, label %1293

1292:                                             ; preds = %1289
  store i32 1, i32* @state, align 4
  br label %1293

1293:                                             ; preds = %1292, %1289
  br label %1294

1294:                                             ; preds = %1293, %1288
  br label %1295

1295:                                             ; preds = %1294
  %1296 = load i32, i32* %13, align 4
  %1297 = trunc i32 %1296 to i8
  %1298 = load i8*, i8** %8, align 8
  %1299 = getelementptr inbounds i8, i8* %1298, i32 1
  store i8* %1299, i8** %8, align 8
  store i8 %1297, i8* %1298, align 1
  %1300 = load i8*, i8** %8, align 8
  %1301 = load i8*, i8** %9, align 8
  %1302 = icmp uge i8* %1300, %1301
  br i1 %1302, label %1303, label %1304

1303:                                             ; preds = %1295
  br label %1837

1304:                                             ; preds = %1295
  br label %1305

1305:                                             ; preds = %1304
  br label %1829

1306:                                             ; preds = %652
  %1307 = load i32, i32* @add_newlines, align 4
  %1308 = icmp ne i32 %1307, 0
  br i1 %1308, label %1309, label %1316

1309:                                             ; preds = %1306
  %1310 = load i32, i32* @add_newlines, align 4
  %1311 = add nsw i32 %1310, -1
  store i32 %1311, i32* @add_newlines, align 4
  %1312 = load i32, i32* %13, align 4
  %1313 = trunc i32 %1312 to i8
  %1314 = load i8*, i8** %10, align 8
  %1315 = getelementptr inbounds i8, i8* %1314, i32 -1
  store i8* %1315, i8** %10, align 8
  store i8 %1313, i8* %1315, align 1
  br label %1316

1316:                                             ; preds = %1309, %1306
  br label %1317

1317:                                             ; preds = %652, %1316
  store i32 0, i32* @state, align 4
  br label %1318

1318:                                             ; preds = %1317
  %1319 = load i32, i32* %13, align 4
  %1320 = trunc i32 %1319 to i8
  %1321 = load i8*, i8** %8, align 8
  %1322 = getelementptr inbounds i8, i8* %1321, i32 1
  store i8* %1322, i8** %8, align 8
  store i8 %1320, i8* %1321, align 1
  %1323 = load i8*, i8** %8, align 8
  %1324 = load i8*, i8** %9, align 8
  %1325 = icmp uge i8* %1323, %1324
  br i1 %1325, label %1326, label %1327

1326:                                             ; preds = %1318
  br label %1837

1327:                                             ; preds = %1318
  br label %1328

1328:                                             ; preds = %1327
  br label %1829

1329:                                             ; preds = %652
  store i32 1, i32* @state, align 4
  br label %1330

1330:                                             ; preds = %1329
  %1331 = load i32, i32* %13, align 4
  %1332 = trunc i32 %1331 to i8
  %1333 = load i8*, i8** %8, align 8
  %1334 = getelementptr inbounds i8, i8* %1333, i32 1
  store i8* %1334, i8** %8, align 8
  store i8 %1332, i8* %1333, align 1
  %1335 = load i8*, i8** %8, align 8
  %1336 = load i8*, i8** %9, align 8
  %1337 = icmp uge i8* %1335, %1336
  br i1 %1337, label %1338, label %1339

1338:                                             ; preds = %1330
  br label %1837

1339:                                             ; preds = %1330
  br label %1340

1340:                                             ; preds = %1339
  br label %1829

1341:                                             ; preds = %652
  %1342 = load i32, i32* %13, align 4
  %1343 = icmp eq i32 %1342, 47
  br i1 %1343, label %1344, label %1383

1344:                                             ; preds = %1341
  %1345 = load i8*, i8** %10, align 8
  %1346 = load i8*, i8** %11, align 8
  %1347 = icmp ult i8* %1345, %1346
  br i1 %1347, label %1348, label %1353

1348:                                             ; preds = %1344
  %1349 = load i8*, i8** %10, align 8
  %1350 = getelementptr inbounds i8, i8* %1349, i32 1
  store i8* %1350, i8** %10, align 8
  %1351 = load i8, i8* %1349, align 1
  %1352 = zext i8 %1351 to i32
  br label %1372

1353:                                             ; preds = %1344
  store i8* null, i8** @saved_input, align 8
  %1354 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1355 = load i8*, i8** @input_buffer, align 8
  %1356 = call i32 %1354(i8* %1355, i32 8)
  store i32 %1356, i32* %12, align 4
  %1357 = load i8*, i8** @input_buffer, align 8
  store i8* %1357, i8** %10, align 8
  %1358 = load i8*, i8** %10, align 8
  %1359 = load i32, i32* %12, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds i8, i8* %1358, i64 %1360
  store i8* %1361, i8** %11, align 8
  %1362 = load i32, i32* %12, align 4
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1364, label %1365

1364:                                             ; preds = %1353
  br label %1370

1365:                                             ; preds = %1353
  %1366 = load i8*, i8** %10, align 8
  %1367 = getelementptr inbounds i8, i8* %1366, i32 1
  store i8* %1367, i8** %10, align 8
  %1368 = load i8, i8* %1366, align 1
  %1369 = zext i8 %1368 to i32
  br label %1370

1370:                                             ; preds = %1365, %1364
  %1371 = phi i32 [ 141, %1364 ], [ %1369, %1365 ]
  br label %1372

1372:                                             ; preds = %1370, %1348
  %1373 = phi i32 [ %1352, %1348 ], [ %1371, %1370 ]
  store i32 %1373, i32* %14, align 4
  %1374 = load i32, i32* %14, align 4
  %1375 = icmp eq i32 %1374, 42
  br i1 %1375, label %1376, label %1377

1376:                                             ; preds = %1372
  store i32 3, i32* @old_state, align 4
  store i32 -2, i32* @state, align 4
  br label %1829

1377:                                             ; preds = %1372
  %1378 = load i32, i32* %14, align 4
  %1379 = trunc i32 %1378 to i8
  %1380 = load i8*, i8** %10, align 8
  %1381 = getelementptr inbounds i8, i8* %1380, i32 -1
  store i8* %1381, i8** %10, align 8
  store i8 %1379, i8* %1381, align 1
  br label %1382

1382:                                             ; preds = %1377
  br label %1383

1383:                                             ; preds = %1382, %1341
  %1384 = load i32, i32* @state, align 4
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1389, label %1386

1386:                                             ; preds = %1383
  %1387 = load i32, i32* @state, align 4
  %1388 = icmp eq i32 %1387, 1
  br i1 %1388, label %1389, label %1536

1389:                                             ; preds = %1386, %1383
  %1390 = load i32, i32* %13, align 4
  store i32 %1390, i32* %17, align 4
  br label %1391

1391:                                             ; preds = %1428, %1389
  %1392 = load i8*, i8** %10, align 8
  %1393 = load i8*, i8** %11, align 8
  %1394 = icmp ult i8* %1392, %1393
  br i1 %1394, label %1395, label %1400

1395:                                             ; preds = %1391
  %1396 = load i8*, i8** %10, align 8
  %1397 = getelementptr inbounds i8, i8* %1396, i32 1
  store i8* %1397, i8** %10, align 8
  %1398 = load i8, i8* %1396, align 1
  %1399 = zext i8 %1398 to i32
  br label %1419

1400:                                             ; preds = %1391
  store i8* null, i8** @saved_input, align 8
  %1401 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1402 = load i8*, i8** @input_buffer, align 8
  %1403 = call i32 %1401(i8* %1402, i32 8)
  store i32 %1403, i32* %12, align 4
  %1404 = load i8*, i8** @input_buffer, align 8
  store i8* %1404, i8** %10, align 8
  %1405 = load i8*, i8** %10, align 8
  %1406 = load i32, i32* %12, align 4
  %1407 = sext i32 %1406 to i64
  %1408 = getelementptr inbounds i8, i8* %1405, i64 %1407
  store i8* %1408, i8** %11, align 8
  %1409 = load i32, i32* %12, align 4
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1411, label %1412

1411:                                             ; preds = %1400
  br label %1417

1412:                                             ; preds = %1400
  %1413 = load i8*, i8** %10, align 8
  %1414 = getelementptr inbounds i8, i8* %1413, i32 1
  store i8* %1414, i8** %10, align 8
  %1415 = load i8, i8* %1413, align 1
  %1416 = zext i8 %1415 to i32
  br label %1417

1417:                                             ; preds = %1412, %1411
  %1418 = phi i32 [ 141, %1411 ], [ %1416, %1412 ]
  br label %1419

1419:                                             ; preds = %1417, %1395
  %1420 = phi i32 [ %1399, %1395 ], [ %1418, %1417 ]
  store i32 %1420, i32* %13, align 4
  br label %1421

1421:                                             ; preds = %1419
  %1422 = load i32, i32* %13, align 4
  %1423 = icmp ne i32 %1422, 141
  br i1 %1423, label %1424, label %1428

1424:                                             ; preds = %1421
  %1425 = load i32, i32* %13, align 4
  %1426 = call i32 @IS_WHITESPACE(i32 %1425)
  %1427 = icmp ne i32 %1426, 0
  br label %1428

1428:                                             ; preds = %1424, %1421
  %1429 = phi i1 [ false, %1421 ], [ %1427, %1424 ]
  br i1 %1429, label %1391, label %1430

1430:                                             ; preds = %1428
  %1431 = load i32, i32* %13, align 4
  %1432 = icmp eq i32 %1431, 141
  br i1 %1432, label %1433, label %1445

1433:                                             ; preds = %1430
  %1434 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %1435 = call i32 (i8*, ...) @as_warn(i8* %1434)
  br label %1436

1436:                                             ; preds = %1433
  %1437 = load i8*, i8** %8, align 8
  %1438 = getelementptr inbounds i8, i8* %1437, i32 1
  store i8* %1438, i8** %8, align 8
  store i8 10, i8* %1437, align 1
  %1439 = load i8*, i8** %8, align 8
  %1440 = load i8*, i8** %9, align 8
  %1441 = icmp uge i8* %1439, %1440
  br i1 %1441, label %1442, label %1443

1442:                                             ; preds = %1436
  br label %1837

1443:                                             ; preds = %1436
  br label %1444

1444:                                             ; preds = %1443
  br label %1829

1445:                                             ; preds = %1430
  %1446 = load i32, i32* %13, align 4
  %1447 = icmp slt i32 %1446, 48
  br i1 %1447, label %1457, label %1448

1448:                                             ; preds = %1445
  %1449 = load i32, i32* %13, align 4
  %1450 = icmp sgt i32 %1449, 57
  br i1 %1450, label %1457, label %1451

1451:                                             ; preds = %1448
  %1452 = load i32, i32* @state, align 4
  %1453 = icmp ne i32 %1452, 0
  br i1 %1453, label %1457, label %1454

1454:                                             ; preds = %1451
  %1455 = load i32, i32* %17, align 4
  %1456 = icmp ne i32 %1455, 35
  br i1 %1456, label %1457, label %1514

1457:                                             ; preds = %1454, %1451, %1448, %1445
  br label %1458

1458:                                             ; preds = %1496, %1457
  %1459 = load i32, i32* %13, align 4
  %1460 = icmp ne i32 %1459, 141
  br i1 %1460, label %1461, label %1466

1461:                                             ; preds = %1458
  %1462 = load i32, i32* %13, align 4
  %1463 = call i64 @IS_NEWLINE(i32 %1462)
  %1464 = icmp ne i64 %1463, 0
  %1465 = xor i1 %1464, true
  br label %1466

1466:                                             ; preds = %1461, %1458
  %1467 = phi i1 [ false, %1458 ], [ %1465, %1461 ]
  br i1 %1467, label %1468, label %1498

1468:                                             ; preds = %1466
  %1469 = load i8*, i8** %10, align 8
  %1470 = load i8*, i8** %11, align 8
  %1471 = icmp ult i8* %1469, %1470
  br i1 %1471, label %1472, label %1477

1472:                                             ; preds = %1468
  %1473 = load i8*, i8** %10, align 8
  %1474 = getelementptr inbounds i8, i8* %1473, i32 1
  store i8* %1474, i8** %10, align 8
  %1475 = load i8, i8* %1473, align 1
  %1476 = zext i8 %1475 to i32
  br label %1496

1477:                                             ; preds = %1468
  store i8* null, i8** @saved_input, align 8
  %1478 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1479 = load i8*, i8** @input_buffer, align 8
  %1480 = call i32 %1478(i8* %1479, i32 8)
  store i32 %1480, i32* %12, align 4
  %1481 = load i8*, i8** @input_buffer, align 8
  store i8* %1481, i8** %10, align 8
  %1482 = load i8*, i8** %10, align 8
  %1483 = load i32, i32* %12, align 4
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds i8, i8* %1482, i64 %1484
  store i8* %1485, i8** %11, align 8
  %1486 = load i32, i32* %12, align 4
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1488, label %1489

1488:                                             ; preds = %1477
  br label %1494

1489:                                             ; preds = %1477
  %1490 = load i8*, i8** %10, align 8
  %1491 = getelementptr inbounds i8, i8* %1490, i32 1
  store i8* %1491, i8** %10, align 8
  %1492 = load i8, i8* %1490, align 1
  %1493 = zext i8 %1492 to i32
  br label %1494

1494:                                             ; preds = %1489, %1488
  %1495 = phi i32 [ 141, %1488 ], [ %1493, %1489 ]
  br label %1496

1496:                                             ; preds = %1494, %1472
  %1497 = phi i32 [ %1476, %1472 ], [ %1495, %1494 ]
  store i32 %1497, i32* %13, align 4
  br label %1458

1498:                                             ; preds = %1466
  %1499 = load i32, i32* %13, align 4
  %1500 = icmp eq i32 %1499, 141
  br i1 %1500, label %1501, label %1504

1501:                                             ; preds = %1498
  %1502 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %1503 = call i32 (i8*, ...) @as_warn(i8* %1502)
  br label %1504

1504:                                             ; preds = %1501, %1498
  store i32 0, i32* @state, align 4
  br label %1505

1505:                                             ; preds = %1504
  %1506 = load i8*, i8** %8, align 8
  %1507 = getelementptr inbounds i8, i8* %1506, i32 1
  store i8* %1507, i8** %8, align 8
  store i8 10, i8* %1506, align 1
  %1508 = load i8*, i8** %8, align 8
  %1509 = load i8*, i8** %9, align 8
  %1510 = icmp uge i8* %1508, %1509
  br i1 %1510, label %1511, label %1512

1511:                                             ; preds = %1505
  br label %1837

1512:                                             ; preds = %1505
  br label %1513

1513:                                             ; preds = %1512
  br label %1829

1514:                                             ; preds = %1454
  %1515 = load i32, i32* %13, align 4
  %1516 = trunc i32 %1515 to i8
  %1517 = load i8*, i8** %10, align 8
  %1518 = getelementptr inbounds i8, i8* %1517, i32 -1
  store i8* %1518, i8** %10, align 8
  store i8 %1516, i8* %1518, align 1
  store i32 4, i32* @old_state, align 4
  store i32 -1, i32* @state, align 4
  %1519 = load i32, i32* @scrub_m68k_mri, align 4
  %1520 = icmp ne i32 %1519, 0
  br i1 %1520, label %1521, label %1522

1521:                                             ; preds = %1514
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** @out_string, align 8
  br label %1523

1522:                                             ; preds = %1514
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** @out_string, align 8
  br label %1523

1523:                                             ; preds = %1522, %1521
  br label %1524

1524:                                             ; preds = %1523
  %1525 = load i8*, i8** @out_string, align 8
  %1526 = getelementptr inbounds i8, i8* %1525, i32 1
  store i8* %1526, i8** @out_string, align 8
  %1527 = load i8, i8* %1525, align 1
  %1528 = load i8*, i8** %8, align 8
  %1529 = getelementptr inbounds i8, i8* %1528, i32 1
  store i8* %1529, i8** %8, align 8
  store i8 %1527, i8* %1528, align 1
  %1530 = load i8*, i8** %8, align 8
  %1531 = load i8*, i8** %9, align 8
  %1532 = icmp uge i8* %1530, %1531
  br i1 %1532, label %1533, label %1534

1533:                                             ; preds = %1524
  br label %1837

1534:                                             ; preds = %1524
  br label %1535

1535:                                             ; preds = %1534
  br label %1829

1536:                                             ; preds = %1386
  %1537 = load i32, i32* @tc_comment_chars, align 4
  %1538 = load i32, i32* %13, align 4
  %1539 = call i32* @strchr(i32 %1537, i32 %1538)
  %1540 = icmp eq i32* %1539, null
  br i1 %1540, label %1541, label %1551

1541:                                             ; preds = %1536
  %1542 = load i32, i32* @scrub_m68k_mri, align 4
  %1543 = icmp ne i32 %1542, 0
  br i1 %1543, label %1544, label %1550

1544:                                             ; preds = %1541
  %1545 = load i32, i32* %13, align 4
  %1546 = icmp ne i32 %1545, 33
  br i1 %1546, label %1547, label %1551

1547:                                             ; preds = %1544
  %1548 = load i32, i32* %13, align 4
  %1549 = icmp ne i32 %1548, 42
  br i1 %1549, label %1550, label %1551

1550:                                             ; preds = %1547, %1541
  br label %1777

1551:                                             ; preds = %1547, %1544, %1536
  %1552 = load i32, i32* @scrub_m68k_mri, align 4
  %1553 = icmp ne i32 %1552, 0
  br i1 %1553, label %1554, label %1570

1554:                                             ; preds = %1551
  %1555 = load i32, i32* %13, align 4
  %1556 = icmp eq i32 %1555, 33
  br i1 %1556, label %1563, label %1557

1557:                                             ; preds = %1554
  %1558 = load i32, i32* %13, align 4
  %1559 = icmp eq i32 %1558, 42
  br i1 %1559, label %1563, label %1560

1560:                                             ; preds = %1557
  %1561 = load i32, i32* %13, align 4
  %1562 = icmp eq i32 %1561, 35
  br i1 %1562, label %1563, label %1570

1563:                                             ; preds = %1560, %1557, %1554
  %1564 = load i32, i32* @state, align 4
  %1565 = icmp ne i32 %1564, 1
  br i1 %1565, label %1566, label %1570

1566:                                             ; preds = %1563
  %1567 = load i32, i32* @state, align 4
  %1568 = icmp ne i32 %1567, 10
  br i1 %1568, label %1569, label %1570

1569:                                             ; preds = %1566
  br label %1777

1570:                                             ; preds = %1566, %1563, %1560, %1551
  br label %1571

1571:                                             ; preds = %652, %1570
  br label %1572

1572:                                             ; preds = %1610, %1571
  %1573 = load i8*, i8** %10, align 8
  %1574 = load i8*, i8** %11, align 8
  %1575 = icmp ult i8* %1573, %1574
  br i1 %1575, label %1576, label %1581

1576:                                             ; preds = %1572
  %1577 = load i8*, i8** %10, align 8
  %1578 = getelementptr inbounds i8, i8* %1577, i32 1
  store i8* %1578, i8** %10, align 8
  %1579 = load i8, i8* %1577, align 1
  %1580 = zext i8 %1579 to i32
  br label %1600

1581:                                             ; preds = %1572
  store i8* null, i8** @saved_input, align 8
  %1582 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1583 = load i8*, i8** @input_buffer, align 8
  %1584 = call i32 %1582(i8* %1583, i32 8)
  store i32 %1584, i32* %12, align 4
  %1585 = load i8*, i8** @input_buffer, align 8
  store i8* %1585, i8** %10, align 8
  %1586 = load i8*, i8** %10, align 8
  %1587 = load i32, i32* %12, align 4
  %1588 = sext i32 %1587 to i64
  %1589 = getelementptr inbounds i8, i8* %1586, i64 %1588
  store i8* %1589, i8** %11, align 8
  %1590 = load i32, i32* %12, align 4
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1592, label %1593

1592:                                             ; preds = %1581
  br label %1598

1593:                                             ; preds = %1581
  %1594 = load i8*, i8** %10, align 8
  %1595 = getelementptr inbounds i8, i8* %1594, i32 1
  store i8* %1595, i8** %10, align 8
  %1596 = load i8, i8* %1594, align 1
  %1597 = zext i8 %1596 to i32
  br label %1598

1598:                                             ; preds = %1593, %1592
  %1599 = phi i32 [ 141, %1592 ], [ %1597, %1593 ]
  br label %1600

1600:                                             ; preds = %1598, %1576
  %1601 = phi i32 [ %1580, %1576 ], [ %1599, %1598 ]
  store i32 %1601, i32* %13, align 4
  br label %1602

1602:                                             ; preds = %1600
  %1603 = load i32, i32* %13, align 4
  %1604 = icmp ne i32 %1603, 141
  br i1 %1604, label %1605, label %1610

1605:                                             ; preds = %1602
  %1606 = load i32, i32* %13, align 4
  %1607 = call i64 @IS_NEWLINE(i32 %1606)
  %1608 = icmp ne i64 %1607, 0
  %1609 = xor i1 %1608, true
  br label %1610

1610:                                             ; preds = %1605, %1602
  %1611 = phi i1 [ false, %1602 ], [ %1609, %1605 ]
  br i1 %1611, label %1572, label %1612

1612:                                             ; preds = %1610
  %1613 = load i32, i32* %13, align 4
  %1614 = icmp eq i32 %1613, 141
  br i1 %1614, label %1615, label %1618

1615:                                             ; preds = %1612
  %1616 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %1617 = call i32 (i8*, ...) @as_warn(i8* %1616)
  br label %1618

1618:                                             ; preds = %1615, %1612
  store i32 0, i32* @state, align 4
  br label %1619

1619:                                             ; preds = %1618
  %1620 = load i8*, i8** %8, align 8
  %1621 = getelementptr inbounds i8, i8* %1620, i32 1
  store i8* %1621, i8** %8, align 8
  store i8 10, i8* %1620, align 1
  %1622 = load i8*, i8** %8, align 8
  %1623 = load i8*, i8** %9, align 8
  %1624 = icmp uge i8* %1622, %1623
  br i1 %1624, label %1625, label %1626

1625:                                             ; preds = %1619
  br label %1837

1626:                                             ; preds = %1619
  br label %1627

1627:                                             ; preds = %1626
  br label %1829

1628:                                             ; preds = %652
  %1629 = load i32, i32* @state, align 4
  %1630 = icmp eq i32 %1629, 10
  br i1 %1630, label %1631, label %1645

1631:                                             ; preds = %1628
  %1632 = load i32, i32* %13, align 4
  %1633 = trunc i32 %1632 to i8
  %1634 = load i8*, i8** %10, align 8
  %1635 = getelementptr inbounds i8, i8* %1634, i32 -1
  store i8* %1635, i8** %10, align 8
  store i8 %1633, i8* %1635, align 1
  store i32 3, i32* @state, align 4
  br label %1636

1636:                                             ; preds = %1631
  %1637 = load i8*, i8** %8, align 8
  %1638 = getelementptr inbounds i8, i8* %1637, i32 1
  store i8* %1638, i8** %8, align 8
  store i8 32, i8* %1637, align 1
  %1639 = load i8*, i8** %8, align 8
  %1640 = load i8*, i8** %9, align 8
  %1641 = icmp uge i8* %1639, %1640
  br i1 %1641, label %1642, label %1643

1642:                                             ; preds = %1636
  br label %1837

1643:                                             ; preds = %1636
  br label %1644

1644:                                             ; preds = %1643
  br label %1829

1645:                                             ; preds = %1628
  %1646 = load i32, i32* @state, align 4
  %1647 = icmp eq i32 %1646, 3
  br i1 %1647, label %1648, label %1649

1648:                                             ; preds = %1645
  store i32 9, i32* @state, align 4
  br label %1649

1649:                                             ; preds = %1648, %1645
  %1650 = load i8*, i8** %8, align 8
  %1651 = getelementptr inbounds i8, i8* %1650, i64 1
  %1652 = load i8*, i8** %9, align 8
  %1653 = icmp ult i8* %1651, %1652
  br i1 %1653, label %1654, label %1775

1654:                                             ; preds = %1649
  %1655 = load i32*, i32** @mri_state, align 8
  %1656 = icmp eq i32* %1655, null
  br i1 %1656, label %1657, label %1775

1657:                                             ; preds = %1654
  %1658 = load i8*, i8** %10, align 8
  store i8* %1658, i8** %18, align 8
  br label %1659

1659:                                             ; preds = %1679, %1657
  %1660 = load i8*, i8** %18, align 8
  %1661 = load i8*, i8** %11, align 8
  %1662 = icmp ult i8* %1660, %1661
  br i1 %1662, label %1663, label %1682

1663:                                             ; preds = %1659
  %1664 = load i8*, i8** %18, align 8
  %1665 = load i8, i8* %1664, align 1
  %1666 = zext i8 %1665 to i32
  store i32 %1666, i32* %14, align 4
  %1667 = load i32*, i32** @lex, align 8
  %1668 = load i32, i32* %14, align 4
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds i32, i32* %1667, i64 %1669
  %1671 = load i32, i32* %1670, align 4
  store i32 %1671, i32* %20, align 4
  %1672 = load i32, i32* %20, align 4
  %1673 = icmp ne i32 %1672, 0
  br i1 %1673, label %1674, label %1678

1674:                                             ; preds = %1663
  %1675 = load i32, i32* %20, align 4
  %1676 = icmp ne i32 %1675, 130
  br i1 %1676, label %1677, label %1678

1677:                                             ; preds = %1674
  br label %1682

1678:                                             ; preds = %1674, %1663
  br label %1679

1679:                                             ; preds = %1678
  %1680 = load i8*, i8** %18, align 8
  %1681 = getelementptr inbounds i8, i8* %1680, i32 1
  store i8* %1681, i8** %18, align 8
  br label %1659

1682:                                             ; preds = %1677, %1659
  %1683 = load i8*, i8** %18, align 8
  %1684 = load i8*, i8** %10, align 8
  %1685 = icmp ugt i8* %1683, %1684
  br i1 %1685, label %1686, label %1689

1686:                                             ; preds = %1682
  %1687 = load i8*, i8** %18, align 8
  %1688 = getelementptr inbounds i8, i8* %1687, i32 -1
  store i8* %1688, i8** %18, align 8
  br label %1689

1689:                                             ; preds = %1686, %1682
  %1690 = load i8*, i8** %18, align 8
  %1691 = load i8*, i8** %10, align 8
  %1692 = ptrtoint i8* %1690 to i64
  %1693 = ptrtoint i8* %1691 to i64
  %1694 = sub i64 %1692, %1693
  %1695 = trunc i64 %1694 to i32
  store i32 %1695, i32* %19, align 4
  %1696 = load i32, i32* %19, align 4
  %1697 = sext i32 %1696 to i64
  %1698 = load i8*, i8** %9, align 8
  %1699 = load i8*, i8** %8, align 8
  %1700 = ptrtoint i8* %1698 to i64
  %1701 = ptrtoint i8* %1699 to i64
  %1702 = sub i64 %1700, %1701
  %1703 = sub nsw i64 %1702, 1
  %1704 = icmp sgt i64 %1697, %1703
  br i1 %1704, label %1705, label %1713

1705:                                             ; preds = %1689
  %1706 = load i8*, i8** %9, align 8
  %1707 = load i8*, i8** %8, align 8
  %1708 = ptrtoint i8* %1706 to i64
  %1709 = ptrtoint i8* %1707 to i64
  %1710 = sub i64 %1708, %1709
  %1711 = sub nsw i64 %1710, 1
  %1712 = trunc i64 %1711 to i32
  store i32 %1712, i32* %19, align 4
  br label %1713

1713:                                             ; preds = %1705, %1689
  %1714 = load i32, i32* %19, align 4
  %1715 = icmp sgt i32 %1714, 0
  br i1 %1715, label %1716, label %1774

1716:                                             ; preds = %1713
  br label %1717

1717:                                             ; preds = %1716
  %1718 = load i32, i32* %13, align 4
  %1719 = trunc i32 %1718 to i8
  %1720 = load i8*, i8** %8, align 8
  %1721 = getelementptr inbounds i8, i8* %1720, i32 1
  store i8* %1721, i8** %8, align 8
  store i8 %1719, i8* %1720, align 1
  %1722 = load i8*, i8** %8, align 8
  %1723 = load i8*, i8** %9, align 8
  %1724 = icmp uge i8* %1722, %1723
  br i1 %1724, label %1725, label %1726

1725:                                             ; preds = %1717
  br label %1837

1726:                                             ; preds = %1717
  br label %1727

1727:                                             ; preds = %1726
  %1728 = load i8*, i8** %8, align 8
  %1729 = load i8*, i8** %10, align 8
  %1730 = load i32, i32* %19, align 4
  %1731 = call i32 @memcpy(i8* %1728, i8* %1729, i32 %1730)
  %1732 = load i32, i32* %19, align 4
  %1733 = load i8*, i8** %8, align 8
  %1734 = sext i32 %1732 to i64
  %1735 = getelementptr inbounds i8, i8* %1733, i64 %1734
  store i8* %1735, i8** %8, align 8
  %1736 = load i32, i32* %19, align 4
  %1737 = load i8*, i8** %10, align 8
  %1738 = sext i32 %1736 to i64
  %1739 = getelementptr inbounds i8, i8* %1737, i64 %1738
  store i8* %1739, i8** %10, align 8
  %1740 = load i8*, i8** %8, align 8
  %1741 = load i8*, i8** %9, align 8
  %1742 = icmp uge i8* %1740, %1741
  br i1 %1742, label %1743, label %1744

1743:                                             ; preds = %1727
  br label %1837

1744:                                             ; preds = %1727
  %1745 = load i8*, i8** %10, align 8
  %1746 = load i8*, i8** %11, align 8
  %1747 = icmp ult i8* %1745, %1746
  br i1 %1747, label %1748, label %1753

1748:                                             ; preds = %1744
  %1749 = load i8*, i8** %10, align 8
  %1750 = getelementptr inbounds i8, i8* %1749, i32 1
  store i8* %1750, i8** %10, align 8
  %1751 = load i8, i8* %1749, align 1
  %1752 = zext i8 %1751 to i32
  br label %1772

1753:                                             ; preds = %1744
  store i8* null, i8** @saved_input, align 8
  %1754 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %1755 = load i8*, i8** @input_buffer, align 8
  %1756 = call i32 %1754(i8* %1755, i32 8)
  store i32 %1756, i32* %12, align 4
  %1757 = load i8*, i8** @input_buffer, align 8
  store i8* %1757, i8** %10, align 8
  %1758 = load i8*, i8** %10, align 8
  %1759 = load i32, i32* %12, align 4
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i8, i8* %1758, i64 %1760
  store i8* %1761, i8** %11, align 8
  %1762 = load i32, i32* %12, align 4
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1764, label %1765

1764:                                             ; preds = %1753
  br label %1770

1765:                                             ; preds = %1753
  %1766 = load i8*, i8** %10, align 8
  %1767 = getelementptr inbounds i8, i8* %1766, i32 1
  store i8* %1767, i8** %10, align 8
  %1768 = load i8, i8* %1766, align 1
  %1769 = zext i8 %1768 to i32
  br label %1770

1770:                                             ; preds = %1765, %1764
  %1771 = phi i32 [ 141, %1764 ], [ %1769, %1765 ]
  br label %1772

1772:                                             ; preds = %1770, %1748
  %1773 = phi i32 [ %1752, %1748 ], [ %1771, %1770 ]
  store i32 %1773, i32* %13, align 4
  br label %1774

1774:                                             ; preds = %1772, %1713
  br label %1775

1775:                                             ; preds = %1774, %1654, %1649
  br label %1776

1776:                                             ; preds = %652, %1775
  br label %1777

1777:                                             ; preds = %1776, %1569, %1550
  %1778 = load i32, i32* @state, align 4
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1780, label %1781

1780:                                             ; preds = %1777
  store i32 11, i32* @state, align 4
  br label %1817

1781:                                             ; preds = %1777
  %1782 = load i32, i32* @state, align 4
  %1783 = icmp eq i32 %1782, 1
  br i1 %1783, label %1784, label %1785

1784:                                             ; preds = %1781
  store i32 2, i32* @state, align 4
  br label %1816

1785:                                             ; preds = %1781
  %1786 = load i32, i32* @state, align 4
  %1787 = icmp eq i32 %1786, 9
  br i1 %1787, label %1788, label %1794

1788:                                             ; preds = %1785
  %1789 = load i32, i32* %13, align 4
  %1790 = call i32 @IS_SYMBOL_COMPONENT(i32 %1789)
  %1791 = icmp ne i32 %1790, 0
  br i1 %1791, label %1793, label %1792

1792:                                             ; preds = %1788
  store i32 3, i32* @state, align 4
  br label %1793

1793:                                             ; preds = %1792, %1788
  br label %1815

1794:                                             ; preds = %1785
  %1795 = load i32, i32* @state, align 4
  %1796 = icmp eq i32 %1795, 10
  br i1 %1796, label %1797, label %1814

1797:                                             ; preds = %1794
  %1798 = load i32, i32* %13, align 4
  %1799 = icmp eq i32 %1798, 92
  br i1 %1799, label %1800, label %1813

1800:                                             ; preds = %1797
  %1801 = load i8*, i8** %8, align 8
  %1802 = getelementptr inbounds i8, i8* %1801, i64 1
  %1803 = load i8*, i8** %9, align 8
  %1804 = icmp uge i8* %1802, %1803
  br i1 %1804, label %1805, label %1810

1805:                                             ; preds = %1800
  %1806 = load i32, i32* %13, align 4
  %1807 = trunc i32 %1806 to i8
  %1808 = load i8*, i8** %10, align 8
  %1809 = getelementptr inbounds i8, i8* %1808, i32 -1
  store i8* %1809, i8** %10, align 8
  store i8 %1807, i8* %1809, align 1
  br label %1837

1810:                                             ; preds = %1800
  %1811 = load i8*, i8** %8, align 8
  %1812 = getelementptr inbounds i8, i8* %1811, i32 1
  store i8* %1812, i8** %8, align 8
  store i8 32, i8* %1811, align 1
  br label %1813

1813:                                             ; preds = %1810, %1797
  store i32 3, i32* @state, align 4
  br label %1814

1814:                                             ; preds = %1813, %1794
  br label %1815

1815:                                             ; preds = %1814, %1793
  br label %1816

1816:                                             ; preds = %1815, %1784
  br label %1817

1817:                                             ; preds = %1816, %1780
  br label %1818

1818:                                             ; preds = %1817
  %1819 = load i32, i32* %13, align 4
  %1820 = trunc i32 %1819 to i8
  %1821 = load i8*, i8** %8, align 8
  %1822 = getelementptr inbounds i8, i8* %1821, i32 1
  store i8* %1822, i8** %8, align 8
  store i8 %1820, i8* %1821, align 1
  %1823 = load i8*, i8** %8, align 8
  %1824 = load i8*, i8** %9, align 8
  %1825 = icmp uge i8* %1823, %1824
  br i1 %1825, label %1826, label %1827

1826:                                             ; preds = %1818
  br label %1837

1827:                                             ; preds = %1818
  br label %1828

1828:                                             ; preds = %1827
  br label %1829

1829:                                             ; preds = %1828, %1644, %1627, %1535, %1513, %1444, %1376, %1340, %1328, %1305, %1281, %1260, %1120, %1103, %1036, %873, %779, %750, %718
  br label %48

1830:                                             ; preds = %701, %651, %211, %163, %107
  %1831 = load i8*, i8** %8, align 8
  %1832 = load i8*, i8** %6, align 8
  %1833 = ptrtoint i8* %1831 to i64
  %1834 = ptrtoint i8* %1832 to i64
  %1835 = sub i64 %1833, %1834
  %1836 = trunc i64 %1835 to i32
  store i32 %1836, i32* %4, align 4
  br label %1857

1837:                                             ; preds = %1826, %1805, %1743, %1725, %1642, %1625, %1533, %1511, %1442, %1338, %1326, %1303, %1279, %1258, %1118, %1101, %1053, %1033, %867, %844, %826, %809, %795, %777, %748, %716, %648, %600, %586, %571, %522, %510, %489, %474, %456, %407, %335, %284, %227, %120, %70
  %1838 = load i8*, i8** %11, align 8
  %1839 = load i8*, i8** %10, align 8
  %1840 = icmp ugt i8* %1838, %1839
  br i1 %1840, label %1841, label %1849

1841:                                             ; preds = %1837
  %1842 = load i8*, i8** %10, align 8
  store i8* %1842, i8** @saved_input, align 8
  %1843 = load i8*, i8** %11, align 8
  %1844 = load i8*, i8** %10, align 8
  %1845 = ptrtoint i8* %1843 to i64
  %1846 = ptrtoint i8* %1844 to i64
  %1847 = sub i64 %1845, %1846
  %1848 = trunc i64 %1847 to i32
  store i32 %1848, i32* @saved_input_len, align 4
  br label %1850

1849:                                             ; preds = %1837
  store i8* null, i8** @saved_input, align 8
  br label %1850

1850:                                             ; preds = %1849, %1841
  %1851 = load i8*, i8** %8, align 8
  %1852 = load i8*, i8** %6, align 8
  %1853 = ptrtoint i8* %1851 to i64
  %1854 = ptrtoint i8* %1852 to i64
  %1855 = sub i64 %1853, %1854
  %1856 = trunc i64 %1855 to i32
  store i32 %1856, i32* %4, align 4
  br label %1857

1857:                                             ; preds = %1850, %1830, %40
  %1858 = load i32, i32* %4, align 4
  ret i32 %1858
}

declare dso_local i32 @as_warn(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @IS_WHITESPACE(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @IS_COMMENT(i32) #1

declare dso_local i32 @IS_LINE_SEPARATOR(i32) #1

declare dso_local i32 @IS_PARALLEL_SEPARATOR(i32) #1

declare dso_local i32 @BAD_CASE(i32) #1

declare dso_local i64 @IS_NEWLINE(i32) #1

declare dso_local i32 @process_escape(i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @strchr(i32, i32) #1

declare dso_local i32 @IS_SYMBOL_COMPONENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
