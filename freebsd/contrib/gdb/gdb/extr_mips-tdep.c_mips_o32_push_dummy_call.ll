; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_o32_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_o32_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.gdbarch_tdep = type { i32 }
%struct.type = type { i32 }

@T9_REGNUM = common dso_local global i32 0, align 4
@RA_REGNUM = common dso_local global i32 0, align 4
@mips_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"mips_o32_push_dummy_call: sp=0x%s allocated %ld\0A\00", align 1
@A0_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"mips_o32_push_dummy_call: struct_return reg=%d 0x%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"mips_o32_push_dummy_call: %d len=%d type=%d\00", align 1
@FP_REGISTER_DOUBLE = common dso_local global i64 0, align 8
@MIPS_LAST_FP_ARG_REGNUM = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c" - fpreg=%d val=%s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" - reg=%d val=%s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" -- partial=%d\00", align 1
@MIPS_LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c" - stack_offset=0x%s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" longword_offset=0x%s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" @0x%s \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @mips_o32_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_o32_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.gdbarch_tdep*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.value*, align 8
  %27 = alloca %struct.type*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %40 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %41 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %40)
  store %struct.gdbarch_tdep* %41, %struct.gdbarch_tdep** %24, align 8
  %42 = load %struct.regcache*, %struct.regcache** %12, align 8
  %43 = load i32, i32* @T9_REGNUM, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @regcache_cooked_write_signed(%struct.regcache* %42, i32 %43, i32 %44)
  %46 = load %struct.regcache*, %struct.regcache** %12, align 8
  %47 = load i32, i32* @RA_REGNUM, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @regcache_cooked_write_signed(%struct.regcache* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @align_down(i32 %50, i32 16)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @align_down(i32 %52, i32 16)
  store i32 %53, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %71, %9
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.value**, %struct.value*** %15, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.value*, %struct.value** %59, i64 %61
  %63 = load %struct.value*, %struct.value** %62, align 8
  %64 = call %struct.type* @VALUE_TYPE(%struct.value* %63)
  %65 = call i32 @TYPE_LENGTH(%struct.type* %64)
  %66 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %67 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %66)
  %68 = call i32 @align_up(i32 %65, i32 %67)
  %69 = load i32, i32* %22, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %22, align 4
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %21, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i32, i32* %22, align 4
  %76 = call i32 @align_up(i32 %75, i32 16)
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %16, align 4
  %79 = load i64, i64* @mips_debug, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* @gdb_stdlog, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @paddr_nz(i32 %83)
  %85 = load i32, i32* %22, align 4
  %86 = call i32 @align_up(i32 %85, i32 16)
  %87 = sext i32 %86 to i64
  %88 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i32, i32* @A0_REGNUM, align 4
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* @current_gdbarch, align 4
  %92 = call i32 @mips_fpa0_regnum(i32 %91)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i64, i64* @mips_debug, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @gdb_stdlog, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @paddr_nz(i32 %101)
  %103 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %99, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %98, %95
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @write_register(i32 %105, i32 %107)
  %109 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %110 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %109)
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %104, %89
  store i32 0, i32* %21, align 4
  br label %114

114:                                              ; preds = %522, %113
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %525

118:                                              ; preds = %114
  %119 = load %struct.value**, %struct.value*** %15, align 8
  %120 = load i32, i32* %21, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.value*, %struct.value** %119, i64 %121
  %123 = load %struct.value*, %struct.value** %122, align 8
  store %struct.value* %123, %struct.value** %26, align 8
  %124 = load %struct.value*, %struct.value** %26, align 8
  %125 = call %struct.type* @VALUE_TYPE(%struct.value* %124)
  %126 = call %struct.type* @check_typedef(%struct.type* %125)
  store %struct.type* %126, %struct.type** %27, align 8
  %127 = load %struct.type*, %struct.type** %27, align 8
  %128 = call i32 @TYPE_LENGTH(%struct.type* %127)
  store i32 %128, i32* %28, align 4
  %129 = load %struct.type*, %struct.type** %27, align 8
  %130 = call i32 @TYPE_CODE(%struct.type* %129)
  store i32 %130, i32* %29, align 4
  %131 = load i64, i64* @mips_debug, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %118
  %134 = load i32, i32* @gdb_stdlog, align 4
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %28, align 4
  %138 = load i32, i32* %29, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %134, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %118
  %141 = load %struct.value*, %struct.value** %26, align 8
  %142 = call i64 @VALUE_CONTENTS(%struct.value* %141)
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %25, align 8
  %144 = load i64, i64* @FP_REGISTER_DOUBLE, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %29, align 4
  %148 = load %struct.type*, %struct.type** %27, align 8
  %149 = call i64 @fp_register_arg_p(i32 %147, %struct.type* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* %20, align 4
  %153 = and i32 %152, 1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %155, %151
  br label %159

159:                                              ; preds = %158, %146, %140
  %160 = load i32, i32* %29, align 4
  %161 = load %struct.type*, %struct.type** %27, align 8
  %162 = call i64 @fp_register_arg_p(i32 %160, %struct.type* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %299

164:                                              ; preds = %159
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* @MIPS_LAST_FP_ARG_REGNUM, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %299

168:                                              ; preds = %164
  %169 = load i64, i64* @FP_REGISTER_DOUBLE, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %254, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %28, align 4
  %173 = icmp eq i32 %172, 8
  br i1 %173, label %174, label %254

174:                                              ; preds = %171
  %175 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %176 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %177 = icmp eq i64 %175, %176
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 4, i32 0
  store i32 %179, i32* %30, align 4
  %180 = load i8*, i8** %25, align 8
  %181 = load i32, i32* %30, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = call i8* @extract_unsigned_integer(i8* %183, i32 4)
  %185 = ptrtoint i8* %184 to i64
  store i64 %185, i64* %31, align 8
  %186 = load i64, i64* @mips_debug, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %174
  %189 = load i32, i32* @gdb_stdlog, align 4
  %190 = load i32, i32* %20, align 4
  %191 = load i64, i64* %31, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @phex(i32 %192, i32 4)
  %194 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %188, %174
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %20, align 4
  %198 = load i64, i64* %31, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @write_register(i32 %196, i32 %199)
  %201 = load i64, i64* @mips_debug, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %195
  %204 = load i32, i32* @gdb_stdlog, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i64, i64* %31, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @phex(i32 %207, i32 4)
  %209 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %203, %195
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %19, align 4
  %213 = load i64, i64* %31, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 @write_register(i32 %211, i32 %214)
  %216 = load i8*, i8** %25, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 4
  %218 = load i32, i32* %30, align 4
  %219 = sext i32 %218 to i64
  %220 = sub i64 0, %219
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = call i8* @extract_unsigned_integer(i8* %221, i32 4)
  %223 = ptrtoint i8* %222 to i64
  store i64 %223, i64* %31, align 8
  %224 = load i64, i64* @mips_debug, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %210
  %227 = load i32, i32* @gdb_stdlog, align 4
  %228 = load i32, i32* %20, align 4
  %229 = load i64, i64* %31, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 @phex(i32 %230, i32 4)
  %232 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %231)
  br label %233

233:                                              ; preds = %226, %210
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  %236 = load i64, i64* %31, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @write_register(i32 %234, i32 %237)
  %239 = load i64, i64* @mips_debug, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %233
  %242 = load i32, i32* @gdb_stdlog, align 4
  %243 = load i32, i32* %19, align 4
  %244 = load i64, i64* %31, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @phex(i32 %245, i32 4)
  %247 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %242, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %241, %233
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %19, align 4
  %251 = load i64, i64* %31, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @write_register(i32 %249, i32 %252)
  br label %292

254:                                              ; preds = %171, %168
  %255 = load i8*, i8** %25, align 8
  %256 = load i32, i32* %28, align 4
  %257 = call i8* @extract_unsigned_integer(i8* %255, i32 %256)
  %258 = ptrtoint i8* %257 to i32
  store i32 %258, i32* %32, align 4
  %259 = load i64, i64* @mips_debug, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %254
  %262 = load i32, i32* @gdb_stdlog, align 4
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %32, align 4
  %265 = load i32, i32* %28, align 4
  %266 = call i32 @phex(i32 %264, i32 %265)
  %267 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %261, %254
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %20, align 4
  %271 = load i32, i32* %32, align 4
  %272 = call i32 @write_register(i32 %269, i32 %271)
  %273 = load i64, i64* @mips_debug, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %268
  %276 = load i32, i32* @gdb_stdlog, align 4
  %277 = load i32, i32* %19, align 4
  %278 = load i32, i32* %32, align 4
  %279 = load i32, i32* %28, align 4
  %280 = call i32 @phex(i32 %278, i32 %279)
  %281 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %276, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %275, %268
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %32, align 4
  %285 = call i32 @write_register(i32 %283, i32 %284)
  %286 = load i64, i64* @FP_REGISTER_DOUBLE, align 8
  %287 = icmp ne i64 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 1, i32 2
  %290 = load i32, i32* %19, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %19, align 4
  br label %292

292:                                              ; preds = %282, %248
  %293 = load i32, i32* %28, align 4
  %294 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %295 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %294)
  %296 = call i32 @align_up(i32 %293, i32 %295)
  %297 = load i32, i32* %23, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %23, align 4
  br label %515

299:                                              ; preds = %164, %159
  %300 = load i32, i32* %28, align 4
  %301 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %302 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %301)
  %303 = icmp sgt i32 %300, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load i32, i32* %28, align 4
  %306 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %307 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %306)
  %308 = srem i32 %305, %307
  %309 = icmp ne i32 %308, 0
  br label %310

310:                                              ; preds = %304, %299
  %311 = phi i1 [ false, %299 ], [ %309, %304 ]
  %312 = zext i1 %311 to i32
  store i32 %312, i32* %33, align 4
  %313 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %314 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %313)
  %315 = icmp slt i32 %314, 8
  br i1 %315, label %316, label %328

316:                                              ; preds = %310
  %317 = load %struct.type*, %struct.type** %27, align 8
  %318 = call i64 @mips_type_needs_double_align(%struct.type* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %316
  %321 = load i32, i32* %19, align 4
  %322 = and i32 %321, 1
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load i32, i32* %19, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %19, align 4
  br label %327

327:                                              ; preds = %324, %320
  br label %328

328:                                              ; preds = %327, %316, %310
  br label %329

329:                                              ; preds = %500, %328
  %330 = load i32, i32* %28, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %514

332:                                              ; preds = %329
  store i32 0, i32* %34, align 4
  %333 = load i32, i32* %28, align 4
  %334 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %335 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %334)
  %336 = icmp slt i32 %333, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = load i32, i32* %28, align 4
  br label %342

339:                                              ; preds = %332
  %340 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %341 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %340)
  br label %342

342:                                              ; preds = %339, %337
  %343 = phi i32 [ %338, %337 ], [ %341, %339 ]
  store i32 %343, i32* %35, align 4
  %344 = load i64, i64* @mips_debug, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = load i32, i32* @gdb_stdlog, align 4
  %348 = load i32, i32* %35, align 4
  %349 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %348)
  br label %350

350:                                              ; preds = %346, %342
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %353 = icmp sgt i32 %351, %352
  br i1 %353, label %362, label %354

354:                                              ; preds = %350
  %355 = load i32, i32* %33, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %354
  %358 = load i32, i32* %29, align 4
  %359 = load %struct.type*, %struct.type** %27, align 8
  %360 = call i64 @fp_register_arg_p(i32 %358, %struct.type* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %439

362:                                              ; preds = %357, %354, %350
  store i32 0, i32* %36, align 4
  store i32 1, i32* %34, align 4
  %363 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %364 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %391

366:                                              ; preds = %362
  %367 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %368 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %367)
  %369 = icmp eq i32 %368, 8
  br i1 %369, label %370, label %390

370:                                              ; preds = %366
  %371 = load i32, i32* %29, align 4
  %372 = load i32, i32* @TYPE_CODE_INT, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %382, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* %29, align 4
  %376 = load i32, i32* @TYPE_CODE_PTR, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %29, align 4
  %380 = load i32, i32* @TYPE_CODE_FLT, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %390

382:                                              ; preds = %378, %374, %370
  %383 = load i32, i32* %28, align 4
  %384 = icmp sle i32 %383, 4
  br i1 %384, label %385, label %390

385:                                              ; preds = %382
  %386 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %387 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %386)
  %388 = load i32, i32* %28, align 4
  %389 = sub nsw i32 %387, %388
  store i32 %389, i32* %36, align 4
  br label %390

390:                                              ; preds = %385, %382, %378, %366
  br label %391

391:                                              ; preds = %390, %362
  %392 = load i64, i64* @mips_debug, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %391
  %395 = load i32, i32* @gdb_stdlog, align 4
  %396 = load i32, i32* %23, align 4
  %397 = call i32 @paddr_nz(i32 %396)
  %398 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %395, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %397)
  %399 = load i32, i32* @gdb_stdlog, align 4
  %400 = load i32, i32* %36, align 4
  %401 = call i32 @paddr_nz(i32 %400)
  %402 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %399, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %401)
  br label %403

403:                                              ; preds = %394, %391
  %404 = load i32, i32* %16, align 4
  %405 = load i32, i32* %23, align 4
  %406 = add nsw i32 %404, %405
  %407 = load i32, i32* %36, align 4
  %408 = add nsw i32 %406, %407
  store i32 %408, i32* %37, align 4
  %409 = load i64, i64* @mips_debug, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %434

411:                                              ; preds = %403
  %412 = load i32, i32* @gdb_stdlog, align 4
  %413 = load i32, i32* %37, align 4
  %414 = call i32 @paddr_nz(i32 %413)
  %415 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %412, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %414)
  store i32 0, i32* %38, align 4
  br label %416

416:                                              ; preds = %430, %411
  %417 = load i32, i32* %38, align 4
  %418 = load i32, i32* %35, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %433

420:                                              ; preds = %416
  %421 = load i32, i32* @gdb_stdlog, align 4
  %422 = load i8*, i8** %25, align 8
  %423 = load i32, i32* %38, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %422, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = and i32 %427, 255
  %429 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %421, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %420
  %431 = load i32, i32* %38, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %38, align 4
  br label %416

433:                                              ; preds = %416
  br label %434

434:                                              ; preds = %433, %403
  %435 = load i32, i32* %37, align 4
  %436 = load i8*, i8** %25, align 8
  %437 = load i32, i32* %35, align 4
  %438 = call i32 @write_memory(i32 %435, i8* %436, i32 %437)
  br label %439

439:                                              ; preds = %434, %357
  %440 = load i32, i32* %19, align 4
  %441 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %442 = icmp sle i32 %440, %441
  br i1 %442, label %443, label %500

443:                                              ; preds = %439
  %444 = load i32, i32* %29, align 4
  %445 = load %struct.type*, %struct.type** %27, align 8
  %446 = call i64 @fp_register_arg_p(i32 %444, %struct.type* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %500, label %448

448:                                              ; preds = %443
  %449 = load i8*, i8** %25, align 8
  %450 = load i32, i32* %35, align 4
  %451 = call i32 @extract_signed_integer(i8* %449, i32 %450)
  store i32 %451, i32* %39, align 4
  %452 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %453 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %452)
  %454 = icmp slt i32 %453, 8
  br i1 %454, label %455, label %481

455:                                              ; preds = %448
  %456 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %457 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %481

459:                                              ; preds = %455
  %460 = load i32, i32* %35, align 4
  %461 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %462 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %461)
  %463 = icmp slt i32 %460, %462
  br i1 %463, label %464, label %481

464:                                              ; preds = %459
  %465 = load i32, i32* %29, align 4
  %466 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %472, label %468

468:                                              ; preds = %464
  %469 = load i32, i32* %29, align 4
  %470 = load i32, i32* @TYPE_CODE_UNION, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %481

472:                                              ; preds = %468, %464
  %473 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %474 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %473)
  %475 = load i32, i32* %35, align 4
  %476 = sub nsw i32 %474, %475
  %477 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %478 = mul nsw i32 %476, %477
  %479 = load i32, i32* %39, align 4
  %480 = shl i32 %479, %478
  store i32 %480, i32* %39, align 4
  br label %481

481:                                              ; preds = %472, %468, %459, %455, %448
  %482 = load i64, i64* @mips_debug, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %492

484:                                              ; preds = %481
  %485 = load i32, i32* @gdb_stdlog, align 4
  %486 = load i32, i32* %19, align 4
  %487 = load i32, i32* %39, align 4
  %488 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %489 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %488)
  %490 = call i32 @phex(i32 %487, i32 %489)
  %491 = call i32 @fprintf_filtered(i32 %485, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %486, i32 %490)
  br label %492

492:                                              ; preds = %484, %481
  %493 = load i32, i32* %19, align 4
  %494 = load i32, i32* %39, align 4
  %495 = call i32 @write_register(i32 %493, i32 %494)
  %496 = load i32, i32* %19, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %19, align 4
  %498 = load i32, i32* @MIPS_LAST_FP_ARG_REGNUM, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %20, align 4
  br label %500

500:                                              ; preds = %492, %443, %439
  %501 = load i32, i32* %35, align 4
  %502 = load i32, i32* %28, align 4
  %503 = sub nsw i32 %502, %501
  store i32 %503, i32* %28, align 4
  %504 = load i32, i32* %35, align 4
  %505 = load i8*, i8** %25, align 8
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds i8, i8* %505, i64 %506
  store i8* %507, i8** %25, align 8
  %508 = load i32, i32* %35, align 4
  %509 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %510 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %509)
  %511 = call i32 @align_up(i32 %508, i32 %510)
  %512 = load i32, i32* %23, align 4
  %513 = add nsw i32 %512, %511
  store i32 %513, i32* %23, align 4
  br label %329

514:                                              ; preds = %329
  br label %515

515:                                              ; preds = %514, %292
  %516 = load i64, i64* @mips_debug, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = load i32, i32* @gdb_stdlog, align 4
  %520 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %519, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %521

521:                                              ; preds = %518, %515
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %21, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %21, align 4
  br label %114

525:                                              ; preds = %114
  %526 = load %struct.regcache*, %struct.regcache** %12, align 8
  %527 = load i32, i32* @SP_REGNUM, align 4
  %528 = load i32, i32* %16, align 4
  %529 = call i32 @regcache_cooked_write_signed(%struct.regcache* %526, i32 %527, i32 %528)
  %530 = load i32, i32* %16, align 4
  ret i32 %530
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @regcache_cooked_write_signed(%struct.regcache*, i32, i32) #1

declare dso_local i32 @align_down(i32, i32) #1

declare dso_local i32 @align_up(i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @mips_stack_argsize(%struct.gdbarch_tdep*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @mips_fpa0_regnum(i32) #1

declare dso_local i32 @write_register(i32, i32) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @fp_register_arg_p(i32, %struct.type*) #1

declare dso_local i8* @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @phex(i32, i32) #1

declare dso_local i32 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

declare dso_local i64 @mips_type_needs_double_align(%struct.type*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @extract_signed_integer(i8*, i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
