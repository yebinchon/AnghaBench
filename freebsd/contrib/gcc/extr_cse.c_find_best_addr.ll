; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_find_best_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_find_best_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, i32, i64, %struct.table_elt*, %struct.table_elt* }

@do_not_record = common dso_local global i32 0, align 4
@hash_arg_in_memory = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@flag_expensive_optimizations = common dso_local global i64 0, align 8
@EXPR_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i32)* @find_best_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_addr(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.table_elt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.table_elt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.table_elt*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.table_elt*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* @do_not_record, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @hash_arg_in_memory, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @GET_CODE(i64 %35)
  %37 = load i64, i64* @PLUS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %3
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @XEXP(i64 %40, i32 0)
  %42 = call i64 @REG_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @XEXP(i64 %45, i32 1)
  %47 = call i64 @GET_CODE(i64 %46)
  %48 = load i64, i64* @CONST_INT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @XEXP(i64 %51, i32 0)
  %53 = call i32 @REGNO(i64 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57, %50
  %66 = phi i1 [ true, %57 ], [ true, %50 ], [ %64, %61 ]
  br i1 %66, label %91, label %67

67:                                               ; preds = %65, %44, %39, %3
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @REG_P(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @REGNO(i64 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %81, %77, %71
  %86 = phi i1 [ true, %77 ], [ true, %71 ], [ %84, %81 ]
  br i1 %86, label %91, label %87

87:                                               ; preds = %85, %67
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @CONSTANT_ADDRESS_P(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %85, %65
  br label %436

92:                                               ; preds = %87
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @REG_P(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %142, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* @NULL_RTX, align 4
  %99 = call i64 @fold_rtx(i64 %97, i32 %98)
  %100 = call i64 @canon_for_address(i64 %99)
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %141

104:                                              ; preds = %96
  %105 = load i64, i64* %16, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @address_cost(i64 %105, i32 %106)
  store i32 %107, i32* %17, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @address_cost(i64 %108, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %132, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load i64, i64* %16, align 8
  %120 = load i32, i32* @MEM, align 4
  %121 = call i64 @rtx_cost(i64 %119, i32 %120)
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* @MEM, align 4
  %124 = call i64 @rtx_cost(i64 %122, i32 %123)
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %118
  %127 = load i64, i64* %16, align 8
  %128 = call i64 @approx_reg_cost(i64 %127)
  %129 = load i64, i64* %8, align 8
  %130 = call i64 @approx_reg_cost(i64 %129)
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126, %118, %104
  %133 = load i64, i64* %4, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i64 @validate_change(i64 %133, i64* %134, i64 %135, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i64, i64* %16, align 8
  store i64 %139, i64* %8, align 8
  br label %140

140:                                              ; preds = %138, %132, %126, %114
  br label %141

141:                                              ; preds = %140, %96
  br label %142

142:                                              ; preds = %141, %92
  store i32 0, i32* @do_not_record, align 4
  %143 = load i64, i64* %8, align 8
  %144 = load i32, i32* @Pmode, align 4
  %145 = call i32 @HASH(i64 %143, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* @do_not_record, align 4
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* @do_not_record, align 4
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* @hash_arg_in_memory, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %436

152:                                              ; preds = %142
  %153 = load i64, i64* %8, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @Pmode, align 4
  %156 = call %struct.table_elt* @lookup(i64 %153, i32 %154, i32 %155)
  store %struct.table_elt* %156, %struct.table_elt** %7, align 8
  %157 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %158 = icmp ne %struct.table_elt* %157, null
  br i1 %158, label %159, label %269

159:                                              ; preds = %152
  %160 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %161 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %160, i32 0, i32 4
  %162 = load %struct.table_elt*, %struct.table_elt** %161, align 8
  store %struct.table_elt* %162, %struct.table_elt** %9, align 8
  br label %163

163:                                              ; preds = %169, %159
  %164 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %165 = icmp ne %struct.table_elt* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %168 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %166
  %170 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %171 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %170, i32 0, i32 3
  %172 = load %struct.table_elt*, %struct.table_elt** %171, align 8
  store %struct.table_elt* %172, %struct.table_elt** %9, align 8
  br label %163

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %267, %173
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %268

177:                                              ; preds = %174
  %178 = load i64*, i64** %5, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @address_cost(i64 %179, i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %183 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  %186 = ashr i32 %185, 1
  store i32 %186, i32* %20, align 4
  %187 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  store %struct.table_elt* %187, %struct.table_elt** %22, align 8
  store i32 0, i32* %10, align 4
  %188 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %189 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %188, i32 0, i32 4
  %190 = load %struct.table_elt*, %struct.table_elt** %189, align 8
  store %struct.table_elt* %190, %struct.table_elt** %9, align 8
  br label %191

191:                                              ; preds = %244, %177
  %192 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %193 = icmp ne %struct.table_elt* %192, null
  br i1 %193, label %194, label %248

194:                                              ; preds = %191
  %195 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %196 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %243, label %199

199:                                              ; preds = %194
  %200 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %201 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @REG_P(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %199
  %206 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %207 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %210 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @exp_equiv_p(i64 %208, i64 %211, i32 1, i32 0)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %242

214:                                              ; preds = %205, %199
  %215 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %216 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @address_cost(i64 %217, i32 %218)
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %234, label %222

222:                                              ; preds = %214
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %242

226:                                              ; preds = %222
  %227 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %228 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  %231 = ashr i32 %230, 1
  %232 = load i32, i32* %20, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %226, %214
  store i32 1, i32* %10, align 4
  %235 = load i32, i32* %21, align 4
  store i32 %235, i32* %19, align 4
  %236 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %237 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  %240 = ashr i32 %239, 1
  store i32 %240, i32* %20, align 4
  %241 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  store %struct.table_elt* %241, %struct.table_elt** %22, align 8
  br label %242

242:                                              ; preds = %234, %226, %222, %205
  br label %243

243:                                              ; preds = %242, %194
  br label %244

244:                                              ; preds = %243
  %245 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %246 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %245, i32 0, i32 3
  %247 = load %struct.table_elt*, %struct.table_elt** %246, align 8
  store %struct.table_elt* %247, %struct.table_elt** %9, align 8
  br label %191

248:                                              ; preds = %191
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %248
  %252 = load i64, i64* %4, align 8
  %253 = load i64*, i64** %5, align 8
  %254 = load %struct.table_elt*, %struct.table_elt** %22, align 8
  %255 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @copy_rtx(i64 %256)
  %258 = load i32, i32* @NULL_RTX, align 4
  %259 = call i64 @canon_reg(i32 %257, i32 %258)
  %260 = call i64 @validate_change(i64 %252, i64* %253, i64 %259, i32 0)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %251
  br label %436

263:                                              ; preds = %251
  %264 = load %struct.table_elt*, %struct.table_elt** %22, align 8
  %265 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  br label %266

266:                                              ; preds = %263
  br label %267

267:                                              ; preds = %266, %248
  br label %174

268:                                              ; preds = %174
  br label %269

269:                                              ; preds = %268, %152
  %270 = load i64, i64* @flag_expensive_optimizations, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %436

272:                                              ; preds = %269
  %273 = load i64*, i64** %5, align 8
  %274 = load i64, i64* %273, align 8
  %275 = call i64 @ARITHMETIC_P(i64 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %436

277:                                              ; preds = %272
  %278 = load i64*, i64** %5, align 8
  %279 = load i64, i64* %278, align 8
  %280 = call i64 @XEXP(i64 %279, i32 0)
  %281 = call i64 @REG_P(i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %436

283:                                              ; preds = %277
  %284 = load i64*, i64** %5, align 8
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @XEXP(i64 %285, i32 1)
  store i64 %286, i64* %23, align 8
  store i32 0, i32* @do_not_record, align 4
  %287 = load i64*, i64** %5, align 8
  %288 = load i64, i64* %287, align 8
  %289 = call i64 @XEXP(i64 %288, i32 0)
  %290 = load i32, i32* @Pmode, align 4
  %291 = call i32 @HASH(i64 %289, i32 %290)
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %11, align 4
  store i32 %292, i32* @do_not_record, align 4
  %293 = load i32, i32* %12, align 4
  store i32 %293, i32* @hash_arg_in_memory, align 4
  %294 = load i64*, i64** %5, align 8
  %295 = load i64, i64* %294, align 8
  %296 = call i64 @XEXP(i64 %295, i32 0)
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* @Pmode, align 4
  %299 = call %struct.table_elt* @lookup(i64 %296, i32 %297, i32 %298)
  store %struct.table_elt* %299, %struct.table_elt** %7, align 8
  %300 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %301 = icmp eq %struct.table_elt* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %283
  br label %436

303:                                              ; preds = %283
  %304 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %305 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %304, i32 0, i32 4
  %306 = load %struct.table_elt*, %struct.table_elt** %305, align 8
  store %struct.table_elt* %306, %struct.table_elt** %9, align 8
  br label %307

307:                                              ; preds = %313, %303
  %308 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %309 = icmp ne %struct.table_elt* %308, null
  br i1 %309, label %310, label %317

310:                                              ; preds = %307
  %311 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %312 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %310
  %314 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %315 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %314, i32 0, i32 3
  %316 = load %struct.table_elt*, %struct.table_elt** %315, align 8
  store %struct.table_elt* %316, %struct.table_elt** %9, align 8
  br label %307

317:                                              ; preds = %307
  br label %318

318:                                              ; preds = %434, %317
  %319 = load i32, i32* %10, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %435

321:                                              ; preds = %318
  %322 = load i64*, i64** %5, align 8
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @address_cost(i64 %323, i32 %324)
  store i32 %325, i32* %24, align 4
  %326 = load i64*, i64** %5, align 8
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @COST(i64 %327)
  %329 = add nsw i32 %328, 1
  %330 = ashr i32 %329, 1
  store i32 %330, i32* %25, align 4
  %331 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  store %struct.table_elt* %331, %struct.table_elt** %26, align 8
  %332 = load i64*, i64** %5, align 8
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %27, align 8
  store i32 0, i32* %10, align 4
  %334 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %335 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %334, i32 0, i32 4
  %336 = load %struct.table_elt*, %struct.table_elt** %335, align 8
  store %struct.table_elt* %336, %struct.table_elt** %9, align 8
  store i32 0, i32* %28, align 4
  br label %337

337:                                              ; preds = %411, %321
  %338 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %339 = icmp ne %struct.table_elt* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* %28, align 4
  %342 = icmp slt i32 %341, 32
  br label %343

343:                                              ; preds = %340, %337
  %344 = phi i1 [ false, %337 ], [ %342, %340 ]
  br i1 %344, label %345, label %417

345:                                              ; preds = %343
  %346 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %347 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %410, label %350

350:                                              ; preds = %345
  %351 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %352 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = call i64 @REG_P(i64 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %372, label %356

356:                                              ; preds = %350
  %357 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %358 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = call i64 @GET_CODE(i64 %359)
  %361 = load i64, i64* @EXPR_LIST, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %410

363:                                              ; preds = %356
  %364 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %365 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %368 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = call i64 @exp_equiv_p(i64 %366, i64 %369, i32 1, i32 0)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %410

372:                                              ; preds = %363, %350
  %373 = load i64*, i64** %5, align 8
  %374 = load i64, i64* %373, align 8
  %375 = call i64 @GET_CODE(i64 %374)
  %376 = load i32, i32* @Pmode, align 4
  %377 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %378 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* %23, align 8
  %381 = call i64 @simplify_gen_binary(i64 %375, i32 %376, i64 %379, i64 %380)
  store i64 %381, i64* %29, align 8
  %382 = load i64, i64* %29, align 8
  %383 = call i64 @canon_for_address(i64 %382)
  store i64 %383, i64* %29, align 8
  %384 = load i64, i64* %29, align 8
  %385 = load i32, i32* %6, align 4
  %386 = call i32 @address_cost(i64 %384, i32 %385)
  store i32 %386, i32* %30, align 4
  %387 = load i32, i32* %30, align 4
  %388 = load i32, i32* %24, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %401, label %390

390:                                              ; preds = %372
  %391 = load i32, i32* %30, align 4
  %392 = load i32, i32* %24, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %409

394:                                              ; preds = %390
  %395 = load i64, i64* %29, align 8
  %396 = call i32 @COST(i64 %395)
  %397 = add nsw i32 %396, 1
  %398 = ashr i32 %397, 1
  %399 = load i32, i32* %25, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %409

401:                                              ; preds = %394, %372
  store i32 1, i32* %10, align 4
  %402 = load i32, i32* %30, align 4
  store i32 %402, i32* %24, align 4
  %403 = load i64, i64* %29, align 8
  %404 = call i32 @COST(i64 %403)
  %405 = add nsw i32 %404, 1
  %406 = ashr i32 %405, 1
  store i32 %406, i32* %25, align 4
  %407 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  store %struct.table_elt* %407, %struct.table_elt** %26, align 8
  %408 = load i64, i64* %29, align 8
  store i64 %408, i64* %27, align 8
  br label %409

409:                                              ; preds = %401, %394, %390
  br label %410

410:                                              ; preds = %409, %363, %356, %345
  br label %411

411:                                              ; preds = %410
  %412 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %413 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %412, i32 0, i32 3
  %414 = load %struct.table_elt*, %struct.table_elt** %413, align 8
  store %struct.table_elt* %414, %struct.table_elt** %9, align 8
  %415 = load i32, i32* %28, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %28, align 4
  br label %337

417:                                              ; preds = %343
  %418 = load i32, i32* %10, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %434

420:                                              ; preds = %417
  %421 = load i64, i64* %4, align 8
  %422 = load i64*, i64** %5, align 8
  %423 = load i64, i64* %27, align 8
  %424 = call i32 @copy_rtx(i64 %423)
  %425 = load i32, i32* @NULL_RTX, align 4
  %426 = call i64 @canon_reg(i32 %424, i32 %425)
  %427 = call i64 @validate_change(i64 %421, i64* %422, i64 %426, i32 0)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %420
  br label %436

430:                                              ; preds = %420
  %431 = load %struct.table_elt*, %struct.table_elt** %26, align 8
  %432 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %431, i32 0, i32 0
  store i32 1, i32* %432, align 8
  br label %433

433:                                              ; preds = %430
  br label %434

434:                                              ; preds = %433, %417
  br label %318

435:                                              ; preds = %318
  br label %436

436:                                              ; preds = %91, %151, %262, %302, %429, %435, %277, %272, %269
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @CONSTANT_ADDRESS_P(i64) #1

declare dso_local i64 @canon_for_address(i64) #1

declare dso_local i64 @fold_rtx(i64, i32) #1

declare dso_local i32 @address_cost(i64, i32) #1

declare dso_local i64 @rtx_cost(i64, i32) #1

declare dso_local i64 @approx_reg_cost(i64) #1

declare dso_local i64 @validate_change(i64, i64*, i64, i32) #1

declare dso_local i32 @HASH(i64, i32) #1

declare dso_local %struct.table_elt* @lookup(i64, i32, i32) #1

declare dso_local i64 @exp_equiv_p(i64, i64, i32, i32) #1

declare dso_local i64 @canon_reg(i32, i32) #1

declare dso_local i32 @copy_rtx(i64) #1

declare dso_local i64 @ARITHMETIC_P(i64) #1

declare dso_local i32 @COST(i64) #1

declare dso_local i64 @simplify_gen_binary(i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
