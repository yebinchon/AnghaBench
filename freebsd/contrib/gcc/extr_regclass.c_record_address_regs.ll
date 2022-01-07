; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_record_address_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_record_address_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.costs = type { i32, i32* }

@INDEX_REG_CLASS = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@MAX_REGS_PER_ADDRESS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@MULT = common dso_local global i32 0, align 4
@costs = common dso_local global %struct.costs* null, align 8
@Pmode = common dso_local global i64 0, align 8
@N_REG_CLASSES = common dso_local global i32 0, align 4
@may_move_in_cost = common dso_local global i32*** null, align 8
@in_inc_dec = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @record_address_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_address_regs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.costs*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @GET_CODE(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @INDEX_REG_CLASS, align 4
  store i32 %28, i32* %14, align 4
  br label %34

29:                                               ; preds = %6
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @base_reg_class(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %329 [
    i32 139, label %36
    i32 140, label %36
    i32 141, label %36
    i32 137, label %36
    i32 128, label %36
    i32 138, label %36
    i32 136, label %37
    i32 133, label %249
    i32 130, label %249
    i32 134, label %274
    i32 131, label %274
    i32 135, label %274
    i32 132, label %274
    i32 129, label %282
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34
  br label %360

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @XEXP(i32 %38, i32 0)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @XEXP(i32 %40, i32 1)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @GET_CODE(i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @GET_CODE(i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @SUBREG, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @SUBREG_REG(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @GET_CODE(i32 %52)
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %49, %37
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @SUBREG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @SUBREG_REG(i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @GET_CODE(i32 %61)
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* @MAX_REGS_PER_ADDRESS, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %67, i32 %68, i32 0, i32 136, i32 %69, i32 %70)
  br label %248

71:                                               ; preds = %63
  %72 = load i32, i32* @INDEX_REG_CLASS, align 4
  %73 = load i32, i32* @VOIDmode, align 4
  %74 = load i32, i32* @SCRATCH, align 4
  %75 = call i32 @base_reg_class(i32 %73, i32 136, i32 %74)
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %78, i32 %79, i32 %80, i32 136, i32 %81, i32 %82)
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @CONSTANT_P(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %87, i32 %88, i32 %89, i32 136, i32 %90, i32 %91)
  br label %92

92:                                               ; preds = %86, %77
  br label %247

93:                                               ; preds = %71
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 139
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @CONST_DOUBLE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %101, i32 %102, i32 %103, i32 136, i32 %104, i32 %105)
  br label %246

106:                                              ; preds = %96
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, 140
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %18, align 4
  %114 = icmp eq i32 %113, 138
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %109, %106
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %116, i32 %117, i32 1, i32 136, i32 %118, i32 %119)
  br label %245

120:                                              ; preds = %112
  %121 = load i32, i32* %17, align 4
  %122 = icmp eq i32 %121, 129
  br i1 %122, label %123, label %150

123:                                              ; preds = %120
  %124 = load i32, i32* %18, align 4
  %125 = icmp eq i32 %124, 129
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load i32, i32* %15, align 4
  %128 = call i64 @REGNO(i32 %127)
  %129 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %126
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @ok_for_base_p_nonstrict(i32 %132, i32 %133, i32 136, i32 129)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @ok_for_index_p_nonstrict(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %136, %131
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @ok_for_base_p_nonstrict(i32 %143, i32 %144, i32 136, i32 129)
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 1, i32 0
  %149 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %141, i32 %142, i32 %148, i32 136, i32 129, i32 %149)
  br label %244

150:                                              ; preds = %136, %126, %123, %120
  %151 = load i32, i32* %17, align 4
  %152 = icmp eq i32 %151, 129
  br i1 %152, label %153, label %180

153:                                              ; preds = %150
  %154 = load i32, i32* %18, align 4
  %155 = icmp eq i32 %154, 129
  br i1 %155, label %156, label %180

156:                                              ; preds = %153
  %157 = load i32, i32* %16, align 4
  %158 = call i64 @REGNO(i32 %157)
  %159 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @ok_for_base_p_nonstrict(i32 %162, i32 %163, i32 136, i32 129)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @ok_for_index_p_nonstrict(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166, %161
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @ok_for_base_p_nonstrict(i32 %173, i32 %174, i32 136, i32 129)
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  %179 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %171, i32 %172, i32 %178, i32 136, i32 129, i32 %179)
  br label %243

180:                                              ; preds = %166, %156, %153, %150
  %181 = load i32, i32* %17, align 4
  %182 = icmp eq i32 %181, 129
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @REG_POINTER(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183, %180
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* @MULT, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187, %183
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %192, i32 %193, i32 0, i32 136, i32 %194, i32 %195)
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %196, i32 %197, i32 1, i32 136, i32 %198, i32 %199)
  br label %242

200:                                              ; preds = %187
  %201 = load i32, i32* %18, align 4
  %202 = icmp eq i32 %201, 129
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @REG_POINTER(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %203, %200
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @MULT, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %207, %203
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %212, i32 %213, i32 1, i32 136, i32 %214, i32 %215)
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %216, i32 %217, i32 0, i32 136, i32 %218, i32 %219)
  br label %241

220:                                              ; preds = %207
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %12, align 4
  %225 = sdiv i32 %224, 2
  call void @record_address_regs(i32 %221, i32 %222, i32 0, i32 136, i32 %223, i32 %225)
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %12, align 4
  %230 = sdiv i32 %229, 2
  call void @record_address_regs(i32 %226, i32 %227, i32 1, i32 136, i32 %228, i32 %230)
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %12, align 4
  %235 = sdiv i32 %234, 2
  call void @record_address_regs(i32 %231, i32 %232, i32 0, i32 136, i32 %233, i32 %235)
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %12, align 4
  %240 = sdiv i32 %239, 2
  call void @record_address_regs(i32 %236, i32 %237, i32 1, i32 136, i32 %238, i32 %240)
  br label %241

241:                                              ; preds = %220, %211
  br label %242

242:                                              ; preds = %241, %191
  br label %243

243:                                              ; preds = %242, %170
  br label %244

244:                                              ; preds = %243, %140
  br label %245

245:                                              ; preds = %244, %115
  br label %246

246:                                              ; preds = %245, %100
  br label %247

247:                                              ; preds = %246, %92
  br label %248

248:                                              ; preds = %247, %66
  br label %360

249:                                              ; preds = %34, %34
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @XEXP(i32 %251, i32 0)
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @XEXP(i32 %254, i32 1)
  %256 = call i32 @XEXP(i32 %255, i32 1)
  %257 = call i32 @GET_CODE(i32 %256)
  %258 = load i32, i32* %12, align 4
  %259 = mul nsw i32 2, %258
  call void @record_address_regs(i32 %250, i32 %252, i32 0, i32 %253, i32 %257, i32 %259)
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @XEXP(i32 %260, i32 1)
  %262 = call i32 @XEXP(i32 %261, i32 1)
  %263 = call i32 @REG_P(i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %249
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @XEXP(i32 %267, i32 1)
  %269 = call i32 @XEXP(i32 %268, i32 1)
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %12, align 4
  %272 = mul nsw i32 2, %271
  call void @record_address_regs(i32 %266, i32 %269, i32 1, i32 %270, i32 129, i32 %272)
  br label %273

273:                                              ; preds = %265, %249
  br label %360

274:                                              ; preds = %34, %34, %34, %34
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @XEXP(i32 %276, i32 0)
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @SCRATCH, align 4
  %280 = load i32, i32* %12, align 4
  %281 = mul nsw i32 2, %280
  call void @record_address_regs(i32 %275, i32 %277, i32 0, i32 %278, i32 %279, i32 %281)
  br label %360

282:                                              ; preds = %34
  %283 = load %struct.costs*, %struct.costs** @costs, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i64 @REGNO(i32 %284)
  %286 = getelementptr inbounds %struct.costs, %struct.costs* %283, i64 %285
  store %struct.costs* %286, %struct.costs** %19, align 8
  %287 = load i64, i64* @Pmode, align 8
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @MEMORY_MOVE_COST(i64 %287, i32 %288, i32 1)
  %290 = load i32, i32* %12, align 4
  %291 = mul nsw i32 %289, %290
  %292 = sdiv i32 %291, 2
  %293 = load %struct.costs*, %struct.costs** %19, align 8
  %294 = getelementptr inbounds %struct.costs, %struct.costs* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, %292
  store i32 %296, i32* %294, align 8
  store i32 0, i32* %20, align 4
  br label %297

297:                                              ; preds = %325, %282
  %298 = load i32, i32* %20, align 4
  %299 = load i32, i32* @N_REG_CLASSES, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %328

301:                                              ; preds = %297
  %302 = load i32***, i32**** @may_move_in_cost, align 8
  %303 = load i64, i64* @Pmode, align 8
  %304 = getelementptr inbounds i32**, i32*** %302, i64 %303
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %12, align 4
  %315 = mul nsw i32 %313, %314
  %316 = sdiv i32 %315, 2
  %317 = load %struct.costs*, %struct.costs** %19, align 8
  %318 = getelementptr inbounds %struct.costs, %struct.costs* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %20, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, %316
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %301
  %326 = load i32, i32* %20, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %20, align 4
  br label %297

328:                                              ; preds = %297
  br label %360

329:                                              ; preds = %34
  %330 = load i32, i32* %13, align 4
  %331 = call i8* @GET_RTX_FORMAT(i32 %330)
  store i8* %331, i8** %21, align 8
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @GET_RTX_LENGTH(i32 %332)
  %334 = sub nsw i32 %333, 1
  store i32 %334, i32* %22, align 4
  br label %335

335:                                              ; preds = %356, %329
  %336 = load i32, i32* %22, align 4
  %337 = icmp sge i32 %336, 0
  br i1 %337, label %338, label %359

338:                                              ; preds = %335
  %339 = load i8*, i8** %21, align 8
  %340 = load i32, i32* %22, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp eq i32 %344, 101
  br i1 %345, label %346, label %355

346:                                              ; preds = %338
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %8, align 4
  %349 = load i32, i32* %22, align 4
  %350 = call i32 @XEXP(i32 %348, i32 %349)
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %13, align 4
  %353 = load i32, i32* @SCRATCH, align 4
  %354 = load i32, i32* %12, align 4
  call void @record_address_regs(i32 %347, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354)
  br label %355

355:                                              ; preds = %346, %338
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %22, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %22, align 4
  br label %335

359:                                              ; preds = %335
  br label %360

360:                                              ; preds = %36, %359, %328, %274, %273, %248
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @base_reg_class(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @ok_for_base_p_nonstrict(i32, i32, i32, i32) #1

declare dso_local i32 @ok_for_index_p_nonstrict(i32) #1

declare dso_local i32 @REG_POINTER(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @MEMORY_MOVE_COST(i64, i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
