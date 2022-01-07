; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_n32n64_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_n32n64_push_dummy_call.c"
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
@.str = private unnamed_addr constant [52 x i8] c"mips_n32n64_push_dummy_call: sp=0x%s allocated %ld\0A\00", align 1
@A0_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"mips_n32n64_push_dummy_call: struct_return reg=%d 0x%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"mips_n32n64_push_dummy_call: %d len=%d type=%d\00", align 1
@MIPS_LAST_FP_ARG_REGNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c" - fpreg=%d val=%s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" - reg=%d val=%s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" -- partial=%d\00", align 1
@MIPS_LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @mips_n32n64_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_n32n64_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
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
  %38 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %39 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %38)
  store %struct.gdbarch_tdep* %39, %struct.gdbarch_tdep** %24, align 8
  %40 = load %struct.regcache*, %struct.regcache** %12, align 8
  %41 = load i32, i32* @T9_REGNUM, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @regcache_cooked_write_signed(%struct.regcache* %40, i32 %41, i32 %42)
  %44 = load %struct.regcache*, %struct.regcache** %12, align 8
  %45 = load i32, i32* @RA_REGNUM, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @regcache_cooked_write_signed(%struct.regcache* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @align_down(i32 %48, i32 16)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @align_down(i32 %50, i32 16)
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %69, %9
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.value**, %struct.value*** %15, align 8
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.value*, %struct.value** %57, i64 %59
  %61 = load %struct.value*, %struct.value** %60, align 8
  %62 = call %struct.type* @VALUE_TYPE(%struct.value* %61)
  %63 = call i32 @TYPE_LENGTH(%struct.type* %62)
  %64 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %65 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %64)
  %66 = call i32 @align_up(i32 %63, i32 %65)
  %67 = load i32, i32* %22, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %21, align 4
  br label %52

72:                                               ; preds = %52
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @align_up(i32 %73, i32 16)
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %16, align 4
  %77 = load i64, i64* @mips_debug, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* @gdb_stdlog, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @paddr_nz(i32 %81)
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @align_up(i32 %83, i32 16)
  %85 = sext i32 %84 to i64
  %86 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %82, i64 %85)
  br label %87

87:                                               ; preds = %79, %72
  %88 = load i32, i32* @A0_REGNUM, align 4
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* @current_gdbarch, align 4
  %90 = call i32 @mips_fpa0_regnum(i32 %89)
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %87
  %94 = load i64, i64* @mips_debug, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @gdb_stdlog, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @paddr_nz(i32 %99)
  %101 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %97, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @write_register(i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %102, %87
  store i32 0, i32* %21, align 4
  br label %108

108:                                              ; preds = %384, %107
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %387

112:                                              ; preds = %108
  %113 = load %struct.value**, %struct.value*** %15, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.value*, %struct.value** %113, i64 %115
  %117 = load %struct.value*, %struct.value** %116, align 8
  store %struct.value* %117, %struct.value** %26, align 8
  %118 = load %struct.value*, %struct.value** %26, align 8
  %119 = call %struct.type* @VALUE_TYPE(%struct.value* %118)
  %120 = call %struct.type* @check_typedef(%struct.type* %119)
  store %struct.type* %120, %struct.type** %27, align 8
  %121 = load %struct.type*, %struct.type** %27, align 8
  %122 = call i32 @TYPE_LENGTH(%struct.type* %121)
  store i32 %122, i32* %28, align 4
  %123 = load %struct.type*, %struct.type** %27, align 8
  %124 = call i32 @TYPE_CODE(%struct.type* %123)
  store i32 %124, i32* %29, align 4
  %125 = load i64, i64* @mips_debug, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %112
  %128 = load i32, i32* @gdb_stdlog, align 4
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %28, align 4
  %132 = load i32, i32* %29, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %112
  %135 = load %struct.value*, %struct.value** %26, align 8
  %136 = call i64 @VALUE_CONTENTS(%struct.value* %135)
  %137 = inttoptr i64 %136 to i8*
  store i8* %137, i8** %25, align 8
  %138 = load i32, i32* %29, align 4
  %139 = load %struct.type*, %struct.type** %27, align 8
  %140 = call i64 @fp_register_arg_p(i32 %138, %struct.type* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %179

142:                                              ; preds = %134
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @MIPS_LAST_FP_ARG_REGNUM, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %142
  %147 = load i8*, i8** %25, align 8
  %148 = load i32, i32* %28, align 4
  %149 = call i32 @extract_unsigned_integer(i8* %147, i32 %148)
  store i32 %149, i32* %30, align 4
  %150 = load i64, i64* @mips_debug, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32, i32* @gdb_stdlog, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %30, align 4
  %156 = load i32, i32* %28, align 4
  %157 = call i32 @phex(i32 %155, i32 %156)
  %158 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %153, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %152, %146
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %30, align 4
  %163 = call i32 @write_register(i32 %160, i32 %162)
  %164 = load i64, i64* @mips_debug, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load i32, i32* @gdb_stdlog, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %30, align 4
  %170 = load i32, i32* %28, align 4
  %171 = call i32 @phex(i32 %169, i32 %170)
  %172 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %166, %159
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %30, align 4
  %176 = call i32 @write_register(i32 %174, i32 %175)
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %19, align 4
  br label %377

179:                                              ; preds = %142, %134
  %180 = load i32, i32* %28, align 4
  %181 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %182 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %181)
  %183 = icmp sgt i32 %180, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, i32* %28, align 4
  %186 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %187 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %186)
  %188 = srem i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br label %190

190:                                              ; preds = %184, %179
  %191 = phi i1 [ false, %179 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %31, align 4
  br label %193

193:                                              ; preds = %375, %190
  %194 = load i32, i32* %28, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %376

196:                                              ; preds = %193
  store i32 0, i32* %32, align 4
  %197 = load i32, i32* %28, align 4
  %198 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %199 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %198)
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* %28, align 4
  br label %206

203:                                              ; preds = %196
  %204 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %205 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %204)
  br label %206

206:                                              ; preds = %203, %201
  %207 = phi i32 [ %202, %201 ], [ %205, %203 ]
  store i32 %207, i32* %33, align 4
  %208 = load i64, i64* @mips_debug, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32, i32* @gdb_stdlog, align 4
  %212 = load i32, i32* %33, align 4
  %213 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %210, %206
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %226, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %31, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %29, align 4
  %223 = load %struct.type*, %struct.type** %27, align 8
  %224 = call i64 @fp_register_arg_p(i32 %222, %struct.type* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %303

226:                                              ; preds = %221, %218, %214
  store i32 0, i32* %34, align 4
  store i32 1, i32* %32, align 4
  %227 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %228 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %255

230:                                              ; preds = %226
  %231 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %232 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %231)
  %233 = icmp eq i32 %232, 8
  br i1 %233, label %234, label %254

234:                                              ; preds = %230
  %235 = load i32, i32* %29, align 4
  %236 = load i32, i32* @TYPE_CODE_INT, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %246, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* %29, align 4
  %240 = load i32, i32* @TYPE_CODE_PTR, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %29, align 4
  %244 = load i32, i32* @TYPE_CODE_FLT, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %242, %238, %234
  %247 = load i32, i32* %28, align 4
  %248 = icmp sle i32 %247, 4
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %251 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %250)
  %252 = load i32, i32* %28, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %34, align 4
  br label %254

254:                                              ; preds = %249, %246, %242, %230
  br label %255

255:                                              ; preds = %254, %226
  %256 = load i64, i64* @mips_debug, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load i32, i32* @gdb_stdlog, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i32 @paddr_nz(i32 %260)
  %262 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @gdb_stdlog, align 4
  %264 = load i32, i32* %34, align 4
  %265 = call i32 @paddr_nz(i32 %264)
  %266 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %263, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %258, %255
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %23, align 4
  %270 = add nsw i32 %268, %269
  %271 = load i32, i32* %34, align 4
  %272 = add nsw i32 %270, %271
  store i32 %272, i32* %35, align 4
  %273 = load i64, i64* @mips_debug, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %298

275:                                              ; preds = %267
  %276 = load i32, i32* @gdb_stdlog, align 4
  %277 = load i32, i32* %35, align 4
  %278 = call i32 @paddr_nz(i32 %277)
  %279 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %278)
  store i32 0, i32* %36, align 4
  br label %280

280:                                              ; preds = %294, %275
  %281 = load i32, i32* %36, align 4
  %282 = load i32, i32* %33, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %297

284:                                              ; preds = %280
  %285 = load i32, i32* @gdb_stdlog, align 4
  %286 = load i8*, i8** %25, align 8
  %287 = load i32, i32* %36, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = and i32 %291, 255
  %293 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %284
  %295 = load i32, i32* %36, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %36, align 4
  br label %280

297:                                              ; preds = %280
  br label %298

298:                                              ; preds = %297, %267
  %299 = load i32, i32* %35, align 4
  %300 = load i8*, i8** %25, align 8
  %301 = load i32, i32* %33, align 4
  %302 = call i32 @write_memory(i32 %299, i8* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %221
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %306 = icmp sle i32 %304, %305
  br i1 %306, label %307, label %358

307:                                              ; preds = %303
  %308 = load i32, i32* %29, align 4
  %309 = load %struct.type*, %struct.type** %27, align 8
  %310 = call i64 @fp_register_arg_p(i32 %308, %struct.type* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %358, label %312

312:                                              ; preds = %307
  %313 = load i8*, i8** %25, align 8
  %314 = load i32, i32* %33, align 4
  %315 = call i32 @extract_unsigned_integer(i8* %313, i32 %314)
  store i32 %315, i32* %37, align 4
  %316 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %317 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %341

319:                                              ; preds = %312
  %320 = load i32, i32* %33, align 4
  %321 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %322 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %321)
  %323 = icmp slt i32 %320, %322
  br i1 %323, label %324, label %341

324:                                              ; preds = %319
  %325 = load i32, i32* %29, align 4
  %326 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = load i32, i32* %29, align 4
  %330 = load i32, i32* @TYPE_CODE_UNION, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %328, %324
  %333 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %334 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %333)
  %335 = load i32, i32* %33, align 4
  %336 = sub nsw i32 %334, %335
  %337 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %338 = mul nsw i32 %336, %337
  %339 = load i32, i32* %37, align 4
  %340 = shl i32 %339, %338
  store i32 %340, i32* %37, align 4
  br label %341

341:                                              ; preds = %332, %328, %319, %312
  %342 = load i64, i64* @mips_debug, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load i32, i32* @gdb_stdlog, align 4
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* %37, align 4
  %348 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %349 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %348)
  %350 = call i32 @phex(i32 %347, i32 %349)
  %351 = call i32 @fprintf_filtered(i32 %345, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %346, i32 %350)
  br label %352

352:                                              ; preds = %344, %341
  %353 = load i32, i32* %19, align 4
  %354 = load i32, i32* %37, align 4
  %355 = call i32 @write_register(i32 %353, i32 %354)
  %356 = load i32, i32* %19, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %19, align 4
  br label %358

358:                                              ; preds = %352, %307, %303
  %359 = load i32, i32* %33, align 4
  %360 = load i32, i32* %28, align 4
  %361 = sub nsw i32 %360, %359
  store i32 %361, i32* %28, align 4
  %362 = load i32, i32* %33, align 4
  %363 = load i8*, i8** %25, align 8
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds i8, i8* %363, i64 %364
  store i8* %365, i8** %25, align 8
  %366 = load i32, i32* %32, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %358
  %369 = load i32, i32* %33, align 4
  %370 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %24, align 8
  %371 = call i32 @mips_stack_argsize(%struct.gdbarch_tdep* %370)
  %372 = call i32 @align_up(i32 %369, i32 %371)
  %373 = load i32, i32* %23, align 4
  %374 = add nsw i32 %373, %372
  store i32 %374, i32* %23, align 4
  br label %375

375:                                              ; preds = %368, %358
  br label %193

376:                                              ; preds = %193
  br label %377

377:                                              ; preds = %376, %173
  %378 = load i64, i64* @mips_debug, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32, i32* @gdb_stdlog, align 4
  %382 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %381, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %377
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %21, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %21, align 4
  br label %108

387:                                              ; preds = %108
  %388 = load %struct.regcache*, %struct.regcache** %12, align 8
  %389 = load i32, i32* @SP_REGNUM, align 4
  %390 = load i32, i32* %16, align 4
  %391 = call i32 @regcache_cooked_write_signed(%struct.regcache* %388, i32 %389, i32 %390)
  %392 = load i32, i32* %16, align 4
  ret i32 %392
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

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @phex(i32, i32) #1

declare dso_local i32 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
