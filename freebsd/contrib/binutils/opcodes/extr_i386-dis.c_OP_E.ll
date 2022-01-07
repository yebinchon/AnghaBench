; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_E.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@REX_B = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@MODRM_CHECK = common dso_local global i32 0, align 4
@codep = common dso_local global i32* null, align 8
@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@names8rex = common dso_local global i8** null, align 8
@names8 = common dso_local global i8** null, align 8
@names16 = common dso_local global i8** null, align 8
@names32 = common dso_local global i8** null, align 8
@names64 = common dso_local global i8** null, align 8
@address_mode = common dso_local global i64 0, align 8
@mode_64bit = common dso_local global i64 0, align 8
@DFLAG = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@REX_W = common dso_local global i32 0, align 4
@INTERNAL_DISASSEMBLER_ERROR = common dso_local global i8* null, align 8
@intel_syntax = common dso_local global i64 0, align 8
@AFLAG = common dso_local global i32 0, align 4
@the_info = common dso_local global i32 0, align 4
@REX_X = common dso_local global i32 0, align 4
@scratchbuf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"(%rip)\00", align 1
@open_char = common dso_local global i8* null, align 8
@obufp = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@separator_char = common dso_local global i32 0, align 4
@scale_char = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@close_char = common dso_local global i8* null, align 8
@PREFIX_CS = common dso_local global i32 0, align 4
@PREFIX_SS = common dso_local global i32 0, align 4
@PREFIX_DS = common dso_local global i32 0, align 4
@PREFIX_ES = common dso_local global i32 0, align 4
@PREFIX_FS = common dso_local global i32 0, align 4
@PREFIX_GS = common dso_local global i32 0, align 4
@names_seg = common dso_local global i8** null, align 8
@ds_reg = common dso_local global i64 0, align 8
@es_reg = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@index16 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_E(i32 %0, i32 %1) #0 {
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
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @REX_B, align 4
  %15 = call i32 @USED_REX(i32 %14)
  %16 = load i32, i32* @rex, align 4
  %17 = load i32, i32* @REX_B, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @MODRM_CHECK, align 4
  %25 = load i32*, i32** @codep, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** @codep, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %182

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %178 [
    i32 138, label %31
    i32 128, label %54
    i32 137, label %63
    i32 131, label %72
    i32 132, label %81
    i32 130, label %104
    i32 129, label %128
    i32 136, label %128
    i32 135, label %128
    i32 134, label %128
    i32 133, label %128
    i32 0, label %177
  ]

31:                                               ; preds = %29
  %32 = call i32 @USED_REX(i32 0)
  %33 = load i32, i32* @rex, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8**, i8*** @names8rex, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @oappend(i8* %42)
  br label %53

44:                                               ; preds = %31
  %45 = load i8**, i8*** @names8, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %45, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @oappend(i8* %51)
  br label %53

53:                                               ; preds = %44, %35
  br label %181

54:                                               ; preds = %29
  %55 = load i8**, i8*** @names16, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %55, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @oappend(i8* %61)
  br label %181

63:                                               ; preds = %29
  %64 = load i8**, i8*** @names32, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @oappend(i8* %70)
  br label %181

72:                                               ; preds = %29
  %73 = load i8**, i8*** @names64, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %73, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @oappend(i8* %79)
  br label %181

81:                                               ; preds = %29
  %82 = load i64, i64* @address_mode, align 8
  %83 = load i64, i64* @mode_64bit, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i8**, i8*** @names64, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %86, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @oappend(i8* %92)
  br label %103

94:                                               ; preds = %81
  %95 = load i8**, i8*** @names32, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %95, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @oappend(i8* %101)
  br label %103

103:                                              ; preds = %94, %85
  br label %181

104:                                              ; preds = %29
  %105 = load i64, i64* @address_mode, align 8
  %106 = load i64, i64* @mode_64bit, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @DFLAG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load i8**, i8*** @names64, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %114, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @oappend(i8* %120)
  %122 = load i32, i32* @prefixes, align 4
  %123 = load i32, i32* @PREFIX_DATA, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @used_prefixes, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* @used_prefixes, align 4
  br label %181

127:                                              ; preds = %108, %104
  store i32 129, i32* %3, align 4
  br label %128

128:                                              ; preds = %29, %29, %29, %29, %29, %127
  %129 = load i32, i32* @REX_W, align 4
  %130 = call i32 @USED_REX(i32 %129)
  %131 = load i32, i32* @rex, align 4
  %132 = load i32, i32* @REX_W, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i8**, i8*** @names64, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %136, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @oappend(i8* %142)
  br label %171

144:                                              ; preds = %128
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @DFLAG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 129
  br i1 %151, label %152, label %161

152:                                              ; preds = %149, %144
  %153 = load i8**, i8*** @names32, align 8
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %153, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @oappend(i8* %159)
  br label %170

161:                                              ; preds = %149
  %162 = load i8**, i8*** @names16, align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %162, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @oappend(i8* %168)
  br label %170

170:                                              ; preds = %161, %152
  br label %171

171:                                              ; preds = %170, %135
  %172 = load i32, i32* @prefixes, align 4
  %173 = load i32, i32* @PREFIX_DATA, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @used_prefixes, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* @used_prefixes, align 4
  br label %181

177:                                              ; preds = %29
  br label %181

178:                                              ; preds = %29
  %179 = load i8*, i8** @INTERNAL_DISASSEMBLER_ERROR, align 8
  %180 = call i32 @oappend(i8* %179)
  br label %181

181:                                              ; preds = %178, %177, %171, %113, %103, %72, %63, %54, %53
  br label %686

182:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  %183 = load i64, i64* @intel_syntax, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @intel_operand_size(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %182
  %190 = call i32 (...) @append_seg()
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @AFLAG, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %189
  %196 = load i64, i64* @address_mode, align 8
  %197 = load i64, i64* @mode_64bit, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %533

199:                                              ; preds = %195, %189
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %203, label %239

203:                                              ; preds = %199
  store i32 1, i32* %9, align 4
  %204 = load i32, i32* @the_info, align 4
  %205 = load i32*, i32** @codep, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = call i32 @FETCH_DATA(i32 %204, i32* %206)
  %208 = load i32*, i32** @codep, align 8
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 3
  %211 = and i32 %210, 7
  store i32 %211, i32* %12, align 4
  %212 = load i64, i64* @address_mode, align 8
  %213 = load i64, i64* @mode_64bit, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %203
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 4
  br i1 %217, label %218, label %223

218:                                              ; preds = %215, %203
  %219 = load i32*, i32** @codep, align 8
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 6
  %222 = and i32 %221, 3
  store i32 %222, i32* %13, align 4
  br label %223

223:                                              ; preds = %218, %215
  %224 = load i32*, i32** @codep, align 8
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 7
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* @REX_X, align 4
  %228 = call i32 @USED_REX(i32 %227)
  %229 = load i32, i32* @rex, align 4
  %230 = load i32, i32* @REX_X, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %223
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 8
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %233, %223
  %237 = load i32*, i32** @codep, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** @codep, align 8
  br label %239

239:                                              ; preds = %236, %199
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  switch i32 %243, label %276 [
    i32 0, label %244
    i32 1, label %259
    i32 2, label %274
  ]

244:                                              ; preds = %239
  %245 = load i32, i32* %11, align 4
  %246 = and i32 %245, 7
  %247 = icmp eq i32 %246, 5
  br i1 %247, label %248, label %258

248:                                              ; preds = %244
  store i32 0, i32* %10, align 4
  %249 = load i64, i64* @address_mode, align 8
  %250 = load i64, i64* @mode_64bit, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  store i32 1, i32* %7, align 4
  br label %256

256:                                              ; preds = %255, %252, %248
  %257 = call i32 (...) @get32s()
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %256, %244
  br label %276

259:                                              ; preds = %239
  %260 = load i32, i32* @the_info, align 4
  %261 = load i32*, i32** @codep, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = call i32 @FETCH_DATA(i32 %260, i32* %262)
  %264 = load i32*, i32** @codep, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** @codep, align 8
  %266 = load i32, i32* %264, align 4
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = and i32 %267, 128
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %259
  %271 = load i32, i32* %5, align 4
  %272 = sub nsw i32 %271, 256
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %270, %259
  br label %276

274:                                              ; preds = %239
  %275 = call i32 (...) @get32s()
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %239, %274, %273, %258
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %9, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %279
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 4
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %13, align 4
  %287 = icmp ne i32 %286, 0
  br label %288

288:                                              ; preds = %285, %282
  %289 = phi i1 [ true, %282 ], [ %287, %285 ]
  br label %290

290:                                              ; preds = %288, %279
  %291 = phi i1 [ false, %279 ], [ %289, %288 ]
  br label %292

292:                                              ; preds = %290, %276
  %293 = phi i1 [ true, %276 ], [ %291, %290 ]
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %8, align 4
  %295 = load i64, i64* @intel_syntax, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %329, label %297

297:                                              ; preds = %292
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %11, align 4
  %302 = and i32 %301, 7
  %303 = icmp eq i32 %302, 5
  br i1 %303, label %304, label %328

304:                                              ; preds = %300, %297
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307, %304
  %311 = load i8*, i8** @scratchbuf, align 8
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @print_displacement(i8* %311, i32 %312)
  br label %318

314:                                              ; preds = %307
  %315 = load i8*, i8** @scratchbuf, align 8
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @print_operand_value(i8* %315, i32 1, i32 %316)
  br label %318

318:                                              ; preds = %314, %310
  %319 = load i8*, i8** @scratchbuf, align 8
  %320 = call i32 @oappend(i8* %319)
  %321 = load i32, i32* %7, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @set_op(i32 %324, i32 1)
  %326 = call i32 @oappend(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %327

327:                                              ; preds = %323, %318
  br label %328

328:                                              ; preds = %327, %300
  br label %329

329:                                              ; preds = %328, %292
  %330 = load i32, i32* %8, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %329
  %333 = load i64, i64* @intel_syntax, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %489

335:                                              ; preds = %332
  %336 = load i32, i32* %7, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %489

338:                                              ; preds = %335, %329
  %339 = load i8*, i8** @open_char, align 8
  %340 = ptrtoint i8* %339 to i8
  %341 = load i8*, i8** @obufp, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** @obufp, align 8
  store i8 %340, i8* %341, align 1
  %343 = load i64, i64* @intel_syntax, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %338
  %346 = load i32, i32* %7, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %345
  %349 = load i32, i32* %5, align 4
  %350 = call i32 @set_op(i32 %349, i32 1)
  %351 = call i32 @oappend(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %352

352:                                              ; preds = %348, %345, %338
  %353 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %353, align 1
  %354 = load i32, i32* %10, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %380

356:                                              ; preds = %352
  %357 = load i64, i64* @address_mode, align 8
  %358 = load i64, i64* @mode_64bit, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %371

360:                                              ; preds = %356
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @AFLAG, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %360
  %366 = load i8**, i8*** @names64, align 8
  %367 = load i32, i32* %11, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8*, i8** %366, i64 %368
  %370 = load i8*, i8** %369, align 8
  br label %377

371:                                              ; preds = %360, %356
  %372 = load i8**, i8*** @names32, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  %376 = load i8*, i8** %375, align 8
  br label %377

377:                                              ; preds = %371, %365
  %378 = phi i8* [ %370, %365 ], [ %376, %371 ]
  %379 = call i32 @oappend(i8* %378)
  br label %380

380:                                              ; preds = %377, %352
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %444

383:                                              ; preds = %380
  %384 = load i32, i32* %12, align 4
  %385 = icmp ne i32 %384, 4
  br i1 %385, label %386, label %422

386:                                              ; preds = %383
  %387 = load i64, i64* @intel_syntax, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32, i32* %10, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %389, %386
  %393 = load i32, i32* @separator_char, align 4
  %394 = trunc i32 %393 to i8
  %395 = load i8*, i8** @obufp, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** @obufp, align 8
  store i8 %394, i8* %395, align 1
  %397 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %397, align 1
  br label %398

398:                                              ; preds = %392, %389
  %399 = load i64, i64* @address_mode, align 8
  %400 = load i64, i64* @mode_64bit, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %413

402:                                              ; preds = %398
  %403 = load i32, i32* %4, align 4
  %404 = load i32, i32* @AFLAG, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %402
  %408 = load i8**, i8*** @names64, align 8
  %409 = load i32, i32* %12, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %408, i64 %410
  %412 = load i8*, i8** %411, align 8
  br label %419

413:                                              ; preds = %402, %398
  %414 = load i8**, i8*** @names32, align 8
  %415 = load i32, i32* %12, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8*, i8** %414, i64 %416
  %418 = load i8*, i8** %417, align 8
  br label %419

419:                                              ; preds = %413, %407
  %420 = phi i8* [ %412, %407 ], [ %418, %413 ]
  %421 = call i32 @oappend(i8* %420)
  br label %422

422:                                              ; preds = %419, %383
  %423 = load i32, i32* %13, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %431, label %425

425:                                              ; preds = %422
  %426 = load i64, i64* @intel_syntax, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %443, label %428

428:                                              ; preds = %425
  %429 = load i32, i32* %12, align 4
  %430 = icmp ne i32 %429, 4
  br i1 %430, label %431, label %443

431:                                              ; preds = %428, %422
  %432 = load i32, i32* @scale_char, align 4
  %433 = trunc i32 %432 to i8
  %434 = load i8*, i8** @obufp, align 8
  %435 = getelementptr inbounds i8, i8* %434, i32 1
  store i8* %435, i8** @obufp, align 8
  store i8 %433, i8* %434, align 1
  %436 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %436, align 1
  %437 = load i8*, i8** @scratchbuf, align 8
  %438 = load i32, i32* %13, align 4
  %439 = shl i32 1, %438
  %440 = call i32 @sprintf(i8* %437, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %439)
  %441 = load i8*, i8** @scratchbuf, align 8
  %442 = call i32 @oappend(i8* %441)
  br label %443

443:                                              ; preds = %431, %428, %425
  br label %444

444:                                              ; preds = %443, %380
  %445 = load i64, i64* @intel_syntax, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %483

447:                                              ; preds = %444
  %448 = load i32, i32* %5, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %457, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %11, align 4
  %455 = and i32 %454, 7
  %456 = icmp eq i32 %455, 5
  br i1 %456, label %457, label %483

457:                                              ; preds = %453, %450, %447
  %458 = load i32, i32* %5, align 4
  %459 = sext i32 %458 to i64
  %460 = icmp sge i64 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %457
  %462 = load i8*, i8** @obufp, align 8
  %463 = getelementptr inbounds i8, i8* %462, i32 1
  store i8* %463, i8** @obufp, align 8
  store i8 43, i8* %462, align 1
  %464 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %464, align 1
  br label %477

465:                                              ; preds = %457
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %467 = icmp ne i32 %466, 1
  br i1 %467, label %468, label %476

468:                                              ; preds = %465
  %469 = load i8*, i8** @obufp, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** @obufp, align 8
  store i8 45, i8* %469, align 1
  %471 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %471, align 1
  %472 = load i32, i32* %5, align 4
  %473 = sext i32 %472 to i64
  %474 = sub nsw i64 0, %473
  %475 = trunc i64 %474 to i32
  store i32 %475, i32* %5, align 4
  br label %476

476:                                              ; preds = %468, %465
  br label %477

477:                                              ; preds = %476, %461
  %478 = load i8*, i8** @scratchbuf, align 8
  %479 = load i32, i32* %5, align 4
  %480 = call i32 @print_displacement(i8* %478, i32 %479)
  %481 = load i8*, i8** @scratchbuf, align 8
  %482 = call i32 @oappend(i8* %481)
  br label %483

483:                                              ; preds = %477, %453, %444
  %484 = load i8*, i8** @close_char, align 8
  %485 = ptrtoint i8* %484 to i8
  %486 = load i8*, i8** @obufp, align 8
  %487 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %487, i8** @obufp, align 8
  store i8 %485, i8* %486, align 1
  %488 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %488, align 1
  br label %532

489:                                              ; preds = %335, %332
  %490 = load i64, i64* @intel_syntax, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %531

492:                                              ; preds = %489
  %493 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %492
  %496 = load i32, i32* %11, align 4
  %497 = and i32 %496, 7
  %498 = icmp eq i32 %497, 5
  br i1 %498, label %499, label %530

499:                                              ; preds = %495, %492
  %500 = load i32, i32* @prefixes, align 4
  %501 = load i32, i32* @PREFIX_CS, align 4
  %502 = load i32, i32* @PREFIX_SS, align 4
  %503 = or i32 %501, %502
  %504 = load i32, i32* @PREFIX_DS, align 4
  %505 = or i32 %503, %504
  %506 = load i32, i32* @PREFIX_ES, align 4
  %507 = or i32 %505, %506
  %508 = load i32, i32* @PREFIX_FS, align 4
  %509 = or i32 %507, %508
  %510 = load i32, i32* @PREFIX_GS, align 4
  %511 = or i32 %509, %510
  %512 = and i32 %500, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %499
  br label %524

515:                                              ; preds = %499
  %516 = load i8**, i8*** @names_seg, align 8
  %517 = load i64, i64* @ds_reg, align 8
  %518 = load i64, i64* @es_reg, align 8
  %519 = sub i64 %517, %518
  %520 = getelementptr inbounds i8*, i8** %516, i64 %519
  %521 = load i8*, i8** %520, align 8
  %522 = call i32 @oappend(i8* %521)
  %523 = call i32 @oappend(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %524

524:                                              ; preds = %515, %514
  %525 = load i8*, i8** @scratchbuf, align 8
  %526 = load i32, i32* %5, align 4
  %527 = call i32 @print_operand_value(i8* %525, i32 1, i32 %526)
  %528 = load i8*, i8** @scratchbuf, align 8
  %529 = call i32 @oappend(i8* %528)
  br label %530

530:                                              ; preds = %524, %495
  br label %531

531:                                              ; preds = %530, %489
  br label %532

532:                                              ; preds = %531, %483
  br label %686

533:                                              ; preds = %195
  %534 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  switch i32 %534, label %572 [
    i32 0, label %535
    i32 1, label %548
    i32 2, label %563
  ]

535:                                              ; preds = %533
  %536 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %537 = icmp eq i32 %536, 6
  br i1 %537, label %538, label %547

538:                                              ; preds = %535
  %539 = call i32 (...) @get16()
  store i32 %539, i32* %5, align 4
  %540 = load i32, i32* %5, align 4
  %541 = and i32 %540, 32768
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %538
  %544 = load i32, i32* %5, align 4
  %545 = sub nsw i32 %544, 65536
  store i32 %545, i32* %5, align 4
  br label %546

546:                                              ; preds = %543, %538
  br label %547

547:                                              ; preds = %546, %535
  br label %572

548:                                              ; preds = %533
  %549 = load i32, i32* @the_info, align 4
  %550 = load i32*, i32** @codep, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 1
  %552 = call i32 @FETCH_DATA(i32 %549, i32* %551)
  %553 = load i32*, i32** @codep, align 8
  %554 = getelementptr inbounds i32, i32* %553, i32 1
  store i32* %554, i32** @codep, align 8
  %555 = load i32, i32* %553, align 4
  store i32 %555, i32* %5, align 4
  %556 = load i32, i32* %5, align 4
  %557 = and i32 %556, 128
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %548
  %560 = load i32, i32* %5, align 4
  %561 = sub nsw i32 %560, 256
  store i32 %561, i32* %5, align 4
  br label %562

562:                                              ; preds = %559, %548
  br label %572

563:                                              ; preds = %533
  %564 = call i32 (...) @get16()
  store i32 %564, i32* %5, align 4
  %565 = load i32, i32* %5, align 4
  %566 = and i32 %565, 32768
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %563
  %569 = load i32, i32* %5, align 4
  %570 = sub nsw i32 %569, 65536
  store i32 %570, i32* %5, align 4
  br label %571

571:                                              ; preds = %568, %563
  br label %572

572:                                              ; preds = %533, %571, %562, %547
  %573 = load i64, i64* @intel_syntax, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %588, label %575

575:                                              ; preds = %572
  %576 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %581, label %578

578:                                              ; preds = %575
  %579 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %580 = icmp eq i32 %579, 6
  br i1 %580, label %581, label %587

581:                                              ; preds = %578, %575
  %582 = load i8*, i8** @scratchbuf, align 8
  %583 = load i32, i32* %5, align 4
  %584 = call i32 @print_displacement(i8* %582, i32 %583)
  %585 = load i8*, i8** @scratchbuf, align 8
  %586 = call i32 @oappend(i8* %585)
  br label %587

587:                                              ; preds = %581, %578
  br label %588

588:                                              ; preds = %587, %572
  %589 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %594, label %591

591:                                              ; preds = %588
  %592 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %593 = icmp ne i32 %592, 6
  br i1 %593, label %594, label %649

594:                                              ; preds = %591, %588
  %595 = load i8*, i8** @open_char, align 8
  %596 = ptrtoint i8* %595 to i8
  %597 = load i8*, i8** @obufp, align 8
  %598 = getelementptr inbounds i8, i8* %597, i32 1
  store i8* %598, i8** @obufp, align 8
  store i8 %596, i8* %597, align 1
  %599 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %599, align 1
  %600 = load i8**, i8*** @index16, align 8
  %601 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i8*, i8** %600, i64 %602
  %604 = load i8*, i8** %603, align 8
  %605 = call i32 @oappend(i8* %604)
  %606 = load i64, i64* @intel_syntax, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %643

608:                                              ; preds = %594
  %609 = load i32, i32* %5, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %617, label %611

611:                                              ; preds = %608
  %612 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %617, label %614

614:                                              ; preds = %611
  %615 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %616 = icmp eq i32 %615, 6
  br i1 %616, label %617, label %643

617:                                              ; preds = %614, %611, %608
  %618 = load i32, i32* %5, align 4
  %619 = sext i32 %618 to i64
  %620 = icmp sge i64 %619, 0
  br i1 %620, label %621, label %625

621:                                              ; preds = %617
  %622 = load i8*, i8** @obufp, align 8
  %623 = getelementptr inbounds i8, i8* %622, i32 1
  store i8* %623, i8** @obufp, align 8
  store i8 43, i8* %622, align 1
  %624 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %624, align 1
  br label %637

625:                                              ; preds = %617
  %626 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %627 = icmp ne i32 %626, 1
  br i1 %627, label %628, label %636

628:                                              ; preds = %625
  %629 = load i8*, i8** @obufp, align 8
  %630 = getelementptr inbounds i8, i8* %629, i32 1
  store i8* %630, i8** @obufp, align 8
  store i8 45, i8* %629, align 1
  %631 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %631, align 1
  %632 = load i32, i32* %5, align 4
  %633 = sext i32 %632 to i64
  %634 = sub nsw i64 0, %633
  %635 = trunc i64 %634 to i32
  store i32 %635, i32* %5, align 4
  br label %636

636:                                              ; preds = %628, %625
  br label %637

637:                                              ; preds = %636, %621
  %638 = load i8*, i8** @scratchbuf, align 8
  %639 = load i32, i32* %5, align 4
  %640 = call i32 @print_displacement(i8* %638, i32 %639)
  %641 = load i8*, i8** @scratchbuf, align 8
  %642 = call i32 @oappend(i8* %641)
  br label %643

643:                                              ; preds = %637, %614, %594
  %644 = load i8*, i8** @close_char, align 8
  %645 = ptrtoint i8* %644 to i8
  %646 = load i8*, i8** @obufp, align 8
  %647 = getelementptr inbounds i8, i8* %646, i32 1
  store i8* %647, i8** @obufp, align 8
  store i8 %645, i8* %646, align 1
  %648 = load i8*, i8** @obufp, align 8
  store i8 0, i8* %648, align 1
  br label %685

649:                                              ; preds = %591
  %650 = load i64, i64* @intel_syntax, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %684

652:                                              ; preds = %649
  %653 = load i32, i32* @prefixes, align 4
  %654 = load i32, i32* @PREFIX_CS, align 4
  %655 = load i32, i32* @PREFIX_SS, align 4
  %656 = or i32 %654, %655
  %657 = load i32, i32* @PREFIX_DS, align 4
  %658 = or i32 %656, %657
  %659 = load i32, i32* @PREFIX_ES, align 4
  %660 = or i32 %658, %659
  %661 = load i32, i32* @PREFIX_FS, align 4
  %662 = or i32 %660, %661
  %663 = load i32, i32* @PREFIX_GS, align 4
  %664 = or i32 %662, %663
  %665 = and i32 %653, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %652
  br label %677

668:                                              ; preds = %652
  %669 = load i8**, i8*** @names_seg, align 8
  %670 = load i64, i64* @ds_reg, align 8
  %671 = load i64, i64* @es_reg, align 8
  %672 = sub i64 %670, %671
  %673 = getelementptr inbounds i8*, i8** %669, i64 %672
  %674 = load i8*, i8** %673, align 8
  %675 = call i32 @oappend(i8* %674)
  %676 = call i32 @oappend(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %677

677:                                              ; preds = %668, %667
  %678 = load i8*, i8** @scratchbuf, align 8
  %679 = load i32, i32* %5, align 4
  %680 = and i32 %679, 65535
  %681 = call i32 @print_operand_value(i8* %678, i32 1, i32 %680)
  %682 = load i8*, i8** @scratchbuf, align 8
  %683 = call i32 @oappend(i8* %682)
  br label %684

684:                                              ; preds = %677, %649
  br label %685

685:                                              ; preds = %684, %643
  br label %686

686:                                              ; preds = %181, %685, %532
  ret void
}

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @oappend(i8*) #1

declare dso_local i32 @intel_operand_size(i32, i32) #1

declare dso_local i32 @append_seg(...) #1

declare dso_local i32 @FETCH_DATA(i32, i32*) #1

declare dso_local i32 @get32s(...) #1

declare dso_local i32 @print_displacement(i8*, i32) #1

declare dso_local i32 @print_operand_value(i8*, i32, i32) #1

declare dso_local i32 @set_op(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @get16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
