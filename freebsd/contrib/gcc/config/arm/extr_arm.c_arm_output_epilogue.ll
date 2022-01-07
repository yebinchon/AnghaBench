; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_output_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_output_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@asm_out_file = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@return_used_this_function = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TARGET_ABORT_NORETURN = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@NEED_PLT_RELOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"abort(PLT)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bl\09%a0\00", align 1
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@TARGET_IWMMXT = common dso_local global i64 0, align 8
@LAST_ARM_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@arm_fpu_arch = common dso_local global i64 0, align 8
@FPUTYPE_FPA_EMU2 = common dso_local global i64 0, align 8
@LAST_FPA_REGNUM = common dso_local global i32 0, align 4
@FIRST_FPA_REGNUM = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"\09ldfe\09%r, [%r, #-%d]\0A\00", align 1
@FP_REGNUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"\09lfm\09%r, 4, [%r, #-%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09lfm\09%r, %d, [%r, #-%d]\0A\00", align 1
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"\09sub\09%r, %r, #%d\0A\00", align 1
@IP_REGNUM = common dso_local global i32 0, align 4
@FIRST_VFP_REGNUM = common dso_local global i32 0, align 4
@LAST_VFP_REGNUM = common dso_local global i32 0, align 4
@LAST_IWMMXT_REGNUM = common dso_local global i32 0, align 4
@FIRST_IWMMXT_REGNUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"\09wldrd\09%r, [%r, #-%d]\0A\00", align 1
@SP_REGNUM = common dso_local global i32 0, align 4
@ARM_FT_NORMAL = common dso_local global i64 0, align 8
@LR_REGNUM = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@current_function_calls_alloca = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"ldmfd\09%r\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ldmfd\09%r!\00", align 1
@stack_pointer_rtx = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"\09ldfe\09%r, [%r], #12\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\09lfmfd\09%r, 4, [%r]!\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\09lfmfd\09%r, %d, [%r]!\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\09wldrd\09%r, [%r], #8\0A\00", align 1
@current_function_pretend_args_size = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"\09ldr\09%r, [%r], #4\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\09add\09%r, %r, %r\0A\00", align 1
@ARM_EH_STACKADJ_REGNUM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"\09subs\09%r, %r, #4\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\09movs\09%r, %r\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\09bx\09%r\0A\00", align 1
@arm_arch5 = common dso_local global i32 0, align 4
@arm_arch4t = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"\09mov\09%r, %r\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arm_output_epilogue(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32*], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32*, i32** @asm_out_file, align 8
  store i32* %17, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @use_return_insn(i32 %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i64, i64* @return_used_this_function, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %808

29:                                               ; preds = %25, %1
  %30 = call i64 (...) @arm_current_func_type()
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @IS_NAKED(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %808

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @IS_VOLATILE(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i64, i64* @TARGET_ABORT_NORETURN, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* @Pmode, align 4
  %44 = load i64, i64* @NEED_PLT_RELOC, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32* @gen_rtx_SYMBOL_REF(i32 %43, i8* %47)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @assemble_external_libcall(i32* %49)
  %51 = call i32 @output_asm_insn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32** %14)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %808

52:                                               ; preds = %39, %35
  %53 = load i64, i64* @current_function_calls_eh_return, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ true, %52 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = call i32 @gcc_assert(i64 %61)
  %63 = call %struct.TYPE_3__* (...) @arm_get_frame_offsets()
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %13, align 8
  %64 = call i64 (...) @arm_compute_save_reg_mask()
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* @TARGET_IWMMXT, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @bit_count(i64 %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %89, %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @LAST_ARM_REGNUM, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 1, %80
  %82 = sext i32 %81 to i64
  %83 = and i64 %79, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load i64, i64* @frame_pointer_needed, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %435

95:                                               ; preds = %92
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %15, align 4
  %99 = load i64, i64* @arm_fpu_arch, align 8
  %100 = load i64, i64* @FPUTYPE_FPA_EMU2, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %137

102:                                              ; preds = %95
  %103 = load i32, i32* @LAST_FPA_REGNUM, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %133, %102
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %104
  %109 = load i64*, i64** @regs_ever_live, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load i64*, i64** @call_used_regs, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 12
  store i32 %124, i32* %7, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @FP_REGNUM, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %15, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %126, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %122, %115, %108
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %4, align 4
  br label %104

136:                                              ; preds = %104
  br label %216

137:                                              ; preds = %95
  %138 = load i32, i32* @LAST_FPA_REGNUM, align 4
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* @LAST_FPA_REGNUM, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %196, %137
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %199

144:                                              ; preds = %140
  %145 = load i64*, i64** @regs_ever_live, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %144
  %152 = load i64*, i64** @call_used_regs, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 12
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %4, align 4
  %163 = sub nsw i32 %161, %162
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @FP_REGNUM, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sub nsw i32 %169, %170
  %172 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %167, i32 %168, i32 %171)
  %173 = load i32, i32* %4, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %165, %158
  br label %195

176:                                              ; preds = %151, %144
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %4, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* @FP_REGNUM, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %15, align 4
  %190 = sub nsw i32 %188, %189
  %191 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %183, i32 %186, i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %180, %176
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %195

195:                                              ; preds = %192, %175
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %4, align 4
  br label %140

199:                                              ; preds = %140
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %4, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* @FP_REGNUM, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %15, align 4
  %213 = sub nsw i32 %211, %212
  %214 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %206, i32 %209, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %203, %199
  br label %216

216:                                              ; preds = %215, %136
  %217 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %314

219:                                              ; preds = %216
  %220 = load i64, i64* @TARGET_VFP, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %314

222:                                              ; preds = %219
  %223 = call i32 (...) @arm_get_vfp_saved_size()
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %222
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %7, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @IP_REGNUM, align 4
  %232 = load i32, i32* @FP_REGNUM, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %15, align 4
  %235 = sub nsw i32 %233, %234
  %236 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %231, i32 %232, i32 %235)
  br label %237

237:                                              ; preds = %226, %222
  %238 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %294, %237
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @LAST_VFP_REGNUM, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %297

244:                                              ; preds = %240
  %245 = load i64*, i64** @regs_ever_live, align 8
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %244
  %252 = load i64*, i64** @call_used_regs, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %293

258:                                              ; preds = %251, %244
  %259 = load i64*, i64** @regs_ever_live, align 8
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %259, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load i64*, i64** @call_used_regs, align 8
  %268 = load i32, i32* %4, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %267, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %266, %258
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %4, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %274
  %279 = load i32*, i32** %9, align 8
  %280 = load i32, i32* @IP_REGNUM, align 4
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  %283 = sub nsw i32 %281, %282
  %284 = sdiv i32 %283, 2
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %12, align 4
  %287 = sub nsw i32 %285, %286
  %288 = sdiv i32 %287, 2
  %289 = call i32 @arm_output_fldmx(i32* %279, i32 %280, i32 %284, i32 %288)
  br label %290

290:                                              ; preds = %278, %274
  %291 = load i32, i32* %4, align 4
  %292 = add nsw i32 %291, 2
  store i32 %292, i32* %12, align 4
  br label %293

293:                                              ; preds = %290, %266, %251
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 2
  store i32 %296, i32* %4, align 4
  br label %240

297:                                              ; preds = %240
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %4, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %297
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* @IP_REGNUM, align 4
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  %306 = sub nsw i32 %304, %305
  %307 = sdiv i32 %306, 2
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %12, align 4
  %310 = sub nsw i32 %308, %309
  %311 = sdiv i32 %310, 2
  %312 = call i32 @arm_output_fldmx(i32* %302, i32 %303, i32 %307, i32 %311)
  br label %313

313:                                              ; preds = %301, %297
  br label %314

314:                                              ; preds = %313, %219, %216
  %315 = load i64, i64* @TARGET_IWMMXT, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %358

317:                                              ; preds = %314
  %318 = load i32, i32* %10, align 4
  %319 = urem i32 %318, 2
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 2, i32 1
  %323 = load i32, i32* %10, align 4
  %324 = add i32 %323, %322
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* @LAST_IWMMXT_REGNUM, align 4
  store i32 %325, i32* %4, align 4
  br label %326

326:                                              ; preds = %354, %317
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* @FIRST_IWMMXT_REGNUM, align 4
  %329 = icmp sge i32 %327, %328
  br i1 %329, label %330, label %357

330:                                              ; preds = %326
  %331 = load i64*, i64** @regs_ever_live, align 8
  %332 = load i32, i32* %4, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %353

337:                                              ; preds = %330
  %338 = load i64*, i64** @call_used_regs, align 8
  %339 = load i32, i32* %4, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %353, label %344

344:                                              ; preds = %337
  %345 = load i32*, i32** %9, align 8
  %346 = load i32, i32* %4, align 4
  %347 = load i32, i32* @FP_REGNUM, align 4
  %348 = load i32, i32* %10, align 4
  %349 = mul i32 %348, 4
  %350 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %345, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %346, i32 %347, i32 %349)
  %351 = load i32, i32* %10, align 4
  %352 = add i32 %351, 2
  store i32 %352, i32* %10, align 4
  br label %353

353:                                              ; preds = %344, %337, %330
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %4, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %4, align 4
  br label %326

357:                                              ; preds = %326
  br label %358

358:                                              ; preds = %357, %314
  %359 = load i64, i64* %5, align 8
  %360 = load i32, i32* @IP_REGNUM, align 4
  %361 = shl i32 1, %360
  %362 = sext i32 %361 to i64
  %363 = and i64 %359, %362
  %364 = call i32 @gcc_assert(i64 %363)
  %365 = load i32, i32* @IP_REGNUM, align 4
  %366 = shl i32 1, %365
  %367 = xor i32 %366, -1
  %368 = sext i32 %367 to i64
  %369 = load i64, i64* %5, align 8
  %370 = and i64 %369, %368
  store i64 %370, i64* %5, align 8
  %371 = load i32, i32* @SP_REGNUM, align 4
  %372 = shl i32 1, %371
  %373 = sext i32 %372 to i64
  %374 = load i64, i64* %5, align 8
  %375 = or i64 %374, %373
  store i64 %375, i64* %5, align 8
  %376 = load i32, i32* %11, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %393

378:                                              ; preds = %358
  %379 = load i64, i64* %6, align 8
  %380 = call i64 @ARM_FUNC_TYPE(i64 %379)
  %381 = load i64, i64* @ARM_FT_NORMAL, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %393

383:                                              ; preds = %378
  %384 = load i64, i64* @current_function_calls_eh_return, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* @LR_REGNUM, align 4
  %388 = shl i32 1, %387
  %389 = xor i32 %388, -1
  %390 = sext i32 %389 to i64
  %391 = load i64, i64* %5, align 8
  %392 = and i64 %391, %390
  store i64 %392, i64* %5, align 8
  br label %400

393:                                              ; preds = %383, %378, %358
  %394 = load i32, i32* @PC_REGNUM, align 4
  %395 = shl i32 1, %394
  %396 = xor i32 %395, -1
  %397 = sext i32 %396 to i64
  %398 = load i64, i64* %5, align 8
  %399 = and i64 %398, %397
  store i64 %399, i64* %5, align 8
  br label %400

400:                                              ; preds = %393, %386
  %401 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load i64, i64* %5, align 8
  %405 = call i32 @bit_count(i64 %404)
  %406 = add nsw i32 1, %405
  %407 = icmp ne i32 %403, %406
  br i1 %407, label %411, label %408

408:                                              ; preds = %400
  %409 = load i64, i64* @current_function_calls_alloca, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %408, %400
  %412 = load i32*, i32** %9, align 8
  %413 = load i32, i32* @SP_REGNUM, align 4
  %414 = load i32, i32* @FP_REGNUM, align 4
  %415 = load i64, i64* %5, align 8
  %416 = call i32 @bit_count(i64 %415)
  %417 = mul nsw i32 4, %416
  %418 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %412, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %413, i32 %414, i32 %417)
  br label %419

419:                                              ; preds = %411, %408
  %420 = load i32*, i32** %9, align 8
  %421 = load i32, i32* @SP_REGNUM, align 4
  %422 = load i64, i64* %5, align 8
  %423 = call i32 @print_multi_reg(i32* %420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %421, i64 %422)
  %424 = load i64, i64* %6, align 8
  %425 = call i64 @IS_INTERRUPT(i64 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %434

427:                                              ; preds = %419
  %428 = load i32*, i32** %9, align 8
  %429 = load i32, i32* @SP_REGNUM, align 4
  %430 = load i32, i32* @IP_REGNUM, align 4
  %431 = shl i32 1, %430
  %432 = sext i32 %431 to i64
  %433 = call i32 @print_multi_reg(i32* %428, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %429, i64 %432)
  br label %434

434:                                              ; preds = %427, %419
  br label %753

435:                                              ; preds = %92
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %438, %441
  br i1 %442, label %443, label %458

443:                                              ; preds = %435
  %444 = load i32*, i32** @stack_pointer_rtx, align 8
  %445 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  store i32* %444, i32** %445, align 8
  %446 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  store i32* %444, i32** %446, align 16
  %447 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 4
  %453 = sub nsw i32 %449, %452
  %454 = call i32* @GEN_INT(i32 %453)
  %455 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  store i32* %454, i32** %455, align 16
  %456 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %457 = call i32 @output_add_immediate(i32** %456)
  br label %458

458:                                              ; preds = %443, %435
  %459 = load i64, i64* @arm_fpu_arch, align 8
  %460 = load i64, i64* @FPUTYPE_FPA_EMU2, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %492

462:                                              ; preds = %458
  %463 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  store i32 %463, i32* %4, align 4
  br label %464

464:                                              ; preds = %488, %462
  %465 = load i32, i32* %4, align 4
  %466 = load i32, i32* @LAST_FPA_REGNUM, align 4
  %467 = icmp sle i32 %465, %466
  br i1 %467, label %468, label %491

468:                                              ; preds = %464
  %469 = load i64*, i64** @regs_ever_live, align 8
  %470 = load i32, i32* %4, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i64, i64* %469, i64 %471
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %487

475:                                              ; preds = %468
  %476 = load i64*, i64** @call_used_regs, align 8
  %477 = load i32, i32* %4, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i64, i64* %476, i64 %478
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %487, label %482

482:                                              ; preds = %475
  %483 = load i32*, i32** %9, align 8
  %484 = load i32, i32* %4, align 4
  %485 = load i32, i32* @SP_REGNUM, align 4
  %486 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %483, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %484, i32 %485)
  br label %487

487:                                              ; preds = %482, %475, %468
  br label %488

488:                                              ; preds = %487
  %489 = load i32, i32* %4, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %4, align 4
  br label %464

491:                                              ; preds = %464
  br label %558

492:                                              ; preds = %458
  %493 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  store i32 %493, i32* %12, align 4
  %494 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  store i32 %494, i32* %4, align 4
  br label %495

495:                                              ; preds = %542, %492
  %496 = load i32, i32* %4, align 4
  %497 = load i32, i32* @LAST_FPA_REGNUM, align 4
  %498 = icmp sle i32 %496, %497
  br i1 %498, label %499, label %545

499:                                              ; preds = %495
  %500 = load i64*, i64** @regs_ever_live, align 8
  %501 = load i32, i32* %4, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i64, i64* %500, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %526

506:                                              ; preds = %499
  %507 = load i64*, i64** @call_used_regs, align 8
  %508 = load i32, i32* %4, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i64, i64* %507, i64 %509
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %526, label %513

513:                                              ; preds = %506
  %514 = load i32, i32* %4, align 4
  %515 = load i32, i32* %12, align 4
  %516 = sub nsw i32 %514, %515
  %517 = icmp eq i32 %516, 3
  br i1 %517, label %518, label %525

518:                                              ; preds = %513
  %519 = load i32*, i32** %9, align 8
  %520 = load i32, i32* %12, align 4
  %521 = load i32, i32* @SP_REGNUM, align 4
  %522 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %519, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %520, i32 %521)
  %523 = load i32, i32* %4, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %12, align 4
  br label %525

525:                                              ; preds = %518, %513
  br label %541

526:                                              ; preds = %506, %499
  %527 = load i32, i32* %4, align 4
  %528 = load i32, i32* %12, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %538

530:                                              ; preds = %526
  %531 = load i32*, i32** %9, align 8
  %532 = load i32, i32* %12, align 4
  %533 = load i32, i32* %4, align 4
  %534 = load i32, i32* %12, align 4
  %535 = sub nsw i32 %533, %534
  %536 = load i32, i32* @SP_REGNUM, align 4
  %537 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %531, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %532, i32 %535, i32 %536)
  br label %538

538:                                              ; preds = %530, %526
  %539 = load i32, i32* %4, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %12, align 4
  br label %541

541:                                              ; preds = %538, %525
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %4, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %4, align 4
  br label %495

545:                                              ; preds = %495
  %546 = load i32, i32* %4, align 4
  %547 = load i32, i32* %12, align 4
  %548 = icmp ne i32 %546, %547
  br i1 %548, label %549, label %557

549:                                              ; preds = %545
  %550 = load i32*, i32** %9, align 8
  %551 = load i32, i32* %12, align 4
  %552 = load i32, i32* %4, align 4
  %553 = load i32, i32* %12, align 4
  %554 = sub nsw i32 %552, %553
  %555 = load i32, i32* @SP_REGNUM, align 4
  %556 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %550, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %551, i32 %554, i32 %555)
  br label %557

557:                                              ; preds = %549, %545
  br label %558

558:                                              ; preds = %557, %491
  %559 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %641

561:                                              ; preds = %558
  %562 = load i64, i64* @TARGET_VFP, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %641

564:                                              ; preds = %561
  %565 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  store i32 %565, i32* %12, align 4
  %566 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  store i32 %566, i32* %4, align 4
  br label %567

567:                                              ; preds = %621, %564
  %568 = load i32, i32* %4, align 4
  %569 = load i32, i32* @LAST_VFP_REGNUM, align 4
  %570 = icmp slt i32 %568, %569
  br i1 %570, label %571, label %624

571:                                              ; preds = %567
  %572 = load i64*, i64** @regs_ever_live, align 8
  %573 = load i32, i32* %4, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i64, i64* %572, i64 %574
  %576 = load i64, i64* %575, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %585

578:                                              ; preds = %571
  %579 = load i64*, i64** @call_used_regs, align 8
  %580 = load i32, i32* %4, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i64, i64* %579, i64 %581
  %583 = load i64, i64* %582, align 8
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %620

585:                                              ; preds = %578, %571
  %586 = load i64*, i64** @regs_ever_live, align 8
  %587 = load i32, i32* %4, align 4
  %588 = add nsw i32 %587, 1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i64, i64* %586, i64 %589
  %591 = load i64, i64* %590, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %601

593:                                              ; preds = %585
  %594 = load i64*, i64** @call_used_regs, align 8
  %595 = load i32, i32* %4, align 4
  %596 = add nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i64, i64* %594, i64 %597
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %620

601:                                              ; preds = %593, %585
  %602 = load i32, i32* %12, align 4
  %603 = load i32, i32* %4, align 4
  %604 = icmp ne i32 %602, %603
  br i1 %604, label %605, label %617

605:                                              ; preds = %601
  %606 = load i32*, i32** %9, align 8
  %607 = load i32, i32* @SP_REGNUM, align 4
  %608 = load i32, i32* %12, align 4
  %609 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  %610 = sub nsw i32 %608, %609
  %611 = sdiv i32 %610, 2
  %612 = load i32, i32* %4, align 4
  %613 = load i32, i32* %12, align 4
  %614 = sub nsw i32 %612, %613
  %615 = sdiv i32 %614, 2
  %616 = call i32 @arm_output_fldmx(i32* %606, i32 %607, i32 %611, i32 %615)
  br label %617

617:                                              ; preds = %605, %601
  %618 = load i32, i32* %4, align 4
  %619 = add nsw i32 %618, 2
  store i32 %619, i32* %12, align 4
  br label %620

620:                                              ; preds = %617, %593, %578
  br label %621

621:                                              ; preds = %620
  %622 = load i32, i32* %4, align 4
  %623 = add nsw i32 %622, 2
  store i32 %623, i32* %4, align 4
  br label %567

624:                                              ; preds = %567
  %625 = load i32, i32* %12, align 4
  %626 = load i32, i32* %4, align 4
  %627 = icmp ne i32 %625, %626
  br i1 %627, label %628, label %640

628:                                              ; preds = %624
  %629 = load i32*, i32** %9, align 8
  %630 = load i32, i32* @SP_REGNUM, align 4
  %631 = load i32, i32* %12, align 4
  %632 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  %633 = sub nsw i32 %631, %632
  %634 = sdiv i32 %633, 2
  %635 = load i32, i32* %4, align 4
  %636 = load i32, i32* %12, align 4
  %637 = sub nsw i32 %635, %636
  %638 = sdiv i32 %637, 2
  %639 = call i32 @arm_output_fldmx(i32* %629, i32 %630, i32 %634, i32 %638)
  br label %640

640:                                              ; preds = %628, %624
  br label %641

641:                                              ; preds = %640, %561, %558
  %642 = load i64, i64* @TARGET_IWMMXT, align 8
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %674

644:                                              ; preds = %641
  %645 = load i32, i32* @FIRST_IWMMXT_REGNUM, align 4
  store i32 %645, i32* %4, align 4
  br label %646

646:                                              ; preds = %670, %644
  %647 = load i32, i32* %4, align 4
  %648 = load i32, i32* @LAST_IWMMXT_REGNUM, align 4
  %649 = icmp sle i32 %647, %648
  br i1 %649, label %650, label %673

650:                                              ; preds = %646
  %651 = load i64*, i64** @regs_ever_live, align 8
  %652 = load i32, i32* %4, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i64, i64* %651, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %669

657:                                              ; preds = %650
  %658 = load i64*, i64** @call_used_regs, align 8
  %659 = load i32, i32* %4, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i64, i64* %658, i64 %660
  %662 = load i64, i64* %661, align 8
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %669, label %664

664:                                              ; preds = %657
  %665 = load i32*, i32** %9, align 8
  %666 = load i32, i32* %4, align 4
  %667 = load i32, i32* @SP_REGNUM, align 4
  %668 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %665, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %666, i32 %667)
  br label %669

669:                                              ; preds = %664, %657, %650
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %4, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %4, align 4
  br label %646

673:                                              ; preds = %646
  br label %674

674:                                              ; preds = %673, %641
  %675 = load i64, i64* %6, align 8
  %676 = call i64 @ARM_FUNC_TYPE(i64 %675)
  %677 = load i64, i64* @ARM_FT_NORMAL, align 8
  %678 = icmp eq i64 %676, %677
  br i1 %678, label %679, label %707

679:                                              ; preds = %674
  %680 = load i32, i32* %11, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %707

682:                                              ; preds = %679
  %683 = load i32, i32* @current_function_pretend_args_size, align 4
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %707

685:                                              ; preds = %682
  %686 = load i64, i64* %5, align 8
  %687 = load i32, i32* @LR_REGNUM, align 4
  %688 = shl i32 1, %687
  %689 = sext i32 %688 to i64
  %690 = and i64 %686, %689
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %692, label %707

692:                                              ; preds = %685
  %693 = load i64, i64* @current_function_calls_eh_return, align 8
  %694 = icmp ne i64 %693, 0
  br i1 %694, label %707, label %695

695:                                              ; preds = %692
  %696 = load i32, i32* @LR_REGNUM, align 4
  %697 = shl i32 1, %696
  %698 = xor i32 %697, -1
  %699 = sext i32 %698 to i64
  %700 = load i64, i64* %5, align 8
  %701 = and i64 %700, %699
  store i64 %701, i64* %5, align 8
  %702 = load i32, i32* @PC_REGNUM, align 4
  %703 = shl i32 1, %702
  %704 = sext i32 %703 to i64
  %705 = load i64, i64* %5, align 8
  %706 = or i64 %705, %704
  store i64 %706, i64* %5, align 8
  br label %707

707:                                              ; preds = %695, %692, %685, %682, %679, %674
  %708 = load i64, i64* %5, align 8
  %709 = load i32, i32* @LR_REGNUM, align 4
  %710 = shl i32 1, %709
  %711 = sext i32 %710 to i64
  %712 = icmp eq i64 %708, %711
  br i1 %712, label %713, label %718

713:                                              ; preds = %707
  %714 = load i32*, i32** %9, align 8
  %715 = load i32, i32* @LR_REGNUM, align 4
  %716 = load i32, i32* @SP_REGNUM, align 4
  %717 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %714, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %715, i32 %716)
  br label %740

718:                                              ; preds = %707
  %719 = load i64, i64* %5, align 8
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %739

721:                                              ; preds = %718
  %722 = load i64, i64* %5, align 8
  %723 = load i32, i32* @SP_REGNUM, align 4
  %724 = shl i32 1, %723
  %725 = sext i32 %724 to i64
  %726 = and i64 %722, %725
  %727 = icmp ne i64 %726, 0
  br i1 %727, label %728, label %733

728:                                              ; preds = %721
  %729 = load i32*, i32** %9, align 8
  %730 = load i32, i32* @SP_REGNUM, align 4
  %731 = load i64, i64* %5, align 8
  %732 = call i32 @print_multi_reg(i32* %729, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %730, i64 %731)
  br label %738

733:                                              ; preds = %721
  %734 = load i32*, i32** %9, align 8
  %735 = load i32, i32* @SP_REGNUM, align 4
  %736 = load i64, i64* %5, align 8
  %737 = call i32 @print_multi_reg(i32* %734, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %735, i64 %736)
  br label %738

738:                                              ; preds = %733, %728
  br label %739

739:                                              ; preds = %738, %718
  br label %740

740:                                              ; preds = %739, %713
  %741 = load i32, i32* @current_function_pretend_args_size, align 4
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %743, label %752

743:                                              ; preds = %740
  %744 = load i32*, i32** @stack_pointer_rtx, align 8
  %745 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  store i32* %744, i32** %745, align 8
  %746 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  store i32* %744, i32** %746, align 16
  %747 = load i32, i32* @current_function_pretend_args_size, align 4
  %748 = call i32* @GEN_INT(i32 %747)
  %749 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  store i32* %748, i32** %749, align 16
  %750 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %751 = call i32 @output_add_immediate(i32** %750)
  br label %752

752:                                              ; preds = %743, %740
  br label %753

753:                                              ; preds = %752, %434
  %754 = load i32, i32* %11, align 4
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %763

756:                                              ; preds = %753
  %757 = load i64, i64* %5, align 8
  %758 = load i32, i32* @PC_REGNUM, align 4
  %759 = shl i32 1, %758
  %760 = sext i32 %759 to i64
  %761 = and i64 %757, %760
  %762 = icmp ne i64 %761, 0
  br i1 %762, label %763, label %764

763:                                              ; preds = %756, %753
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %808

764:                                              ; preds = %756
  %765 = load i64, i64* @current_function_calls_eh_return, align 8
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %767, label %773

767:                                              ; preds = %764
  %768 = load i32*, i32** %9, align 8
  %769 = load i32, i32* @SP_REGNUM, align 4
  %770 = load i32, i32* @SP_REGNUM, align 4
  %771 = load i32, i32* @ARM_EH_STACKADJ_REGNUM, align 4
  %772 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %769, i32 %770, i32 %771)
  br label %773

773:                                              ; preds = %767, %764
  %774 = load i64, i64* %6, align 8
  %775 = call i64 @ARM_FUNC_TYPE(i64 %774)
  %776 = trunc i64 %775 to i32
  switch i32 %776, label %791 [
    i32 128, label %777
    i32 130, label %777
    i32 131, label %782
    i32 129, label %787
  ]

777:                                              ; preds = %773, %773
  %778 = load i32*, i32** %9, align 8
  %779 = load i32, i32* @PC_REGNUM, align 4
  %780 = load i32, i32* @LR_REGNUM, align 4
  %781 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %778, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %779, i32 %780)
  br label %807

782:                                              ; preds = %773
  %783 = load i32*, i32** %9, align 8
  %784 = load i32, i32* @PC_REGNUM, align 4
  %785 = load i32, i32* @LR_REGNUM, align 4
  %786 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %783, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %784, i32 %785)
  br label %807

787:                                              ; preds = %773
  %788 = load i32*, i32** %9, align 8
  %789 = load i32, i32* @LR_REGNUM, align 4
  %790 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %788, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %789)
  br label %807

791:                                              ; preds = %773
  %792 = load i32, i32* @arm_arch5, align 4
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %797, label %794

794:                                              ; preds = %791
  %795 = load i32, i32* @arm_arch4t, align 4
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %801

797:                                              ; preds = %794, %791
  %798 = load i32*, i32** %9, align 8
  %799 = load i32, i32* @LR_REGNUM, align 4
  %800 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %798, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %799)
  br label %806

801:                                              ; preds = %794
  %802 = load i32*, i32** %9, align 8
  %803 = load i32, i32* @PC_REGNUM, align 4
  %804 = load i32, i32* @LR_REGNUM, align 4
  %805 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %802, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %803, i32 %804)
  br label %806

806:                                              ; preds = %801, %797
  br label %807

807:                                              ; preds = %806, %787, %782, %777
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %808

808:                                              ; preds = %807, %763, %42, %34, %28
  %809 = load i8*, i8** %2, align 8
  ret i8* %809
}

declare dso_local i64 @use_return_insn(i32, i32*) #1

declare dso_local i64 @arm_current_func_type(...) #1

declare dso_local i64 @IS_NAKED(i64) #1

declare dso_local i64 @IS_VOLATILE(i64) #1

declare dso_local i32* @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @assemble_external_libcall(i32*) #1

declare dso_local i32 @output_asm_insn(i8*, i32**) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local %struct.TYPE_3__* @arm_get_frame_offsets(...) #1

declare dso_local i64 @arm_compute_save_reg_mask(...) #1

declare dso_local i32 @bit_count(i64) #1

declare dso_local i32 @asm_fprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @arm_get_vfp_saved_size(...) #1

declare dso_local i32 @arm_output_fldmx(i32*, i32, i32, i32) #1

declare dso_local i64 @ARM_FUNC_TYPE(i64) #1

declare dso_local i32 @print_multi_reg(i32*, i8*, i32, i64) #1

declare dso_local i64 @IS_INTERRUPT(i64) #1

declare dso_local i32* @GEN_INT(i32) #1

declare dso_local i32 @output_add_immediate(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
