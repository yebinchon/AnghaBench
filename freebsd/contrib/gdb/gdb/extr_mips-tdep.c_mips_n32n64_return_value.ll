; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_n32n64_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_n32n64_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i64 }
%struct.TYPE_2__ = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MIPS_FPU_NONE = common dso_local global i64 0, align 8
@mips_debug = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Return float in $fp0\0A\00", align 1
@NUM_REGS = common dso_local global i64 0, align 8
@TARGET_BYTE_ORDER = common dso_local global i32 0, align 4
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Return float struct+%d\0A\00", align 1
@V0_REGNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Return struct+%d:%d in $%d\0A\00", align 1
@BFD_ENDIAN_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Return scalar+%d:%d in $%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*)* @mips_n32n64_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_n32n64_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.regcache*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gdbarch_tdep*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.regcache* %2, %struct.regcache** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i32, i32* @current_gdbarch, align 4
  %23 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %22)
  store %struct.gdbarch_tdep* %23, %struct.gdbarch_tdep** %12, align 8
  %24 = load %struct.type*, %struct.type** %8, align 8
  %25 = call i64 @TYPE_CODE(%struct.type* %24)
  %26 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %5
  %29 = load %struct.type*, %struct.type** %8, align 8
  %30 = call i64 @TYPE_CODE(%struct.type* %29)
  %31 = load i64, i64* @TYPE_CODE_UNION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.type*, %struct.type** %8, align 8
  %35 = call i64 @TYPE_CODE(%struct.type* %34)
  %36 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.type*, %struct.type** %8, align 8
  %40 = call i32 @TYPE_LENGTH(%struct.type* %39)
  %41 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %42 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %41)
  %43 = mul nsw i32 2, %42
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38, %33, %28, %5
  %46 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %46, i32* %6, align 4
  br label %289

47:                                               ; preds = %38
  %48 = load %struct.type*, %struct.type** %8, align 8
  %49 = call i64 @TYPE_CODE(%struct.type* %48)
  %50 = load i64, i64* @TYPE_CODE_FLT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %54 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MIPS_FPU_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i64, i64* @mips_debug, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @gdb_stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.regcache*, %struct.regcache** %9, align 8
  %66 = load i64, i64* @NUM_REGS, align 8
  %67 = load i32, i32* @current_gdbarch, align 4
  %68 = call %struct.TYPE_2__* @mips_regnum(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %66, %71
  %73 = load %struct.type*, %struct.type** %8, align 8
  %74 = call i32 @TYPE_LENGTH(%struct.type* %73)
  %75 = load i32, i32* @TARGET_BYTE_ORDER, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @mips_xfer_register(%struct.regcache* %65, i64 %72, i32 %74, i32 %75, i8* %76, i8* %77, i32 0)
  %79 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %79, i32* %6, align 4
  br label %289

80:                                               ; preds = %52, %47
  %81 = load %struct.type*, %struct.type** %8, align 8
  %82 = call i64 @TYPE_CODE(%struct.type* %81)
  %83 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %173

85:                                               ; preds = %80
  %86 = load %struct.type*, %struct.type** %8, align 8
  %87 = call i32 @TYPE_NFIELDS(%struct.type* %86)
  %88 = icmp sle i32 %87, 2
  br i1 %88, label %89, label %173

89:                                               ; preds = %85
  %90 = load %struct.type*, %struct.type** %8, align 8
  %91 = call i32 @TYPE_NFIELDS(%struct.type* %90)
  %92 = icmp sge i32 %91, 1
  br i1 %92, label %93, label %173

93:                                               ; preds = %89
  %94 = load %struct.type*, %struct.type** %8, align 8
  %95 = call i32 @TYPE_NFIELDS(%struct.type* %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.type*, %struct.type** %8, align 8
  %99 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %98, i32 0)
  %100 = call i64 @TYPE_CODE(%struct.type* %99)
  %101 = load i64, i64* @TYPE_CODE_FLT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %119, label %103

103:                                              ; preds = %97, %93
  %104 = load %struct.type*, %struct.type** %8, align 8
  %105 = call i32 @TYPE_NFIELDS(%struct.type* %104)
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %173

107:                                              ; preds = %103
  %108 = load %struct.type*, %struct.type** %8, align 8
  %109 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %108, i32 0)
  %110 = call i64 @TYPE_CODE(%struct.type* %109)
  %111 = load i64, i64* @TYPE_CODE_FLT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %173

113:                                              ; preds = %107
  %114 = load %struct.type*, %struct.type** %8, align 8
  %115 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %114, i32 1)
  %116 = call i64 @TYPE_CODE(%struct.type* %115)
  %117 = load i64, i64* @TYPE_CODE_FLT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %113, %97
  %120 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %121 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MIPS_FPU_NONE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %173

125:                                              ; preds = %119
  store i32 0, i32* %14, align 4
  %126 = load i32, i32* @current_gdbarch, align 4
  %127 = call %struct.TYPE_2__* @mips_regnum(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %166, %125
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.type*, %struct.type** %8, align 8
  %133 = call i32 @TYPE_NFIELDS(%struct.type* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %130
  %136 = load %struct.type*, %struct.type** %8, align 8
  %137 = call i32* @TYPE_FIELDS(%struct.type* %136)
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @FIELD_BITPOS(i32 %141)
  %143 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %144 = sdiv i32 %142, %143
  store i32 %144, i32* %15, align 4
  %145 = load i64, i64* @mips_debug, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load i32, i32* @gdb_stderr, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %147, %135
  %152 = load %struct.regcache*, %struct.regcache** %9, align 8
  %153 = load i64, i64* @NUM_REGS, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load %struct.type*, %struct.type** %8, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %157, i32 %158)
  %160 = call i32 @TYPE_LENGTH(%struct.type* %159)
  %161 = load i32, i32* @TARGET_BYTE_ORDER, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @mips_xfer_register(%struct.regcache* %152, i64 %156, i32 %160, i32 %161, i8* %162, i8* %163, i32 %164)
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %13, align 4
  br label %130

171:                                              ; preds = %130
  %172 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %172, i32* %6, align 4
  br label %289

173:                                              ; preds = %119, %113, %107, %103, %89, %85, %80
  %174 = load %struct.type*, %struct.type** %8, align 8
  %175 = call i64 @TYPE_CODE(%struct.type* %174)
  %176 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.type*, %struct.type** %8, align 8
  %180 = call i64 @TYPE_CODE(%struct.type* %179)
  %181 = load i64, i64* @TYPE_CODE_UNION, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %236

183:                                              ; preds = %178, %173
  store i32 0, i32* %16, align 4
  %184 = load i32, i32* @V0_REGNUM, align 4
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %226, %183
  %186 = load i32, i32* %16, align 4
  %187 = load %struct.type*, %struct.type** %8, align 8
  %188 = call i32 @TYPE_LENGTH(%struct.type* %187)
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %234

190:                                              ; preds = %185
  %191 = load i32, i32* @current_gdbarch, align 4
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @register_size(i32 %191, i32 %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %194, %195
  %197 = load %struct.type*, %struct.type** %8, align 8
  %198 = call i32 @TYPE_LENGTH(%struct.type* %197)
  %199 = icmp sgt i32 %196, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %190
  %201 = load %struct.type*, %struct.type** %8, align 8
  %202 = call i32 @TYPE_LENGTH(%struct.type* %201)
  %203 = load i32, i32* %16, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %18, align 4
  br label %205

205:                                              ; preds = %200, %190
  %206 = load i64, i64* @mips_debug, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32, i32* @gdb_stderr, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %18, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %208, %205
  %215 = load %struct.regcache*, %struct.regcache** %9, align 8
  %216 = load i64, i64* @NUM_REGS, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* @BFD_ENDIAN_UNKNOWN, align 4
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @mips_xfer_register(%struct.regcache* %215, i64 %219, i32 %220, i32 %221, i8* %222, i8* %223, i32 %224)
  br label %226

226:                                              ; preds = %214
  %227 = load i32, i32* @current_gdbarch, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @register_size(i32 %227, i32 %228)
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %17, align 4
  br label %185

234:                                              ; preds = %185
  %235 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %235, i32* %6, align 4
  br label %289

236:                                              ; preds = %178
  store i32 0, i32* %19, align 4
  %237 = load i32, i32* @V0_REGNUM, align 4
  store i32 %237, i32* %20, align 4
  br label %238

238:                                              ; preds = %279, %236
  %239 = load i32, i32* %19, align 4
  %240 = load %struct.type*, %struct.type** %8, align 8
  %241 = call i32 @TYPE_LENGTH(%struct.type* %240)
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %287

243:                                              ; preds = %238
  %244 = load i32, i32* @current_gdbarch, align 4
  %245 = load i32, i32* %20, align 4
  %246 = call i32 @register_size(i32 %244, i32 %245)
  store i32 %246, i32* %21, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %21, align 4
  %249 = add nsw i32 %247, %248
  %250 = load %struct.type*, %struct.type** %8, align 8
  %251 = call i32 @TYPE_LENGTH(%struct.type* %250)
  %252 = icmp sgt i32 %249, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %243
  %254 = load %struct.type*, %struct.type** %8, align 8
  %255 = call i32 @TYPE_LENGTH(%struct.type* %254)
  %256 = load i32, i32* %19, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %21, align 4
  br label %258

258:                                              ; preds = %253, %243
  %259 = load i64, i64* @mips_debug, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load i32, i32* @gdb_stderr, align 4
  %263 = load i32, i32* %19, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* %20, align 4
  %266 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %262, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %261, %258
  %268 = load %struct.regcache*, %struct.regcache** %9, align 8
  %269 = load i64, i64* @NUM_REGS, align 8
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %269, %271
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* @TARGET_BYTE_ORDER, align 4
  %275 = load i8*, i8** %10, align 8
  %276 = load i8*, i8** %11, align 8
  %277 = load i32, i32* %19, align 4
  %278 = call i32 @mips_xfer_register(%struct.regcache* %268, i64 %272, i32 %273, i32 %274, i8* %275, i8* %276, i32 %277)
  br label %279

279:                                              ; preds = %267
  %280 = load i32, i32* @current_gdbarch, align 4
  %281 = load i32, i32* %20, align 4
  %282 = call i32 @register_size(i32 %280, i32 %281)
  %283 = load i32, i32* %19, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %19, align 4
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %20, align 4
  br label %238

287:                                              ; preds = %238
  %288 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %287, %234, %171, %64, %45
  %290 = load i32, i32* %6, align 4
  ret i32 %290
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @mips_xfer_register(%struct.regcache*, i64, i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @FIELD_BITPOS(i32) #1

declare dso_local i32* @TYPE_FIELDS(%struct.type*) #1

declare dso_local i32 @register_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
