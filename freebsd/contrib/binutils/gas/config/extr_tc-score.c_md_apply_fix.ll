; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_apply_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_apply_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32*, i64 }
%struct.TYPE_5__ = type { i8*, i32 }

@BFD_RELOC_UNUSED = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c" branch relocation truncate (0x%x) [-2^8 ~ 2^8]\00", align 1
@INSN16_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c" branch relocation truncate (0x%x) [-2^19 ~ 2^19]\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c" branch relocation truncate (0x%x)  [-2^8 ~ 2^8]\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bad relocation fixup type (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_apply_fix(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %13, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 10
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 134
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %37, %3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 9
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @S_IS_DEFINED(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @S_GET_SEGMENT(i32* %70)
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = call i64 @md_pcrel_from(%struct.TYPE_6__* %75)
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %74, %67, %61, %56
  br label %82

82:                                               ; preds = %81, %51
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %549 [
    i32 142, label %89
    i32 141, label %119
    i32 130, label %149
    i32 136, label %169
    i32 137, label %292
    i32 138, label %311
    i32 144, label %454
    i32 146, label %469
    i32 139, label %484
    i32 145, label %484
    i32 128, label %499
    i32 129, label %524
    i32 131, label %527
    i32 133, label %547
    i32 134, label %547
    i32 132, label %547
    i32 135, label %547
    i32 143, label %547
    i32 140, label %548
  ]

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* @INSN_SIZE, align 4
  %97 = call i32 @md_chars_to_number(i8* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 16
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %11, align 2
  %101 = load i16, i16* %11, align 2
  %102 = zext i16 %101 to i32
  %103 = and i32 %102, 16383
  %104 = shl i32 %103, 1
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i16, i16* %11, align 2
  %108 = zext i16 %107 to i32
  %109 = ashr i32 %108, 14
  %110 = and i32 %109, 3
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @INSN_SIZE, align 4
  %117 = call i32 @md_number_to_chars(i8* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %94, %89
  br label %561

119:                                              ; preds = %82
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load i8*, i8** %13, align 8
  %126 = load i32, i32* @INSN_SIZE, align 4
  %127 = call i32 @md_chars_to_number(i8* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, 65535
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %12, align 2
  %131 = load i16, i16* %12, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 16383
  %134 = shl i32 %133, 1
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load i16, i16* %12, align 2
  %138 = zext i16 %137 to i32
  %139 = ashr i32 %138, 14
  %140 = and i32 %139, 3
  %141 = shl i32 %140, 16
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i8*, i8** %13, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @INSN_SIZE, align 4
  %147 = call i32 @md_number_to_chars(i8* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %124, %119
  br label %561

149:                                              ; preds = %82
  %150 = load i8*, i8** %13, align 8
  %151 = load i32, i32* @INSN_SIZE, align 4
  %152 = call i32 @md_chars_to_number(i8* %150, i32 %151)
  store i32 %152, i32* %10, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, -67076095
  %158 = load i32, i32* %7, align 4
  %159 = shl i32 %158, 1
  %160 = and i32 %159, 67043328
  %161 = or i32 %157, %160
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, 32767
  %164 = or i32 %161, %163
  store i32 %164, i32* %10, align 4
  %165 = load i8*, i8** %13, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @INSN_SIZE, align 4
  %168 = call i32 @md_number_to_chars(i8* %165, i32 %166, i32 %167)
  br label %561

169:                                              ; preds = %82
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 9
  %172 = load i32*, i32** %171, align 8
  %173 = call i64 @S_GET_SEGMENT(i32* %172)
  %174 = load i64, i64* %6, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %187, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 9
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 9
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @S_IS_EXTERNAL(i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181, %169
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %7, align 4
  br label %194

191:                                              ; preds = %181, %176
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  store i32 1, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %187
  %195 = load i8*, i8** %13, align 8
  %196 = load i32, i32* @INSN_SIZE, align 4
  %197 = call i32 @md_chars_to_number(i8* %195, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %194
  %205 = load i32, i32* %10, align 4
  %206 = and i32 %205, -2147450880
  %207 = icmp ne i32 %206, -2147450880
  br i1 %207, label %208, label %250

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = and i32 %209, -2147483648
  %211 = icmp eq i32 %210, -2147483648
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load i32, i32* %7, align 4
  %214 = sub i32 -1, %213
  %215 = add i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %212, %208
  %217 = load i32, i32* %8, align 4
  %218 = and i32 %217, -256
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @as_bad_where(i32 %223, i32 %226, i32 %227, i32 %228)
  br label %561

230:                                              ; preds = %216
  %231 = load i8*, i8** %13, align 8
  %232 = load i32, i32* @INSN16_SIZE, align 4
  %233 = call i32 @md_chars_to_number(i8* %231, i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = and i32 %234, 65280
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = and i32 %236, 65280
  %238 = load i32, i32* %7, align 4
  %239 = ashr i32 %238, 1
  %240 = and i32 %239, 255
  %241 = or i32 %237, %240
  store i32 %241, i32* %10, align 4
  %242 = load i8*, i8** %13, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* @INSN16_SIZE, align 4
  %245 = call i32 @md_number_to_chars(i8* %242, i32 %243, i32 %244)
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  store i32 138, i32* %247, align 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 5
  store i32 2, i32* %249, align 4
  br label %291

250:                                              ; preds = %204, %194
  %251 = load i32, i32* %7, align 4
  %252 = and i32 %251, -2147483648
  %253 = icmp eq i32 %252, -2147483648
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i32, i32* %7, align 4
  %256 = sub i32 -1, %255
  %257 = add i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %254, %250
  %259 = load i32, i32* %8, align 4
  %260 = and i32 %259, -524288
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @as_bad_where(i32 %265, i32 %268, i32 %269, i32 %270)
  br label %561

272:                                              ; preds = %258
  %273 = load i8*, i8** %13, align 8
  %274 = load i32, i32* @INSN_SIZE, align 4
  %275 = call i32 @md_chars_to_number(i8* %273, i32 %274)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = and i32 %276, -67044351
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = and i32 %278, -67044351
  %280 = load i32, i32* %7, align 4
  %281 = and i32 %280, 1022
  %282 = or i32 %279, %281
  %283 = load i32, i32* %7, align 4
  %284 = shl i32 %283, 6
  %285 = and i32 %284, 67043328
  %286 = or i32 %282, %285
  store i32 %286, i32* %10, align 4
  %287 = load i8*, i8** %13, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* @INSN_SIZE, align 4
  %290 = call i32 @md_number_to_chars(i8* %287, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %272, %230
  br label %561

292:                                              ; preds = %82
  %293 = load i8*, i8** %13, align 8
  %294 = load i32, i32* @INSN16_SIZE, align 4
  %295 = call i32 @md_chars_to_number(i8* %293, i32 %294)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %10, align 4
  %297 = and i32 %296, 61441
  store i32 %297, i32* %10, align 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, 4095
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* %10, align 4
  %303 = and i32 %302, 64513
  %304 = load i32, i32* %7, align 4
  %305 = and i32 %304, 4094
  %306 = or i32 %303, %305
  store i32 %306, i32* %10, align 4
  %307 = load i8*, i8** %13, align 8
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @INSN16_SIZE, align 4
  %310 = call i32 @md_number_to_chars(i8* %307, i32 %308, i32 %309)
  br label %561

311:                                              ; preds = %82
  %312 = load i8*, i8** %13, align 8
  %313 = load i32, i32* @INSN_SIZE, align 4
  %314 = call i32 @md_chars_to_number(i8* %312, i32 %313)
  store i32 %314, i32* %10, align 4
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 8
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %393

321:                                              ; preds = %311
  %322 = load i32, i32* %10, align 4
  %323 = and i32 %322, -2147450880
  %324 = icmp eq i32 %323, -2147450880
  br i1 %324, label %325, label %393

325:                                              ; preds = %321
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 9
  %328 = load i32*, i32** %327, align 8
  %329 = call i64 @S_GET_SEGMENT(i32* %328)
  %330 = load i64, i64* %6, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %343, label %332

332:                                              ; preds = %325
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 9
  %335 = load i32*, i32** %334, align 8
  %336 = icmp ne i32* %335, null
  br i1 %336, label %337, label %347

337:                                              ; preds = %332
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 9
  %340 = load i32*, i32** %339, align 8
  %341 = call i32 @S_IS_EXTERNAL(i32* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %337, %325
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  store i32 %346, i32* %7, align 4
  br label %350

347:                                              ; preds = %337, %332
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 2
  store i32 1, i32* %349, align 8
  br label %350

350:                                              ; preds = %347, %343
  %351 = load i32, i32* %7, align 4
  %352 = and i32 %351, -2147483648
  %353 = icmp eq i32 %352, -2147483648
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = load i32, i32* %7, align 4
  %356 = sub i32 -1, %355
  %357 = add i32 %356, 1
  store i32 %357, i32* %8, align 4
  br label %358

358:                                              ; preds = %354, %350
  %359 = load i32, i32* %8, align 4
  %360 = and i32 %359, -524288
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %372

362:                                              ; preds = %358
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %370 = load i32, i32* %7, align 4
  %371 = call i32 @as_bad_where(i32 %365, i32 %368, i32 %369, i32 %370)
  br label %561

372:                                              ; preds = %358
  %373 = load i8*, i8** %13, align 8
  %374 = load i32, i32* @INSN_SIZE, align 4
  %375 = call i32 @md_chars_to_number(i8* %373, i32 %374)
  store i32 %375, i32* %10, align 4
  %376 = load i32, i32* %10, align 4
  %377 = and i32 %376, -67044351
  %378 = load i32, i32* %7, align 4
  %379 = and i32 %378, 1022
  %380 = or i32 %377, %379
  %381 = load i32, i32* %7, align 4
  %382 = shl i32 %381, 6
  %383 = and i32 %382, 67043328
  %384 = or i32 %380, %383
  store i32 %384, i32* %10, align 4
  %385 = load i8*, i8** %13, align 8
  %386 = load i32, i32* %10, align 4
  %387 = load i32, i32* @INSN_SIZE, align 4
  %388 = call i32 @md_number_to_chars(i8* %385, i32 %386, i32 %387)
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 1
  store i32 136, i32* %390, align 4
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 5
  store i32 4, i32* %392, align 4
  br label %561

393:                                              ; preds = %321, %311
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 9
  %396 = load i32*, i32** %395, align 8
  %397 = call i64 @S_GET_SEGMENT(i32* %396)
  %398 = load i64, i64* %6, align 8
  %399 = icmp ne i64 %397, %398
  br i1 %399, label %411, label %400

400:                                              ; preds = %393
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 9
  %403 = load i32*, i32** %402, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %415

405:                                              ; preds = %400
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 9
  %408 = load i32*, i32** %407, align 8
  %409 = call i32 @S_IS_EXTERNAL(i32* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %405, %393
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  store i32 %414, i32* %7, align 4
  br label %418

415:                                              ; preds = %405, %400
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 2
  store i32 1, i32* %417, align 8
  br label %418

418:                                              ; preds = %415, %411
  %419 = load i32, i32* %7, align 4
  %420 = and i32 %419, -2147483648
  %421 = icmp eq i32 %420, -2147483648
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  %423 = load i32, i32* %7, align 4
  %424 = sub i32 -1, %423
  %425 = add i32 %424, 1
  store i32 %425, i32* %8, align 4
  br label %426

426:                                              ; preds = %422, %418
  %427 = load i32, i32* %8, align 4
  %428 = and i32 %427, -256
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %440

430:                                              ; preds = %426
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 7
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %438 = load i32, i32* %7, align 4
  %439 = call i32 @as_bad_where(i32 %433, i32 %436, i32 %437, i32 %438)
  br label %561

440:                                              ; preds = %426
  %441 = load i8*, i8** %13, align 8
  %442 = load i32, i32* @INSN16_SIZE, align 4
  %443 = call i32 @md_chars_to_number(i8* %441, i32 %442)
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %10, align 4
  %445 = and i32 %444, 65280
  %446 = load i32, i32* %7, align 4
  %447 = ashr i32 %446, 1
  %448 = and i32 %447, 255
  %449 = or i32 %445, %448
  store i32 %449, i32* %10, align 4
  %450 = load i8*, i8** %13, align 8
  %451 = load i32, i32* %10, align 4
  %452 = load i32, i32* @INSN16_SIZE, align 4
  %453 = call i32 @md_number_to_chars(i8* %450, i32 %451, i32 %452)
  br label %561

454:                                              ; preds = %82
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %464, label %459

459:                                              ; preds = %454
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 10
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %459, %454
  %465 = load i8*, i8** %13, align 8
  %466 = load i32, i32* %7, align 4
  %467 = call i32 @md_number_to_chars(i8* %465, i32 %466, i32 1)
  br label %468

468:                                              ; preds = %464, %459
  br label %561

469:                                              ; preds = %82
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %469
  %475 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %475, i32 0, i32 10
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %474, %469
  %480 = load i8*, i8** %13, align 8
  %481 = load i32, i32* %7, align 4
  %482 = call i32 @md_number_to_chars(i8* %480, i32 %481, i32 2)
  br label %483

483:                                              ; preds = %479, %474
  br label %561

484:                                              ; preds = %82, %82
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %484
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 10
  %492 = load i64, i64* %491, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %489, %484
  %495 = load i8*, i8** %13, align 8
  %496 = load i32, i32* %7, align 4
  %497 = call i32 @md_number_to_chars(i8* %495, i32 %496, i32 4)
  br label %498

498:                                              ; preds = %494, %489
  br label %561

499:                                              ; preds = %82
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 2
  store i32 0, i32* %501, align 8
  %502 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 9
  %504 = load i32*, i32** %503, align 8
  %505 = icmp ne i32* %504, null
  br i1 %505, label %506, label %523

506:                                              ; preds = %499
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 9
  %509 = load i32*, i32** %508, align 8
  %510 = call i64 @S_IS_DEFINED(i32* %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %523, label %512

512:                                              ; preds = %506
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 9
  %515 = load i32*, i32** %514, align 8
  %516 = call i32 @S_IS_WEAK(i32* %515)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %512
  %519 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 9
  %521 = load i32*, i32** %520, align 8
  %522 = call i32 @S_SET_WEAK(i32* %521)
  br label %523

523:                                              ; preds = %518, %512, %506, %499
  br label %561

524:                                              ; preds = %82
  %525 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 2
  store i32 0, i32* %526, align 8
  br label %561

527:                                              ; preds = %82
  %528 = load i8*, i8** %13, align 8
  %529 = load i32, i32* @INSN_SIZE, align 4
  %530 = call i32 @md_chars_to_number(i8* %528, i32 %529)
  store i32 %530, i32* %10, align 4
  %531 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %531, i32 0, i32 8
  %533 = load %struct.TYPE_5__*, %struct.TYPE_5__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %544

537:                                              ; preds = %527
  %538 = load i32, i32* %10, align 4
  %539 = and i32 %538, -65241088
  %540 = icmp ne i32 %539, -1810333696
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 1
  store i32 140, i32* %543, align 4
  br label %544

544:                                              ; preds = %541, %537, %527
  %545 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 2
  store i32 0, i32* %546, align 8
  br label %561

547:                                              ; preds = %82, %82, %82, %82, %82
  br label %561

548:                                              ; preds = %82
  br label %549

549:                                              ; preds = %82, %548
  %550 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 7
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 6
  %555 = load i32, i32* %554, align 8
  %556 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %557 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @as_bad_where(i32 %552, i32 %555, i32 %556, i32 %559)
  br label %561

561:                                              ; preds = %220, %262, %362, %430, %549, %547, %544, %524, %523, %498, %483, %468, %440, %372, %292, %291, %149, %148, %118
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i64 @md_pcrel_from(%struct.TYPE_6__*) #1

declare dso_local i32 @md_chars_to_number(i8*, i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @S_IS_EXTERNAL(i32*) #1

declare dso_local i32 @as_bad_where(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @S_IS_WEAK(i32*) #1

declare dso_local i32 @S_SET_WEAK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
