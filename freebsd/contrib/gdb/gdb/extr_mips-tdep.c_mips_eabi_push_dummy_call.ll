; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_eabi_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_eabi_push_dummy_call.c"
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
@.str = private unnamed_addr constant [50 x i8] c"mips_eabi_push_dummy_call: sp=0x%s allocated %ld\0A\00", align 1
@A0_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"mips_eabi_push_dummy_call: struct_return reg=%d 0x%s\0A\00", align 1
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"mips_eabi_push_dummy_call: %d len=%d type=%d\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" push\00", align 1
@FP_REGISTER_DOUBLE = common dso_local global i32 0, align 4
@MIPS_LAST_FP_ARG_REGNUM = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c" - fpreg=%d val=%s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" -- partial=%d\00", align 1
@MIPS_LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c" - stack_offset=0x%s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" longword_offset=0x%s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" @0x%s \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" - reg=%d val=%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @mips_eabi_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_eabi_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.value*, align 8
  %29 = alloca %struct.type*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
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
  %42 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %43 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %42)
  store %struct.gdbarch_tdep* %43, %struct.gdbarch_tdep** %24, align 8
  %44 = load %struct.regcache*, %struct.regcache** %12, align 8
  %45 = load i32, i32* @T9_REGNUM, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @regcache_cooked_write_signed(%struct.regcache* %44, i32 %45, i32 %46)
  %48 = load %struct.regcache*, %struct.regcache** %12, align 8
  %49 = load i32, i32* @RA_REGNUM, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @regcache_cooked_write_signed(%struct.regcache* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @align_down(i32 %52, i32 16)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @align_down(i32 %54, i32 16)
  store i32 %55, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %56

56:                                               ; preds = %73, %9
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.value**, %struct.value*** %15, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.value*, %struct.value** %61, i64 %63
  %65 = load %struct.value*, %struct.value** %64, align 8
  %66 = call %struct.type* @VALUE_TYPE(%struct.value* %65)
  %67 = call i32 @TYPE_LENGTH(%struct.type* %66)
  %68 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %69 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %68)
  %70 = call i32 @align_up(i32 %67, i32 %69)
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %22, align 4
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %21, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32, i32* %22, align 4
  %78 = call i32 @align_up(i32 %77, i32 16)
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %16, align 4
  %81 = load i64, i64* @mips_debug, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* @gdb_stdlog, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @paddr_nz(i32 %85)
  %87 = load i32, i32* %22, align 4
  %88 = call i32 @align_up(i32 %87, i32 16)
  %89 = sext i32 %88 to i64
  %90 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %83, %76
  %92 = load i32, i32* @A0_REGNUM, align 4
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* @current_gdbarch, align 4
  %94 = call i32 @mips_fpa0_regnum(i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load i64, i64* @mips_debug, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @gdb_stdlog, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @paddr_nz(i32 %103)
  %105 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = call i32 @write_register(i32 %107, i64 %110)
  br label %112

112:                                              ; preds = %106, %91
  store i32 0, i32* %21, align 4
  br label %113

113:                                              ; preds = %469, %112
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %472

117:                                              ; preds = %113
  %118 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %26, align 8
  %121 = alloca i8, i64 %119, align 16
  store i64 %119, i64* %27, align 8
  %122 = load %struct.value**, %struct.value*** %15, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.value*, %struct.value** %122, i64 %124
  %126 = load %struct.value*, %struct.value** %125, align 8
  store %struct.value* %126, %struct.value** %28, align 8
  %127 = load %struct.value*, %struct.value** %28, align 8
  %128 = call %struct.type* @VALUE_TYPE(%struct.value* %127)
  %129 = call %struct.type* @check_typedef(%struct.type* %128)
  store %struct.type* %129, %struct.type** %29, align 8
  %130 = load %struct.type*, %struct.type** %29, align 8
  %131 = call i32 @TYPE_LENGTH(%struct.type* %130)
  store i32 %131, i32* %30, align 4
  %132 = load %struct.type*, %struct.type** %29, align 8
  %133 = call i32 @TYPE_CODE(%struct.type* %132)
  store i32 %133, i32* %31, align 4
  %134 = load i64, i64* @mips_debug, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %117
  %137 = load i32, i32* @gdb_stdlog, align 4
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* %30, align 4
  %141 = load i32, i32* %31, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %137, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %136, %117
  %144 = load i32, i32* %30, align 4
  %145 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %146 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %145)
  %147 = icmp sgt i32 %144, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %143
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %31, align 4
  %154 = load i32, i32* @TYPE_CODE_UNION, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %152, %148
  %157 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %158 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %157)
  %159 = load %struct.value*, %struct.value** %28, align 8
  %160 = call i32 @VALUE_ADDRESS(%struct.value* %159)
  %161 = call i32 @store_unsigned_integer(i8* %121, i32 %158, i32 %160)
  %162 = load i32, i32* @TYPE_CODE_PTR, align 4
  store i32 %162, i32* %31, align 4
  %163 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %164 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %163)
  store i32 %164, i32* %30, align 4
  store i8* %121, i8** %25, align 8
  %165 = load i64, i64* @mips_debug, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i32, i32* @gdb_stdlog, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %156
  br label %175

171:                                              ; preds = %152, %143
  %172 = load %struct.value*, %struct.value** %28, align 8
  %173 = call i64 @VALUE_CONTENTS(%struct.value* %172)
  %174 = inttoptr i64 %173 to i8*
  store i8* %174, i8** %25, align 8
  br label %175

175:                                              ; preds = %171, %170
  %176 = load i32, i32* @FP_REGISTER_DOUBLE, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %31, align 4
  %180 = load %struct.type*, %struct.type** %29, align 8
  %181 = call i64 @fp_register_arg_p(i32 %179, %struct.type* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32, i32* %20, align 4
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %20, align 4
  br label %190

190:                                              ; preds = %187, %183
  br label %191

191:                                              ; preds = %190, %178, %175
  %192 = load i32, i32* %31, align 4
  %193 = load %struct.type*, %struct.type** %29, align 8
  %194 = call i64 @fp_register_arg_p(i32 %192, %struct.type* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %269

196:                                              ; preds = %191
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* @MIPS_LAST_FP_ARG_REGNUM, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %269

200:                                              ; preds = %196
  %201 = load i32, i32* @FP_REGISTER_DOUBLE, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %250, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %30, align 4
  %205 = icmp eq i32 %204, 8
  br i1 %205, label %206, label %250

206:                                              ; preds = %203
  %207 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %208 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 4, i32 0
  store i32 %211, i32* %32, align 4
  %212 = load i8*, i8** %25, align 8
  %213 = load i32, i32* %32, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = call i64 @extract_unsigned_integer(i8* %215, i32 4)
  store i64 %216, i64* %33, align 8
  %217 = load i64, i64* @mips_debug, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %206
  %220 = load i32, i32* @gdb_stdlog, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i64, i64* %33, align 8
  %223 = call i32 @phex(i64 %222, i32 4)
  %224 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %221, i32 %223)
  br label %225

225:                                              ; preds = %219, %206
  %226 = load i32, i32* %20, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %20, align 4
  %228 = load i64, i64* %33, align 8
  %229 = call i32 @write_register(i32 %226, i64 %228)
  %230 = load i8*, i8** %25, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 4
  %232 = load i32, i32* %32, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 0, %233
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = call i64 @extract_unsigned_integer(i8* %235, i32 4)
  store i64 %236, i64* %33, align 8
  %237 = load i64, i64* @mips_debug, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %225
  %240 = load i32, i32* @gdb_stdlog, align 4
  %241 = load i32, i32* %20, align 4
  %242 = load i64, i64* %33, align 8
  %243 = call i32 @phex(i64 %242, i32 4)
  %244 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %241, i32 %243)
  br label %245

245:                                              ; preds = %239, %225
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %20, align 4
  %248 = load i64, i64* %33, align 8
  %249 = call i32 @write_register(i32 %246, i64 %248)
  br label %268

250:                                              ; preds = %203, %200
  %251 = load i8*, i8** %25, align 8
  %252 = load i32, i32* %30, align 4
  %253 = call i64 @extract_unsigned_integer(i8* %251, i32 %252)
  store i64 %253, i64* %34, align 8
  %254 = load i64, i64* @mips_debug, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = load i32, i32* @gdb_stdlog, align 4
  %258 = load i32, i32* %20, align 4
  %259 = load i64, i64* %34, align 8
  %260 = load i32, i32* %30, align 4
  %261 = call i32 @phex(i64 %259, i32 %260)
  %262 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %257, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %258, i32 %261)
  br label %263

263:                                              ; preds = %256, %250
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %20, align 4
  %266 = load i64, i64* %34, align 8
  %267 = call i32 @write_register(i32 %264, i64 %266)
  br label %268

268:                                              ; preds = %263, %245
  br label %461

269:                                              ; preds = %196, %191
  %270 = load i32, i32* %30, align 4
  %271 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %272 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %271)
  %273 = icmp sgt i32 %270, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load i32, i32* %30, align 4
  %276 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %277 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %276)
  %278 = srem i32 %275, %277
  %279 = icmp ne i32 %278, 0
  br label %280

280:                                              ; preds = %274, %269
  %281 = phi i1 [ false, %269 ], [ %279, %274 ]
  %282 = zext i1 %281 to i32
  store i32 %282, i32* %35, align 4
  br label %283

283:                                              ; preds = %459, %280
  %284 = load i32, i32* %30, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %460

286:                                              ; preds = %283
  store i32 0, i32* %36, align 4
  %287 = load i32, i32* %30, align 4
  %288 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %289 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %288)
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = load i32, i32* %30, align 4
  br label %296

293:                                              ; preds = %286
  %294 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %295 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %294)
  br label %296

296:                                              ; preds = %293, %291
  %297 = phi i32 [ %292, %291 ], [ %295, %293 ]
  store i32 %297, i32* %37, align 4
  %298 = load i64, i64* @mips_debug, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %296
  %301 = load i32, i32* @gdb_stdlog, align 4
  %302 = load i32, i32* %37, align 4
  %303 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %301, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, i32* %19, align 4
  %306 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %316, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* %35, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %31, align 4
  %313 = load %struct.type*, %struct.type** %29, align 8
  %314 = call i64 @fp_register_arg_p(i32 %312, %struct.type* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %413

316:                                              ; preds = %311, %308, %304
  store i32 0, i32* %38, align 4
  store i32 1, i32* %36, align 4
  %317 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %318 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %365

320:                                              ; preds = %316
  %321 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %322 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %321)
  %323 = icmp eq i32 %322, 8
  br i1 %323, label %324, label %344

324:                                              ; preds = %320
  %325 = load i32, i32* %31, align 4
  %326 = load i32, i32* @TYPE_CODE_INT, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %336, label %328

328:                                              ; preds = %324
  %329 = load i32, i32* %31, align 4
  %330 = load i32, i32* @TYPE_CODE_PTR, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = load i32, i32* %31, align 4
  %334 = load i32, i32* @TYPE_CODE_FLT, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %332, %328, %324
  %337 = load i32, i32* %30, align 4
  %338 = icmp sle i32 %337, 4
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %341 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %340)
  %342 = load i32, i32* %30, align 4
  %343 = sub nsw i32 %341, %342
  store i32 %343, i32* %38, align 4
  br label %364

344:                                              ; preds = %336, %332, %320
  %345 = load i32, i32* %31, align 4
  %346 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = load i32, i32* %31, align 4
  %350 = load i32, i32* @TYPE_CODE_UNION, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %363

352:                                              ; preds = %348, %344
  %353 = load %struct.type*, %struct.type** %29, align 8
  %354 = call i32 @TYPE_LENGTH(%struct.type* %353)
  %355 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %356 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %355)
  %357 = icmp slt i32 %354, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %352
  %359 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %360 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %359)
  %361 = load i32, i32* %30, align 4
  %362 = sub nsw i32 %360, %361
  store i32 %362, i32* %38, align 4
  br label %363

363:                                              ; preds = %358, %352, %348
  br label %364

364:                                              ; preds = %363, %339
  br label %365

365:                                              ; preds = %364, %316
  %366 = load i64, i64* @mips_debug, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %365
  %369 = load i32, i32* @gdb_stdlog, align 4
  %370 = load i32, i32* %23, align 4
  %371 = call i32 @paddr_nz(i32 %370)
  %372 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %369, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* @gdb_stdlog, align 4
  %374 = load i32, i32* %38, align 4
  %375 = call i32 @paddr_nz(i32 %374)
  %376 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %373, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %375)
  br label %377

377:                                              ; preds = %368, %365
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %23, align 4
  %380 = add nsw i32 %378, %379
  %381 = load i32, i32* %38, align 4
  %382 = add nsw i32 %380, %381
  store i32 %382, i32* %39, align 4
  %383 = load i64, i64* @mips_debug, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %408

385:                                              ; preds = %377
  %386 = load i32, i32* @gdb_stdlog, align 4
  %387 = load i32, i32* %39, align 4
  %388 = call i32 @paddr_nz(i32 %387)
  %389 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %388)
  store i32 0, i32* %40, align 4
  br label %390

390:                                              ; preds = %404, %385
  %391 = load i32, i32* %40, align 4
  %392 = load i32, i32* %37, align 4
  %393 = icmp slt i32 %391, %392
  br i1 %393, label %394, label %407

394:                                              ; preds = %390
  %395 = load i32, i32* @gdb_stdlog, align 4
  %396 = load i8*, i8** %25, align 8
  %397 = load i32, i32* %40, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = and i32 %401, 255
  %403 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %395, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %402)
  br label %404

404:                                              ; preds = %394
  %405 = load i32, i32* %40, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %40, align 4
  br label %390

407:                                              ; preds = %390
  br label %408

408:                                              ; preds = %407, %377
  %409 = load i32, i32* %39, align 4
  %410 = load i8*, i8** %25, align 8
  %411 = load i32, i32* %37, align 4
  %412 = call i32 @write_memory(i32 %409, i8* %410, i32 %411)
  br label %413

413:                                              ; preds = %408, %311
  %414 = load i32, i32* %19, align 4
  %415 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %416 = icmp sle i32 %414, %415
  br i1 %416, label %417, label %442

417:                                              ; preds = %413
  %418 = load i32, i32* %31, align 4
  %419 = load %struct.type*, %struct.type** %29, align 8
  %420 = call i64 @fp_register_arg_p(i32 %418, %struct.type* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %442, label %422

422:                                              ; preds = %417
  %423 = load i8*, i8** %25, align 8
  %424 = load i32, i32* %37, align 4
  %425 = call i64 @extract_unsigned_integer(i8* %423, i32 %424)
  store i64 %425, i64* %41, align 8
  %426 = load i64, i64* @mips_debug, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %436

428:                                              ; preds = %422
  %429 = load i32, i32* @gdb_stdlog, align 4
  %430 = load i32, i32* %19, align 4
  %431 = load i64, i64* %41, align 8
  %432 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %433 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %432)
  %434 = call i32 @phex(i64 %431, i32 %433)
  %435 = call i32 @fprintf_filtered(i32 %429, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %430, i32 %434)
  br label %436

436:                                              ; preds = %428, %422
  %437 = load i32, i32* %19, align 4
  %438 = load i64, i64* %41, align 8
  %439 = call i32 @write_register(i32 %437, i64 %438)
  %440 = load i32, i32* %19, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %19, align 4
  br label %442

442:                                              ; preds = %436, %417, %413
  %443 = load i32, i32* %37, align 4
  %444 = load i32, i32* %30, align 4
  %445 = sub nsw i32 %444, %443
  store i32 %445, i32* %30, align 4
  %446 = load i32, i32* %37, align 4
  %447 = load i8*, i8** %25, align 8
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i8, i8* %447, i64 %448
  store i8* %449, i8** %25, align 8
  %450 = load i32, i32* %36, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %442
  %453 = load i32, i32* %37, align 4
  %454 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %455 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %454)
  %456 = call i32 @align_up(i32 %453, i32 %455)
  %457 = load i32, i32* %23, align 4
  %458 = add nsw i32 %457, %456
  store i32 %458, i32* %23, align 4
  br label %459

459:                                              ; preds = %452, %442
  br label %283

460:                                              ; preds = %283
  br label %461

461:                                              ; preds = %460, %268
  %462 = load i64, i64* @mips_debug, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %461
  %465 = load i32, i32* @gdb_stdlog, align 4
  %466 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %465, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %467

467:                                              ; preds = %464, %461
  %468 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %468)
  br label %469

469:                                              ; preds = %467
  %470 = load i32, i32* %21, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %21, align 4
  br label %113

472:                                              ; preds = %113
  %473 = load %struct.regcache*, %struct.regcache** %12, align 8
  %474 = load i32, i32* @SP_REGNUM, align 4
  %475 = load i32, i32* %16, align 4
  %476 = call i32 @regcache_cooked_write_signed(%struct.regcache* %473, i32 %474, i32 %475)
  %477 = load i32, i32* %16, align 4
  ret i32 %477
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

declare dso_local i32 @write_register(i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @fp_register_arg_p(i32, %struct.type*) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @phex(i64, i32) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
