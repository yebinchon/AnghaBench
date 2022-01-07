; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_compute_frame_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_compute_frame_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ix86_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@FAST_PROLOGUE_INSN_COUNT = common dso_local global i32 0, align 4
@FUNCTION_FREQUENCY_NORMAL = common dso_local global i64 0, align 8
@flag_branch_probabilities = common dso_local global i64 0, align 8
@FUNCTION_FREQUENCY_HOT = common dso_local global i64 0, align 8
@TARGET_PROLOGUE_USING_MOVE = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@STACK_BOUNDARY = common dso_local global i32 0, align 4
@PREFERRED_STACK_BOUNDARY = common dso_local global i32 0, align 4
@ix86_save_varrargs_registers = common dso_local global i64 0, align 8
@X86_64_VARARGS_SIZE = common dso_local global i32 0, align 4
@ACCUMULATE_OUTGOING_ARGS = common dso_local global i64 0, align 8
@current_function_is_leaf = common dso_local global i64 0, align 8
@current_function_calls_alloca = common dso_local global i64 0, align 8
@ix86_current_function_calls_tls_descriptor = common dso_local global i64 0, align 8
@current_function_outgoing_args_size = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@TARGET_RED_ZONE = common dso_local global i64 0, align 8
@current_function_sp_is_unchanging = common dso_local global i64 0, align 8
@RED_ZONE_SIZE = common dso_local global i32 0, align 4
@RED_ZONE_RESERVE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ix86_frame*)* @ix86_compute_frame_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_compute_frame_layout(%struct.ix86_frame* %0) #0 {
  %2 = alloca %struct.ix86_frame*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ix86_frame* %0, %struct.ix86_frame** %2, align 8
  %9 = call i32 (...) @get_frame_size()
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @ix86_nsaved_regs()
  %11 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %12 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BITS_PER_UNIT, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BITS_PER_UNIT, align 4
  %23 = udiv i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @optimize_size, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %83, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %33 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %26
  %37 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %38 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @FAST_PROLOGUE_INSN_COUNT, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %36
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FUNCTION_FREQUENCY_NORMAL, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @flag_branch_probabilities, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FUNCTION_FREQUENCY_HOT, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %52
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %82

72:                                               ; preds = %61, %58
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @expensive_function_p(i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %67
  br label %83

83:                                               ; preds = %82, %26, %1
  %84 = load i64, i64* @TARGET_PROLOGUE_USING_MOVE, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %95 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %99

96:                                               ; preds = %86, %83
  %97 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %98 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* @frame_pointer_needed, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @UNITS_PER_WORD, align 4
  %104 = mul nsw i32 %103, 2
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @UNITS_PER_WORD, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %111 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %114, %107
  %118 = phi i1 [ true, %107 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @gcc_assert(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @STACK_BOUNDARY, align 4
  %123 = load i32, i32* @BITS_PER_UNIT, align 4
  %124 = udiv i32 %122, %123
  %125 = icmp uge i32 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @gcc_assert(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %130 = load i32, i32* @BITS_PER_UNIT, align 4
  %131 = udiv i32 %129, %130
  %132 = icmp ule i32 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @gcc_assert(i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %137 = load i32, i32* @BITS_PER_UNIT, align 4
  %138 = udiv i32 %136, %137
  %139 = icmp ule i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @gcc_assert(i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @STACK_BOUNDARY, align 4
  %144 = load i32, i32* @BITS_PER_UNIT, align 4
  %145 = udiv i32 %143, %144
  %146 = icmp ult i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %117
  %148 = load i32, i32* @STACK_BOUNDARY, align 4
  %149 = load i32, i32* @BITS_PER_UNIT, align 4
  %150 = udiv i32 %148, %149
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %147, %117
  %152 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %153 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @UNITS_PER_WORD, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load i64, i64* @ix86_save_varrargs_registers, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %151
  %162 = load i32, i32* @X86_64_VARARGS_SIZE, align 4
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* @X86_64_VARARGS_SIZE, align 4
  %166 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %167 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  br label %171

168:                                              ; preds = %151
  %169 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %170 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %169, i32 0, i32 3
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %161
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %4, align 4
  %174 = add i32 %172, %173
  %175 = sub i32 %174, 1
  %176 = load i32, i32* %4, align 4
  %177 = sub i32 0, %176
  %178 = and i32 %175, %177
  %179 = load i32, i32* %5, align 4
  %180 = sub i32 %178, %179
  %181 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %182 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %184 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %190 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %5, align 4
  %194 = load i64, i64* @ACCUMULATE_OUTGOING_ARGS, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %171
  %197 = load i64, i64* @current_function_is_leaf, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i64, i64* @current_function_calls_alloca, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i64, i64* @ix86_current_function_calls_tls_descriptor, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202, %199, %196
  %206 = load i32, i32* @current_function_outgoing_args_size, align 4
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* @current_function_outgoing_args_size, align 4
  %210 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %211 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 4
  br label %215

212:                                              ; preds = %202, %171
  %213 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %214 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %213, i32 0, i32 6
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %205
  %216 = load i64, i64* @current_function_is_leaf, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i64, i64* @current_function_calls_alloca, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i64, i64* @ix86_current_function_calls_tls_descriptor, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %221, %218, %215
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* %6, align 4
  %227 = add i32 %225, %226
  %228 = sub i32 %227, 1
  %229 = load i32, i32* %6, align 4
  %230 = sub i32 0, %229
  %231 = and i32 %228, %230
  %232 = load i32, i32* %5, align 4
  %233 = sub i32 %231, %232
  %234 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %235 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 4
  br label %239

236:                                              ; preds = %221
  %237 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %238 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %237, i32 0, i32 7
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %224
  %240 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %241 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %247 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %250 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %248, %251
  %253 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %254 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %252, %255
  %257 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %258 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %256, %259
  %261 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %262 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %260, %263
  %265 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %266 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %265, i32 0, i32 9
  store i32 %264, i32* %266, align 4
  %267 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %268 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %239
  %272 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %273 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp sle i32 %274, 1
  br i1 %275, label %284, label %276

276:                                              ; preds = %271, %239
  %277 = load i64, i64* @TARGET_64BIT, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %281 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 4
  %283 = icmp sge i32 %282, -2147483648
  br i1 %283, label %284, label %287

284:                                              ; preds = %279, %271
  %285 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %286 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  br label %287

287:                                              ; preds = %284, %279, %276
  %288 = load i64, i64* @TARGET_RED_ZONE, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %334

290:                                              ; preds = %287
  %291 = load i64, i64* @current_function_sp_is_unchanging, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %334

293:                                              ; preds = %290
  %294 = load i64, i64* @current_function_is_leaf, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %334

296:                                              ; preds = %293
  %297 = load i64, i64* @ix86_current_function_calls_tls_descriptor, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %334, label %299

299:                                              ; preds = %296
  %300 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %301 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %300, i32 0, i32 9
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %304 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %303, i32 0, i32 10
  store i32 %302, i32* %304, align 4
  %305 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %306 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %299
  %310 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %311 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @UNITS_PER_WORD, align 4
  %314 = mul nsw i32 %312, %313
  %315 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %316 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, %314
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %309, %299
  %320 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %321 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @RED_ZONE_SIZE, align 4
  %324 = load i32, i32* @RED_ZONE_RESERVE, align 4
  %325 = sub nsw i32 %323, %324
  %326 = icmp sgt i32 %322, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %319
  %328 = load i32, i32* @RED_ZONE_SIZE, align 4
  %329 = load i32, i32* @RED_ZONE_RESERVE, align 4
  %330 = sub nsw i32 %328, %329
  %331 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %332 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %331, i32 0, i32 10
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %327, %319
  br label %337

334:                                              ; preds = %296, %293, %290, %287
  %335 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %336 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %335, i32 0, i32 10
  store i32 0, i32* %336, align 4
  br label %337

337:                                              ; preds = %334, %333
  %338 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %339 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %338, i32 0, i32 10
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %342 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %346 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %345, i32 0, i32 10
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.ix86_frame*, %struct.ix86_frame** %2, align 8
  %349 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %350, %347
  store i32 %351, i32* %349, align 4
  ret void
}

declare dso_local i32 @get_frame_size(...) #1

declare dso_local i32 @ix86_nsaved_regs(...) #1

declare dso_local i32 @expensive_function_p(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
