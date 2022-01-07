; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_datablock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_datablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"L\22\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"L\22\22\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"0x%lxL\00", align 1
@wrtarget = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c" 0x%lxL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\09/* \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c".  */\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i32, i32)* @write_rc_datablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_datablock(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %226

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @test_rc_datablock_text(i32 %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %129

37:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %105, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @indent(i32* %43, i32 2)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %65, %42
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 160
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 10
  br label %62

62:                                               ; preds = %54, %51, %47
  %63 = phi i1 [ false, %51 ], [ false, %47 ], [ %61, %54 ]
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %47

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %82, %74, %70
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @ascii_print(i32* %88, i8* %94, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %87
  br label %38

106:                                              ; preds = %38
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @indent(i32* %110, i32 2)
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  br label %433

129:                                              ; preds = %32
  %130 = load i32, i32* %8, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = call i64 @test_rc_datablock_unicode(i32 %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %225

134:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %201, %134
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %202

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8* %143, i8** %18, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @indent(i32* %144, i32 2)
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %148

148:                                              ; preds = %166, %139
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %153, 160
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load i8*, i8** %18, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 10
  br label %163

163:                                              ; preds = %155, %152, %148
  %164 = phi i1 [ false, %152 ], [ false, %148 ], [ %162, %155 ]
  br i1 %164, label %165, label %171

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %16, align 4
  br label %148

171:                                              ; preds = %163
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i8*, i8** %18, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 10
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 2
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %183, %175, %171
  %189 = load i32*, i32** %7, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @unicode_print(i32* %189, i8* %190, i32 %191)
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32*, i32** %7, align 8
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %188
  br label %135

202:                                              ; preds = %135
  %203 = load i32, i32* %16, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @indent(i32* %206, i32 2)
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %210

210:                                              ; preds = %205, %202
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32*, i32** %7, align 8
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %216
  br label %433

225:                                              ; preds = %129
  store i32 0, i32* %12, align 4
  br label %226

226:                                              ; preds = %225, %29
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %427

229:                                              ; preds = %226
  store i32 1, i32* %21, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 4, i32 8
  store i32 %233, i32* %20, align 4
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @indent(i32* %234, i32 2)
  store i32 0, i32* %19, align 4
  br label %236

236:                                              ; preds = %331, %229
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, 3
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %334

241:                                              ; preds = %236
  %242 = load i32, i32* %19, align 4
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %21, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load i32*, i32** %7, align 8
  %247 = call i32 @indent(i32* %246, i32 2)
  br label %248

248:                                              ; preds = %245, %241
  store i32 0, i32* %22, align 4
  br label %249

249:                                              ; preds = %309, %248
  %250 = load i32, i32* %22, align 4
  %251 = load i32, i32* %20, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 3
  %256 = load i32, i32* %8, align 4
  %257 = icmp slt i32 %255, %256
  br label %258

258:                                              ; preds = %253, %249
  %259 = phi i1 [ false, %249 ], [ %257, %253 ]
  br i1 %259, label %260, label %314

260:                                              ; preds = %258
  %261 = load i32, i32* %22, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %260
  %264 = load i32*, i32** %7, align 8
  %265 = load i8*, i8** %9, align 8
  %266 = load i32, i32* %19, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* %19, align 4
  %271 = sub nsw i32 %269, %270
  %272 = call i64 @windres_get_32(i32* @wrtarget, i8* %268, i32 %271)
  %273 = call i32 (i32*, i8*, ...) @fprintf(i32* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 %272)
  store i32 %273, i32* %13, align 4
  br label %286

274:                                              ; preds = %260
  %275 = load i32*, i32** %7, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = load i32, i32* %19, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %19, align 4
  %282 = sub nsw i32 %280, %281
  %283 = call i64 @windres_get_32(i32* @wrtarget, i8* %279, i32 %282)
  %284 = call i32 (i32*, i8*, ...) @fprintf(i32* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 %283)
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %13, align 4
  br label %286

286:                                              ; preds = %274, %263
  %287 = load i32, i32* %10, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %19, align 4
  %291 = add nsw i32 %290, 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %289, %286
  %295 = load i32, i32* %13, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %294
  %298 = load i32, i32* %13, align 4
  %299 = icmp slt i32 %298, 11
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i32*, i32** %7, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sub nsw i32 11, %302
  %304 = call i32 @indent(i32* %301, i32 %303)
  br label %305

305:                                              ; preds = %300, %297, %294
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 (i32*, i8*, ...) @fprintf(i32* %306, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305, %289
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %22, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %22, align 4
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %312, 4
  store i32 %313, i32* %19, align 4
  br label %249

314:                                              ; preds = %258
  %315 = load i32, i32* %12, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %331

317:                                              ; preds = %314
  %318 = load i32*, i32** %7, align 8
  %319 = call i32 (i32*, i8*, ...) @fprintf(i32* %318, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %320 = load i32*, i32** %7, align 8
  %321 = load i8*, i8** %9, align 8
  %322 = load i32, i32* %23, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i32, i32* %19, align 4
  %326 = load i32, i32* %23, align 4
  %327 = sub nsw i32 %325, %326
  %328 = call i32 @ascii_print(i32* %320, i8* %324, i32 %327)
  %329 = load i32*, i32** %7, align 8
  %330 = call i32 (i32*, i8*, ...) @fprintf(i32* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %331

331:                                              ; preds = %317, %314
  %332 = load i32*, i32** %7, align 8
  %333 = call i32 (i32*, i8*, ...) @fprintf(i32* %332, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %236

334:                                              ; preds = %236
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %335, 1
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %397

339:                                              ; preds = %334
  %340 = load i32, i32* %21, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load i32*, i32** %7, align 8
  %344 = call i32 @indent(i32* %343, i32 2)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load i32*, i32** %7, align 8
  %347 = load i8*, i8** %9, align 8
  %348 = load i32, i32* %19, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %347, i64 %349
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* %19, align 4
  %353 = sub nsw i32 %351, %352
  %354 = call i64 @windres_get_16(i32* @wrtarget, i8* %350, i32 %353)
  %355 = trunc i64 %354 to i32
  %356 = call i32 (i32*, i8*, ...) @fprintf(i32* %346, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %355)
  store i32 %356, i32* %13, align 4
  %357 = load i32, i32* %10, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %345
  %360 = load i32, i32* %19, align 4
  %361 = add nsw i32 %360, 2
  %362 = load i32, i32* %8, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %378

364:                                              ; preds = %359, %345
  %365 = load i32, i32* %13, align 4
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %364
  %368 = load i32, i32* %13, align 4
  %369 = icmp slt i32 %368, 11
  br i1 %369, label %370, label %375

370:                                              ; preds = %367
  %371 = load i32*, i32** %7, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sub nsw i32 11, %372
  %374 = call i32 @indent(i32* %371, i32 %373)
  br label %375

375:                                              ; preds = %370, %367, %364
  %376 = load i32*, i32** %7, align 8
  %377 = call i32 (i32*, i8*, ...) @fprintf(i32* %376, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %378

378:                                              ; preds = %375, %359
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %392

381:                                              ; preds = %378
  %382 = load i32*, i32** %7, align 8
  %383 = call i32 (i32*, i8*, ...) @fprintf(i32* %382, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %384 = load i32*, i32** %7, align 8
  %385 = load i8*, i8** %9, align 8
  %386 = load i32, i32* %19, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %385, i64 %387
  %389 = call i32 @ascii_print(i32* %384, i8* %388, i32 2)
  %390 = load i32*, i32** %7, align 8
  %391 = call i32 (i32*, i8*, ...) @fprintf(i32* %390, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %392

392:                                              ; preds = %381, %378
  %393 = load i32*, i32** %7, align 8
  %394 = call i32 (i32*, i8*, ...) @fprintf(i32* %393, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %395 = load i32, i32* %19, align 4
  %396 = add nsw i32 %395, 2
  store i32 %396, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %397

397:                                              ; preds = %392, %334
  %398 = load i32, i32* %19, align 4
  %399 = load i32, i32* %8, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %426

401:                                              ; preds = %397
  %402 = load i32, i32* %21, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %401
  %405 = load i32*, i32** %7, align 8
  %406 = call i32 @indent(i32* %405, i32 2)
  br label %407

407:                                              ; preds = %404, %401
  %408 = load i32*, i32** %7, align 8
  %409 = call i32 (i32*, i8*, ...) @fprintf(i32* %408, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %410 = load i32*, i32** %7, align 8
  %411 = load i8*, i8** %9, align 8
  %412 = load i32, i32* %19, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = call i32 @ascii_print(i32* %410, i8* %414, i32 1)
  %416 = load i32*, i32** %7, align 8
  %417 = call i32 (i32*, i8*, ...) @fprintf(i32* %416, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %418 = load i32, i32* %10, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %407
  %421 = load i32*, i32** %7, align 8
  %422 = call i32 (i32*, i8*, ...) @fprintf(i32* %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %423

423:                                              ; preds = %420, %407
  %424 = load i32*, i32** %7, align 8
  %425 = call i32 (i32*, i8*, ...) @fprintf(i32* %424, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %426

426:                                              ; preds = %423, %397
  br label %427

427:                                              ; preds = %426, %226
  %428 = load i32, i32* %11, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = load i32*, i32** %7, align 8
  %432 = call i32 (i32*, i8*, ...) @fprintf(i32* %431, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %433

433:                                              ; preds = %128, %224, %430, %427
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @test_rc_datablock_text(i32, i8*) #1

declare dso_local i32 @indent(i32*, i32) #1

declare dso_local i32 @ascii_print(i32*, i8*, i32) #1

declare dso_local i64 @test_rc_datablock_unicode(i32, i8*) #1

declare dso_local i32 @unicode_print(i32*, i8*, i32) #1

declare dso_local i64 @windres_get_32(i32*, i8*, i32) #1

declare dso_local i64 @windres_get_16(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
