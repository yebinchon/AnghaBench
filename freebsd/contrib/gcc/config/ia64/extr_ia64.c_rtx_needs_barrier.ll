; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rtx_needs_barrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rtx_needs_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.reg_flags = type { i32, i32 }

@AR_EC_REGNUM = common dso_local global i64 0, align 8
@rws_insn = common dso_local global %struct.TYPE_2__* null, align 8
@REG_AR_CFM = common dso_local global i64 0, align 8
@REG_RP = common dso_local global i64 0, align 8
@AR_PFS_REGNUM = common dso_local global i64 0, align 8
@PR_REGS = common dso_local global i32 0, align 4
@TARGET_VOL_ASM_STOP = common dso_local global i32 0, align 4
@REG_VOLATILE = common dso_local global i64 0, align 8
@AR_UNAT_REGNUM = common dso_local global i32 0, align 4
@AR_UNAT_BIT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @rtx_needs_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtx_needs_barrier(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_flags, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.reg_flags, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.reg_flags* %5 to i64*
  store i64 %1, i64* %19, align 4
  store i32 %0, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %598

23:                                               ; preds = %3
  %24 = bitcast %struct.reg_flags* %13 to i8*
  %25 = bitcast %struct.reg_flags* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GET_CODE(i32 %26)
  switch i32 %27, label %535 [
    i32 183, label %28
    i32 226, label %51
    i32 223, label %94
    i32 225, label %143
    i32 131, label %143
    i32 227, label %144
    i32 228, label %144
    i32 193, label %192
    i32 178, label %282
    i32 187, label %291
    i32 200, label %322
    i32 220, label %330
    i32 221, label %330
    i32 219, label %330
    i32 177, label %330
    i32 206, label %330
    i32 222, label %330
    i32 189, label %331
    i32 190, label %331
    i32 188, label %354
    i32 224, label %385
    i32 192, label %385
    i32 199, label %385
    i32 197, label %385
    i32 218, label %385
    i32 198, label %385
    i32 175, label %385
    i32 172, label %385
    i32 231, label %385
    i32 207, label %385
    i32 129, label %385
    i32 230, label %385
    i32 185, label %385
    i32 229, label %385
    i32 203, label %385
    i32 184, label %385
    i32 180, label %385
    i32 181, label %385
    i32 173, label %385
    i32 174, label %385
    i32 196, label %385
    i32 217, label %385
    i32 211, label %385
    i32 209, label %385
    i32 205, label %385
    i32 202, label %385
    i32 210, label %385
    i32 208, label %385
    i32 204, label %385
    i32 201, label %385
    i32 195, label %400
    i32 194, label %400
    i32 182, label %400
    i32 128, label %400
    i32 176, label %400
    i32 213, label %400
    i32 212, label %400
    i32 214, label %400
    i32 215, label %400
    i32 170, label %400
    i32 171, label %400
    i32 232, label %400
    i32 179, label %400
    i32 216, label %400
    i32 191, label %400
    i32 130, label %407
    i32 169, label %414
    i32 132, label %486
    i32 186, label %506
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @update_set_flags(i32 %29, %struct.reg_flags* %13)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = bitcast %struct.reg_flags* %13 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i32 @set_src_needs_barrier(i32 %31, i64 %34, i32 %32)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SET_SRC(i32 %36)
  %38 = call i32 @GET_CODE(i32 %37)
  %39 = icmp ne i32 %38, 226
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SET_DEST(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = bitcast %struct.reg_flags* %13 to i64*
  %46 = load i64, i64* %45, align 4
  %47 = call i32 @rtx_needs_barrier(i32 %43, i64 %46, i32 %44)
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %40, %28
  br label %596

51:                                               ; preds = %23
  %52 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* @AR_EC_REGNUM, align 8
  %54 = load i32, i32* %7, align 4
  %55 = bitcast %struct.reg_flags* %13 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call i32 @rws_access_regno(i64 %53, i64 %56, i32 %54)
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %51
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rws_insn, align 8
  %65 = load i64, i64* @REG_AR_CFM, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load i64, i64* @REG_RP, align 8
  %73 = load i32, i32* %7, align 4
  %74 = bitcast %struct.reg_flags* %13 to i64*
  %75 = load i64, i64* %74, align 4
  %76 = call i32 @rws_access_regno(i64 %72, i64 %75, i32 %73)
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i64, i64* @AR_PFS_REGNUM, align 8
  %80 = load i32, i32* %7, align 4
  %81 = bitcast %struct.reg_flags* %13 to i64*
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @rws_access_regno(i64 %79, i64 %82, i32 %80)
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i64, i64* @REG_AR_CFM, align 8
  %87 = load i32, i32* %7, align 4
  %88 = bitcast %struct.reg_flags* %13 to i64*
  %89 = load i64, i64* %88, align 4
  %90 = call i32 @rws_access_regno(i64 %86, i64 %89, i32 %87)
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %70, %63, %51
  br label %596

94:                                               ; preds = %23
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @COND_EXEC_TEST(i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @gcc_assert(i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = bitcast %struct.reg_flags* %5 to i64*
  %104 = load i64, i64* %103, align 4
  %105 = call i32 @rtx_needs_barrier(i32 %102, i64 %104, i32 0)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @GET_CODE(i32 %106)
  %108 = icmp eq i32 %107, 217
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  store i32 1, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @XEXP(i32 %111, i32 0)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @GET_CODE(i32 %113)
  %115 = icmp eq i32 %114, 187
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @REGNO(i32 %117)
  %119 = call i32 @REGNO_REG_CLASS(i32 %118)
  %120 = load i32, i32* @PR_REGS, align 4
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %116, %110
  %123 = phi i1 [ false, %110 ], [ %121, %116 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @gcc_assert(i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @REGNO(i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %130, %122
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @COND_EXEC_CODE(i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = bitcast %struct.reg_flags* %5 to i64*
  %138 = load i64, i64* %137, align 4
  %139 = call i32 @rtx_needs_barrier(i32 %135, i64 %138, i32 %136)
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %598

143:                                              ; preds = %23, %23
  br label %596

144:                                              ; preds = %23, %23
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @GET_CODE(i32 %145)
  %147 = icmp ne i32 %146, 227
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @MEM_VOLATILE_P(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load i32, i32* @TARGET_VOL_ASM_STOP, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %152, %144
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rws_insn, align 8
  %157 = load i64, i64* @REG_VOLATILE, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %163, align 4
  %164 = load i64, i64* @REG_VOLATILE, align 8
  %165 = load i32, i32* %7, align 4
  %166 = bitcast %struct.reg_flags* %13 to i64*
  %167 = load i64, i64* %166, align 4
  %168 = call i32 @rws_access_regno(i64 %164, i64 %167, i32 %165)
  br label %169

169:                                              ; preds = %162, %155
  store i32 1, i32* %4, align 4
  br label %598

170:                                              ; preds = %152, %148
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %171)
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %188, %170
  %175 = load i32, i32* %8, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @ASM_OPERANDS_INPUT(i32 %178, i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = bitcast %struct.reg_flags* %5 to i64*
  %183 = load i64, i64* %182, align 4
  %184 = call i32 @rtx_needs_barrier(i32 %180, i64 %183, i32 %181)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  store i32 1, i32* %11, align 4
  br label %187

187:                                              ; preds = %186, %177
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %8, align 4
  br label %174

191:                                              ; preds = %174
  br label %596

192:                                              ; preds = %23
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @XVECLEN(i32 %193, i32 0)
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %227, %192
  %197 = load i32, i32* %8, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @XVECEXP(i32 %200, i32 0, i32 %201)
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @GET_CODE(i32 %203)
  switch i32 %204, label %224 [
    i32 183, label %205
    i32 131, label %215
    i32 226, label %215
    i32 227, label %215
    i32 225, label %223
    i32 186, label %223
  ]

205:                                              ; preds = %199
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @update_set_flags(i32 %206, %struct.reg_flags* %13)
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %7, align 4
  %210 = bitcast %struct.reg_flags* %13 to i64*
  %211 = load i64, i64* %210, align 4
  %212 = call i32 @set_src_needs_barrier(i32 %208, i64 %211, i32 %209)
  %213 = load i32, i32* %11, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %11, align 4
  br label %226

215:                                              ; preds = %199, %199, %199
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %7, align 4
  %218 = bitcast %struct.reg_flags* %5 to i64*
  %219 = load i64, i64* %218, align 4
  %220 = call i32 @rtx_needs_barrier(i32 %216, i64 %219, i32 %217)
  %221 = load i32, i32* %11, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %11, align 4
  br label %226

223:                                              ; preds = %199, %199
  br label %226

224:                                              ; preds = %199
  %225 = call i32 (...) @gcc_unreachable()
  br label %226

226:                                              ; preds = %224, %223, %215, %205
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %8, align 4
  br label %196

230:                                              ; preds = %196
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @XVECLEN(i32 %231, i32 0)
  %233 = sub nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %278, %230
  %235 = load i32, i32* %8, align 4
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %281

237:                                              ; preds = %234
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @XVECEXP(i32 %238, i32 0, i32 %239)
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @GET_CODE(i32 %241)
  %243 = icmp eq i32 %242, 183
  br i1 %243, label %244, label %260

244:                                              ; preds = %237
  %245 = load i32, i32* %16, align 4
  %246 = call i32 @SET_SRC(i32 %245)
  %247 = call i32 @GET_CODE(i32 %246)
  %248 = icmp ne i32 %247, 226
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %250, align 4
  %251 = load i32, i32* %16, align 4
  %252 = call i32 @SET_DEST(i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = bitcast %struct.reg_flags* %13 to i64*
  %255 = load i64, i64* %254, align 4
  %256 = call i32 @rtx_needs_barrier(i32 %252, i64 %255, i32 %253)
  %257 = load i32, i32* %11, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %249, %244
  br label %277

260:                                              ; preds = %237
  %261 = load i32, i32* %16, align 4
  %262 = call i32 @GET_CODE(i32 %261)
  %263 = icmp eq i32 %262, 225
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %16, align 4
  %266 = call i32 @GET_CODE(i32 %265)
  %267 = icmp eq i32 %266, 186
  br i1 %267, label %268, label %276

268:                                              ; preds = %264, %260
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* %7, align 4
  %271 = bitcast %struct.reg_flags* %5 to i64*
  %272 = load i64, i64* %271, align 4
  %273 = call i32 @rtx_needs_barrier(i32 %269, i64 %272, i32 %270)
  %274 = load i32, i32* %11, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %268, %264
  br label %277

277:                                              ; preds = %276, %259
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %8, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %8, align 4
  br label %234

281:                                              ; preds = %234
  br label %596

282:                                              ; preds = %23
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @SUBREG_REG(i32 %283)
  %285 = load i32, i32* %7, align 4
  %286 = bitcast %struct.reg_flags* %5 to i64*
  %287 = load i64, i64* %286, align 4
  %288 = call i32 @rtx_needs_barrier(i32 %284, i64 %287, i32 %285)
  %289 = load i32, i32* %11, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %11, align 4
  br label %596

291:                                              ; preds = %23
  %292 = load i32, i32* %6, align 4
  %293 = call i32 @REGNO(i32 %292)
  %294 = load i32, i32* @AR_UNAT_REGNUM, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %315

296:                                              ; preds = %291
  store i32 0, i32* %8, align 4
  br label %297

297:                                              ; preds = %311, %296
  %298 = load i32, i32* %8, align 4
  %299 = icmp slt i32 %298, 64
  br i1 %299, label %300, label %314

300:                                              ; preds = %297
  %301 = load i32, i32* @AR_UNAT_BIT_0, align 4
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* %7, align 4
  %306 = bitcast %struct.reg_flags* %5 to i64*
  %307 = load i64, i64* %306, align 4
  %308 = call i32 @rws_access_regno(i64 %304, i64 %307, i32 %305)
  %309 = load i32, i32* %11, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %11, align 4
  br label %311

311:                                              ; preds = %300
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %297

314:                                              ; preds = %297
  br label %321

315:                                              ; preds = %291
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* %7, align 4
  %318 = bitcast %struct.reg_flags* %5 to i64*
  %319 = load i64, i64* %318, align 4
  %320 = call i32 @rws_access_reg(i32 %316, i64 %319, i32 %317)
  store i32 %320, i32* %11, align 4
  br label %321

321:                                              ; preds = %315, %314
  br label %596

322:                                              ; preds = %23
  %323 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 0, i32* %323, align 4
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @XEXP(i32 %324, i32 0)
  %326 = load i32, i32* %7, align 4
  %327 = bitcast %struct.reg_flags* %13 to i64*
  %328 = load i64, i64* %327, align 4
  %329 = call i32 @rtx_needs_barrier(i32 %325, i64 %328, i32 %326)
  store i32 %329, i32* %11, align 4
  br label %596

330:                                              ; preds = %23, %23, %23, %23, %23, %23
  br label %596

331:                                              ; preds = %23, %23
  %332 = load i32, i32* %6, align 4
  %333 = call i32 @XEXP(i32 %332, i32 0)
  %334 = call i32 @GET_CODE(i32 %333)
  %335 = icmp eq i32 %334, 187
  %336 = zext i1 %335 to i32
  %337 = call i32 @gcc_assert(i32 %336)
  %338 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 0, i32* %338, align 4
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @XEXP(i32 %339, i32 0)
  %341 = load i32, i32* %7, align 4
  %342 = bitcast %struct.reg_flags* %13 to i64*
  %343 = load i64, i64* %342, align 4
  %344 = call i32 @rws_access_reg(i32 %340, i64 %343, i32 %341)
  store i32 %344, i32* %11, align 4
  %345 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %345, align 4
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @XEXP(i32 %346, i32 0)
  %348 = load i32, i32* %7, align 4
  %349 = bitcast %struct.reg_flags* %13 to i64*
  %350 = load i64, i64* %349, align 4
  %351 = call i32 @rws_access_reg(i32 %347, i64 %350, i32 %348)
  %352 = load i32, i32* %11, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %11, align 4
  br label %596

354:                                              ; preds = %23
  %355 = load i32, i32* %6, align 4
  %356 = call i32 @XEXP(i32 %355, i32 0)
  %357 = call i32 @GET_CODE(i32 %356)
  %358 = icmp eq i32 %357, 187
  %359 = zext i1 %358 to i32
  %360 = call i32 @gcc_assert(i32 %359)
  %361 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 0, i32* %361, align 4
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @XEXP(i32 %362, i32 0)
  %364 = load i32, i32* %7, align 4
  %365 = bitcast %struct.reg_flags* %13 to i64*
  %366 = load i64, i64* %365, align 4
  %367 = call i32 @rws_access_reg(i32 %363, i64 %366, i32 %364)
  store i32 %367, i32* %11, align 4
  %368 = load i32, i32* %6, align 4
  %369 = call i32 @XEXP(i32 %368, i32 1)
  %370 = load i32, i32* %7, align 4
  %371 = bitcast %struct.reg_flags* %13 to i64*
  %372 = load i64, i64* %371, align 4
  %373 = call i32 @rtx_needs_barrier(i32 %369, i64 %372, i32 %370)
  %374 = load i32, i32* %11, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %11, align 4
  %376 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %376, align 4
  %377 = load i32, i32* %6, align 4
  %378 = call i32 @XEXP(i32 %377, i32 0)
  %379 = load i32, i32* %7, align 4
  %380 = bitcast %struct.reg_flags* %13 to i64*
  %381 = load i64, i64* %380, align 4
  %382 = call i32 @rws_access_reg(i32 %378, i64 %381, i32 %379)
  %383 = load i32, i32* %11, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %11, align 4
  br label %596

385:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %386 = load i32, i32* %6, align 4
  %387 = call i32 @XEXP(i32 %386, i32 0)
  %388 = load i32, i32* %7, align 4
  %389 = bitcast %struct.reg_flags* %13 to i64*
  %390 = load i64, i64* %389, align 4
  %391 = call i32 @rtx_needs_barrier(i32 %387, i64 %390, i32 %388)
  store i32 %391, i32* %11, align 4
  %392 = load i32, i32* %6, align 4
  %393 = call i32 @XEXP(i32 %392, i32 1)
  %394 = load i32, i32* %7, align 4
  %395 = bitcast %struct.reg_flags* %13 to i64*
  %396 = load i64, i64* %395, align 4
  %397 = call i32 @rtx_needs_barrier(i32 %393, i64 %396, i32 %394)
  %398 = load i32, i32* %11, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %11, align 4
  br label %596

400:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %401 = load i32, i32* %6, align 4
  %402 = call i32 @XEXP(i32 %401, i32 0)
  %403 = load i32, i32* %7, align 4
  %404 = bitcast %struct.reg_flags* %5 to i64*
  %405 = load i64, i64* %404, align 4
  %406 = call i32 @rtx_needs_barrier(i32 %402, i64 %405, i32 %403)
  store i32 %406, i32* %11, align 4
  br label %596

407:                                              ; preds = %23
  %408 = load i32, i32* %6, align 4
  %409 = call i32 @XEXP(i32 %408, i32 0)
  %410 = load i32, i32* %7, align 4
  %411 = bitcast %struct.reg_flags* %5 to i64*
  %412 = load i64, i64* %411, align 4
  %413 = call i32 @rtx_needs_barrier(i32 %409, i64 %412, i32 %410)
  store i32 %413, i32* %11, align 4
  br label %596

414:                                              ; preds = %23
  %415 = load i32, i32* %6, align 4
  %416 = call i32 @XINT(i32 %415, i32 1)
  switch i32 %416, label %483 [
    i32 141, label %417
    i32 140, label %417
    i32 154, label %417
    i32 139, label %417
    i32 133, label %417
    i32 136, label %417
    i32 137, label %417
    i32 138, label %417
    i32 153, label %417
    i32 160, label %417
    i32 152, label %417
    i32 159, label %417
    i32 145, label %418
    i32 146, label %418
    i32 149, label %446
    i32 150, label %446
    i32 147, label %446
    i32 135, label %446
    i32 161, label %446
    i32 148, label %446
    i32 144, label %446
    i32 143, label %446
    i32 142, label %446
    i32 158, label %446
    i32 157, label %446
    i32 151, label %453
    i32 134, label %453
    i32 155, label %453
    i32 156, label %468
  ]

417:                                              ; preds = %414, %414, %414, %414, %414, %414, %414, %414, %414, %414, %414, %414
  br label %485

418:                                              ; preds = %414, %414
  %419 = load i32, i32* %6, align 4
  %420 = call i32 @XVECEXP(i32 %419, i32 0, i32 1)
  %421 = call i32 @INTVAL(i32 %420)
  store i32 %421, i32* %17, align 4
  %422 = load i32, i32* %17, align 4
  %423 = ashr i32 %422, 3
  %424 = and i32 %423, 63
  store i32 %424, i32* %18, align 4
  %425 = load i32, i32* %6, align 4
  %426 = call i32 @XVECEXP(i32 %425, i32 0, i32 0)
  %427 = load i32, i32* %7, align 4
  %428 = bitcast %struct.reg_flags* %5 to i64*
  %429 = load i64, i64* %428, align 4
  %430 = call i32 @rtx_needs_barrier(i32 %426, i64 %429, i32 %427)
  store i32 %430, i32* %11, align 4
  %431 = load i32, i32* %6, align 4
  %432 = call i32 @XINT(i32 %431, i32 1)
  %433 = icmp eq i32 %432, 145
  %434 = zext i1 %433 to i32
  %435 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 %434, i32* %435, align 4
  %436 = load i32, i32* @AR_UNAT_BIT_0, align 4
  %437 = load i32, i32* %18, align 4
  %438 = add nsw i32 %436, %437
  %439 = sext i32 %438 to i64
  %440 = load i32, i32* %7, align 4
  %441 = bitcast %struct.reg_flags* %13 to i64*
  %442 = load i64, i64* %441, align 4
  %443 = call i32 @rws_access_regno(i64 %439, i64 %442, i32 %440)
  %444 = load i32, i32* %11, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %11, align 4
  br label %485

446:                                              ; preds = %414, %414, %414, %414, %414, %414, %414, %414, %414, %414, %414
  %447 = load i32, i32* %6, align 4
  %448 = call i32 @XVECEXP(i32 %447, i32 0, i32 0)
  %449 = load i32, i32* %7, align 4
  %450 = bitcast %struct.reg_flags* %5 to i64*
  %451 = load i64, i64* %450, align 4
  %452 = call i32 @rtx_needs_barrier(i32 %448, i64 %451, i32 %449)
  store i32 %452, i32* %11, align 4
  br label %485

453:                                              ; preds = %414, %414, %414
  %454 = load i32, i32* %6, align 4
  %455 = call i32 @XVECEXP(i32 %454, i32 0, i32 0)
  %456 = load i32, i32* %7, align 4
  %457 = bitcast %struct.reg_flags* %5 to i64*
  %458 = load i64, i64* %457, align 4
  %459 = call i32 @rtx_needs_barrier(i32 %455, i64 %458, i32 %456)
  store i32 %459, i32* %11, align 4
  %460 = load i32, i32* %6, align 4
  %461 = call i32 @XVECEXP(i32 %460, i32 0, i32 1)
  %462 = load i32, i32* %7, align 4
  %463 = bitcast %struct.reg_flags* %5 to i64*
  %464 = load i64, i64* %463, align 4
  %465 = call i32 @rtx_needs_barrier(i32 %461, i64 %464, i32 %462)
  %466 = load i32, i32* %11, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %11, align 4
  br label %485

468:                                              ; preds = %414
  %469 = load i32, i32* %6, align 4
  %470 = call i32 @XVECEXP(i32 %469, i32 0, i32 1)
  %471 = load i32, i32* %7, align 4
  %472 = bitcast %struct.reg_flags* %5 to i64*
  %473 = load i64, i64* %472, align 4
  %474 = call i32 @rtx_needs_barrier(i32 %470, i64 %473, i32 %471)
  store i32 %474, i32* %11, align 4
  %475 = load i32, i32* %6, align 4
  %476 = call i32 @XVECEXP(i32 %475, i32 0, i32 2)
  %477 = load i32, i32* %7, align 4
  %478 = bitcast %struct.reg_flags* %5 to i64*
  %479 = load i64, i64* %478, align 4
  %480 = call i32 @rtx_needs_barrier(i32 %476, i64 %479, i32 %477)
  %481 = load i32, i32* %11, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %11, align 4
  br label %485

483:                                              ; preds = %414
  %484 = call i32 (...) @gcc_unreachable()
  br label %485

485:                                              ; preds = %483, %468, %453, %446, %418, %417
  br label %596

486:                                              ; preds = %23
  %487 = load i32, i32* %6, align 4
  %488 = call i32 @XINT(i32 %487, i32 1)
  switch i32 %488, label %503 [
    i32 168, label %489
    i32 162, label %501
    i32 167, label %502
    i32 165, label %502
    i32 166, label %502
    i32 164, label %502
    i32 163, label %502
  ]

489:                                              ; preds = %486
  %490 = load i64, i64* @AR_PFS_REGNUM, align 8
  %491 = load i32, i32* %7, align 4
  %492 = bitcast %struct.reg_flags* %5 to i64*
  %493 = load i64, i64* %492, align 4
  %494 = call i32 @rws_access_regno(i64 %490, i64 %493, i32 %491)
  %495 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %495, align 4
  %496 = load i64, i64* @REG_AR_CFM, align 8
  %497 = load i32, i32* %7, align 4
  %498 = bitcast %struct.reg_flags* %13 to i64*
  %499 = load i64, i64* %498, align 4
  %500 = call i32 @rws_access_regno(i64 %496, i64 %499, i32 %497)
  store i32 1, i32* %4, align 4
  br label %598

501:                                              ; preds = %486
  store i32 1, i32* %11, align 4
  br label %505

502:                                              ; preds = %486, %486, %486, %486, %486
  store i32 0, i32* %4, align 4
  br label %598

503:                                              ; preds = %486
  %504 = call i32 (...) @gcc_unreachable()
  br label %505

505:                                              ; preds = %503, %501
  br label %596

506:                                              ; preds = %23
  %507 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 0, i32* %507, align 4
  %508 = load i64, i64* @REG_RP, align 8
  %509 = load i32, i32* %7, align 4
  %510 = bitcast %struct.reg_flags* %5 to i64*
  %511 = load i64, i64* %510, align 4
  %512 = call i32 @rws_access_regno(i64 %508, i64 %511, i32 %509)
  store i32 %512, i32* %11, align 4
  %513 = load i64, i64* @AR_PFS_REGNUM, align 8
  %514 = load i32, i32* %7, align 4
  %515 = bitcast %struct.reg_flags* %5 to i64*
  %516 = load i64, i64* %515, align 4
  %517 = call i32 @rws_access_regno(i64 %513, i64 %516, i32 %514)
  %518 = load i32, i32* %11, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %11, align 4
  %520 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %13, i32 0, i32 0
  store i32 1, i32* %520, align 4
  %521 = load i64, i64* @AR_EC_REGNUM, align 8
  %522 = load i32, i32* %7, align 4
  %523 = bitcast %struct.reg_flags* %13 to i64*
  %524 = load i64, i64* %523, align 4
  %525 = call i32 @rws_access_regno(i64 %521, i64 %524, i32 %522)
  %526 = load i32, i32* %11, align 4
  %527 = or i32 %526, %525
  store i32 %527, i32* %11, align 4
  %528 = load i64, i64* @REG_AR_CFM, align 8
  %529 = load i32, i32* %7, align 4
  %530 = bitcast %struct.reg_flags* %13 to i64*
  %531 = load i64, i64* %530, align 4
  %532 = call i32 @rws_access_regno(i64 %528, i64 %531, i32 %529)
  %533 = load i32, i32* %11, align 4
  %534 = or i32 %533, %532
  store i32 %534, i32* %11, align 4
  br label %596

535:                                              ; preds = %23
  %536 = load i32, i32* %6, align 4
  %537 = call i32 @GET_CODE(i32 %536)
  %538 = call i8* @GET_RTX_FORMAT(i32 %537)
  store i8* %538, i8** %12, align 8
  %539 = load i32, i32* %6, align 4
  %540 = call i32 @GET_CODE(i32 %539)
  %541 = call i32 @GET_RTX_LENGTH(i32 %540)
  %542 = sub nsw i32 %541, 1
  store i32 %542, i32* %8, align 4
  br label %543

543:                                              ; preds = %592, %535
  %544 = load i32, i32* %8, align 4
  %545 = icmp sge i32 %544, 0
  br i1 %545, label %546, label %595

546:                                              ; preds = %543
  %547 = load i8*, i8** %12, align 8
  %548 = load i32, i32* %8, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i8, i8* %547, i64 %549
  %551 = load i8, i8* %550, align 1
  %552 = sext i8 %551 to i32
  switch i32 %552, label %589 [
    i32 48, label %553
    i32 105, label %553
    i32 110, label %553
    i32 119, label %553
    i32 115, label %553
    i32 83, label %553
    i32 101, label %554
    i32 69, label %565
  ]

553:                                              ; preds = %546, %546, %546, %546, %546, %546
  br label %591

554:                                              ; preds = %546
  %555 = load i32, i32* %6, align 4
  %556 = load i32, i32* %8, align 4
  %557 = call i32 @XEXP(i32 %555, i32 %556)
  %558 = load i32, i32* %7, align 4
  %559 = bitcast %struct.reg_flags* %5 to i64*
  %560 = load i64, i64* %559, align 4
  %561 = call i32 @rtx_needs_barrier(i32 %557, i64 %560, i32 %558)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %554
  store i32 1, i32* %11, align 4
  br label %564

564:                                              ; preds = %563, %554
  br label %591

565:                                              ; preds = %546
  %566 = load i32, i32* %6, align 4
  %567 = load i32, i32* %8, align 4
  %568 = call i32 @XVECLEN(i32 %566, i32 %567)
  %569 = sub nsw i32 %568, 1
  store i32 %569, i32* %9, align 4
  br label %570

570:                                              ; preds = %585, %565
  %571 = load i32, i32* %9, align 4
  %572 = icmp sge i32 %571, 0
  br i1 %572, label %573, label %588

573:                                              ; preds = %570
  %574 = load i32, i32* %6, align 4
  %575 = load i32, i32* %8, align 4
  %576 = load i32, i32* %9, align 4
  %577 = call i32 @XVECEXP(i32 %574, i32 %575, i32 %576)
  %578 = load i32, i32* %7, align 4
  %579 = bitcast %struct.reg_flags* %5 to i64*
  %580 = load i64, i64* %579, align 4
  %581 = call i32 @rtx_needs_barrier(i32 %577, i64 %580, i32 %578)
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %573
  store i32 1, i32* %11, align 4
  br label %584

584:                                              ; preds = %583, %573
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %9, align 4
  %587 = add nsw i32 %586, -1
  store i32 %587, i32* %9, align 4
  br label %570

588:                                              ; preds = %570
  br label %591

589:                                              ; preds = %546
  %590 = call i32 (...) @gcc_unreachable()
  br label %591

591:                                              ; preds = %589, %588, %564, %553
  br label %592

592:                                              ; preds = %591
  %593 = load i32, i32* %8, align 4
  %594 = add nsw i32 %593, -1
  store i32 %594, i32* %8, align 4
  br label %543

595:                                              ; preds = %543
  br label %596

596:                                              ; preds = %595, %506, %505, %485, %407, %400, %385, %354, %331, %330, %322, %321, %282, %281, %191, %143, %93, %50
  %597 = load i32, i32* %11, align 4
  store i32 %597, i32* %4, align 4
  br label %598

598:                                              ; preds = %596, %502, %489, %169, %133, %22
  %599 = load i32, i32* %4, align 4
  ret i32 %599
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GET_CODE(i32) #2

declare dso_local i32 @update_set_flags(i32, %struct.reg_flags*) #2

declare dso_local i32 @set_src_needs_barrier(i32, i64, i32) #2

declare dso_local i32 @SET_SRC(i32) #2

declare dso_local i32 @SET_DEST(i32) #2

declare dso_local i32 @rws_access_regno(i64, i64, i32) #2

declare dso_local i32 @COND_EXEC_TEST(i32) #2

declare dso_local i32 @gcc_assert(i32) #2

declare dso_local i32 @XEXP(i32, i32) #2

declare dso_local i32 @REGNO_REG_CLASS(i32) #2

declare dso_local i32 @REGNO(i32) #2

declare dso_local i32 @COND_EXEC_CODE(i32) #2

declare dso_local i32 @MEM_VOLATILE_P(i32) #2

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i32) #2

declare dso_local i32 @ASM_OPERANDS_INPUT(i32, i32) #2

declare dso_local i32 @XVECLEN(i32, i32) #2

declare dso_local i32 @XVECEXP(i32, i32, i32) #2

declare dso_local i32 @gcc_unreachable(...) #2

declare dso_local i32 @SUBREG_REG(i32) #2

declare dso_local i32 @rws_access_reg(i32, i64, i32) #2

declare dso_local i32 @XINT(i32, i32) #2

declare dso_local i32 @INTVAL(i32) #2

declare dso_local i8* @GET_RTX_FORMAT(i32) #2

declare dso_local i32 @GET_RTX_LENGTH(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
