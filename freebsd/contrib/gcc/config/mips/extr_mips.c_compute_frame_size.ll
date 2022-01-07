; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_compute_frame_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_compute_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64 }

@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@current_function_outgoing_args_size = common dso_local global i64 0, align 8
@STARTING_FRAME_OFFSET = common dso_local global i64 0, align 8
@current_function_is_leaf = common dso_local global i64 0, align 8
@current_function_calls_alloca = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@GP_REG_FIRST = common dso_local global i32 0, align 4
@GP_REG_LAST = common dso_local global i32 0, align 4
@gpr_mode = common dso_local global i32 0, align 4
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i32 0, align 4
@FP_REG_LAST = common dso_local global i32 0, align 4
@FP_INC = common dso_local global i32 0, align 4
@FP_REG_FIRST = common dso_local global i32 0, align 4
@UNITS_PER_FPREG = common dso_local global i32 0, align 4
@current_function_pretend_args_size = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compute_frame_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %16 = call i32 (...) @mips_global_pointer()
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %16, i32* %20, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @MIPS_STACK_ALIGN(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* @current_function_outgoing_args_size, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* @STARTING_FRAME_OFFSET, align 8
  %25 = call i64 @MIPS_STACK_ALIGN(i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i64, i64* @current_function_is_leaf, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %33, %30, %1
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* @current_function_calls_alloca, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @UNITS_PER_WORD, align 4
  %42 = mul nsw i32 4, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %40, %37, %34
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %47, %48
  store i64 %49, i64* %4, align 8
  %50 = load i32, i32* @GP_REG_FIRST, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %71, %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @GP_REG_LAST, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @mips_save_reg_p(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* @gpr_mode, align 4
  %61 = call i64 @GET_MODE_SIZE(i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @GP_REG_FIRST, align 4
  %66 = sub i32 %64, %65
  %67 = shl i32 1, %66
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %59, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load i64, i64* @current_function_calls_eh_return, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @EH_RETURN_DATA_REGNO(i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @INVALID_REGNUM, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %99

85:                                               ; preds = %78
  %86 = load i32, i32* @gpr_mode, align 4
  %87 = call i64 @GET_MODE_SIZE(i32 %86)
  %88 = load i64, i64* %9, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %9, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @GP_REG_FIRST, align 4
  %92 = sub i32 %90, %91
  %93 = shl i32 1, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %13, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %78

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* @FP_REG_LAST, align 4
  %102 = load i32, i32* @FP_INC, align 4
  %103 = sub i32 %101, %102
  %104 = add i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %130, %100
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @FP_REG_FIRST, align 4
  %108 = icmp uge i32 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i32, i32* %3, align 4
  %111 = call i64 @mips_save_reg_p(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i32, i32* @FP_INC, align 4
  %115 = load i32, i32* @UNITS_PER_FPREG, align 4
  %116 = mul i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %10, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %10, align 8
  %120 = load i32, i32* @FP_INC, align 4
  %121 = shl i32 1, %120
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @FP_REG_FIRST, align 4
  %125 = sub i32 %123, %124
  %126 = shl i32 %122, %125
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %113, %109
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* @FP_INC, align 4
  %132 = load i32, i32* %3, align 4
  %133 = sub i32 %132, %131
  store i32 %133, i32* %3, align 4
  br label %105

134:                                              ; preds = %105
  %135 = load i64, i64* %9, align 8
  %136 = call i64 @MIPS_STACK_ALIGN(i64 %135)
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i64 @MIPS_STACK_ALIGN(i64 %138)
  %140 = add nsw i64 %137, %139
  %141 = load i64, i64* %4, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %4, align 8
  %143 = load i64, i64* @current_function_pretend_args_size, align 8
  %144 = load i64, i64* %4, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %4, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @MIPS_STACK_ALIGN(i64 %150)
  %152 = load i64, i64* %4, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %4, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 14
  store i64 %154, i64* %159, align 8
  %160 = load i64, i64* %5, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 13
  store i64 %160, i64* %165, align 8
  %166 = load i64, i64* %6, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 12
  store i64 %166, i64* %171, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 11
  store i64 %172, i64* %177, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 10
  store i64 %178, i64* %183, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 9
  store i64 %184, i64* %189, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i32 %190, i32* %195, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  store i32 %196, i32* %201, align 4
  %202 = load i32, i32* @reload_completed, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 8
  store i32 %202, i32* %207, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load i32, i32* @UNITS_PER_WORD, align 4
  %210 = sext i32 %209 to i64
  %211 = sdiv i64 %208, %210
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 7
  store i64 %211, i64* %216, align 8
  %217 = load i64, i64* %10, align 8
  %218 = load i32, i32* @FP_INC, align 4
  %219 = load i32, i32* @UNITS_PER_FPREG, align 4
  %220 = mul i32 %218, %219
  %221 = zext i32 %220 to i64
  %222 = sdiv i64 %217, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 6
  store i64 %222, i64* %227, align 8
  %228 = load i32, i32* %11, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %255

230:                                              ; preds = %134
  %231 = load i64, i64* %6, align 8
  %232 = load i64, i64* %7, align 8
  %233 = add nsw i64 %231, %232
  %234 = load i64, i64* %5, align 8
  %235 = add nsw i64 %233, %234
  %236 = load i64, i64* %9, align 8
  %237 = add nsw i64 %235, %236
  %238 = load i32, i32* @gpr_mode, align 4
  %239 = call i64 @GET_MODE_SIZE(i32 %238)
  %240 = sub nsw i64 %237, %239
  store i64 %240, i64* %14, align 8
  %241 = load i64, i64* %14, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 5
  store i64 %241, i64* %246, align 8
  %247 = load i64, i64* %14, align 8
  %248 = load i64, i64* %4, align 8
  %249 = sub nsw i64 %247, %248
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 4
  store i64 %249, i64* %254, align 8
  br label %266

255:                                              ; preds = %134
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 5
  store i64 0, i64* %260, align 8
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 4
  store i64 0, i64* %265, align 8
  br label %266

266:                                              ; preds = %255, %230
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %298

269:                                              ; preds = %266
  %270 = load i64, i64* %6, align 8
  %271 = load i64, i64* %7, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i64, i64* %5, align 8
  %274 = add nsw i64 %272, %273
  %275 = load i64, i64* %8, align 8
  %276 = add nsw i64 %274, %275
  %277 = load i64, i64* %10, align 8
  %278 = add nsw i64 %276, %277
  %279 = load i32, i32* @FP_INC, align 4
  %280 = load i32, i32* @UNITS_PER_FPREG, align 4
  %281 = mul i32 %279, %280
  %282 = zext i32 %281 to i64
  %283 = sub nsw i64 %278, %282
  store i64 %283, i64* %15, align 8
  %284 = load i64, i64* %15, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  store i64 %284, i64* %289, align 8
  %290 = load i64, i64* %15, align 8
  %291 = load i64, i64* %4, align 8
  %292 = sub nsw i64 %290, %291
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 2
  store i64 %292, i64* %297, align 8
  br label %309

298:                                              ; preds = %266
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 3
  store i64 0, i64* %303, align 8
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 2
  store i64 0, i64* %308, align 8
  br label %309

309:                                              ; preds = %298, %269
  %310 = load i64, i64* %4, align 8
  ret i64 %310
}

declare dso_local i32 @mips_global_pointer(...) #1

declare dso_local i64 @MIPS_STACK_ALIGN(i64) #1

declare dso_local i64 @mips_save_reg_p(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @EH_RETURN_DATA_REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
