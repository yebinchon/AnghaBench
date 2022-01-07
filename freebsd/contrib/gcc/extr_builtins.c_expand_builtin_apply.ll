; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@Pmode = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@NO_DEFER_POP = common dso_local global i32 0, align 4
@SAVE_BLOCK = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@virtual_outgoing_args_rtx = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@BLOCK_OP_NORMAL = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@apply_args_mode = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i64 0, align 8
@FUNCTION_MODE = common dso_local global i32 0, align 4
@OK_DEFER_POP = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@HAVE_call_value = common dso_local global i64 0, align 8
@HAVE_save_stack_nonlocal = common dso_local global i64 0, align 8
@HAVE_untyped_call = common dso_local global i64 0, align 8
@SAVE_NONLOCAL = common dso_local global i32 0, align 4
@apply_result_mode = common dso_local global i32* null, align 8
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @expand_builtin_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_builtin_apply(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %21 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TREE_TYPE(i32 %27)
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 0, %29 ]
  %32 = call i64 %21(i32 %31, i32 0)
  store i64 %32, i64* %19, align 8
  %33 = load i32, i32* @Pmode, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @convert_memory_address(i32 %33, i64 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i32, i32* @BLKmode, align 4
  %37 = call i32 (...) @apply_result_size()
  %38 = call i64 @assign_stack_local(i32 %36, i32 %37, i32 -1)
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* @Pmode, align 4
  %40 = call i64 @gen_reg_rtx(i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @gen_rtx_MEM(i32 %42, i64 %43)
  %45 = call i32 @emit_move_insn(i64 %41, i64 %44)
  %46 = load i32, i32* @Pmode, align 4
  %47 = load i32, i32* @MINUS, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %52 = call i64 @expand_simple_binop(i32 %46, i32 %47, i64 %48, i64 %49, i64 %50, i32 0, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = call i32 (...) @do_pending_stack_adjust()
  %54 = load i32, i32* @NO_DEFER_POP, align 4
  %55 = load i32, i32* @SAVE_BLOCK, align 4
  %56 = load i32, i32* @NULL_RTX, align 4
  %57 = call i32 @emit_stack_save(i32 %55, i64* %17, i32 %56)
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @BITS_PER_UNIT, align 4
  %60 = call i32 @allocate_dynamic_stack_space(i64 %58, i32 0, i32 %59)
  %61 = load i64, i64* @virtual_outgoing_args_rtx, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @GET_CODE(i64 %62)
  %64 = load i64, i64* @CONST_INT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %30
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @INTVAL(i64 %68)
  %70 = sub nsw i32 0, %69
  %71 = call i64 @plus_constant(i64 %67, i32 %70)
  store i64 %71, i64* %14, align 8
  br label %79

72:                                               ; preds = %30
  %73 = load i32, i32* @Pmode, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* @Pmode, align 4
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @negate_rtx(i32 %75, i64 %76)
  %78 = call i64 @gen_rtx_PLUS(i32 %73, i64 %74, i32 %77)
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* @BLKmode, align 4
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @gen_rtx_MEM(i32 %80, i64 %81)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* @PARM_BOUNDARY, align 4
  %85 = call i32 @set_mem_align(i64 %83, i32 %84)
  %86 = load i32, i32* @BLKmode, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @gen_rtx_MEM(i32 %86, i64 %87)
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i32, i32* @PARM_BOUNDARY, align 4
  %91 = call i32 @set_mem_align(i64 %89, i32 %90)
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  %96 = call i32 @emit_block_move(i64 %92, i64 %93, i64 %94, i32 %95)
  %97 = call i32 (...) @apply_args_size()
  %98 = load i32, i32* @BLKmode, align 4
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @gen_rtx_MEM(i32 %98, i64 %99)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* @PARM_BOUNDARY, align 4
  %103 = call i32 @set_mem_align(i64 %101, i32 %102)
  %104 = load i32, i32* @Pmode, align 4
  %105 = call i32 @GET_MODE_SIZE(i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i64, i64* %19, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %79
  %109 = load i32, i32* @Pmode, align 4
  %110 = call i32 @GET_MODE_SIZE(i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %79
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %158, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %161

118:                                              ; preds = %114
  %119 = load i32*, i32** @apply_args_mode, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* @VOIDmode, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @GET_MODE_ALIGNMENT(i32 %127)
  %129 = load i32, i32* @BITS_PER_UNIT, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = srem i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @CEIL(i32 %136, i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %135, %126
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @gen_rtx_REG(i32 %142, i32 %143)
  store i64 %144, i64* %13, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i64 @adjust_address(i64 %146, i32 %147, i32 %148)
  %150 = call i32 @emit_move_insn(i64 %145, i64 %149)
  %151 = load i64, i64* %13, align 8
  %152 = call i32 @use_reg(i64* %18, i64 %151)
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @GET_MODE_SIZE(i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %141, %118
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %114

161:                                              ; preds = %114
  %162 = load i32, i32* @Pmode, align 4
  %163 = call i32 @GET_MODE_SIZE(i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i64, i64* %19, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %161
  %167 = load i32, i32* @Pmode, align 4
  %168 = call i64 @gen_reg_rtx(i32 %167)
  store i64 %168, i64* %20, align 8
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* %5, align 8
  %171 = load i32, i32* @Pmode, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i64 @adjust_address(i64 %170, i32 %171, i32 %172)
  %174 = call i32 @emit_move_insn(i64 %169, i64 %173)
  %175 = load i64, i64* %19, align 8
  %176 = load i64, i64* %20, align 8
  %177 = call i32 @emit_move_insn(i64 %175, i64 %176)
  %178 = load i64, i64* %19, align 8
  %179 = call i64 @REG_P(i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %166
  %182 = load i64, i64* %19, align 8
  %183 = call i32 @use_reg(i64* %18, i64 %182)
  br label %184

184:                                              ; preds = %181, %166
  %185 = load i32, i32* @Pmode, align 4
  %186 = call i32 @GET_MODE_SIZE(i32 %185)
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %184, %161
  %190 = load i64, i64* %4, align 8
  %191 = call i64 @prepare_call_address(i64 %190, i32* null, i64* %18, i32 0, i32 0)
  store i64 %191, i64* %4, align 8
  %192 = load i64, i64* %4, align 8
  %193 = call i64 @GET_CODE(i64 %192)
  %194 = load i64, i64* @SYMBOL_REF, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load i32, i32* @FUNCTION_MODE, align 4
  %198 = load i64, i64* %4, align 8
  %199 = call i64 @memory_address(i32 %197, i64 %198)
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %196, %189
  %201 = call i32 (...) @gcc_unreachable()
  %202 = call i64 (...) @last_call_insn()
  store i64 %202, i64* %16, align 8
  %203 = load i64, i64* %16, align 8
  %204 = load i64, i64* %18, align 8
  %205 = call i32 @add_function_usage_to(i64 %203, i64 %204)
  %206 = load i32, i32* @SAVE_BLOCK, align 4
  %207 = load i64, i64* %17, align 8
  %208 = load i32, i32* @NULL_RTX, align 4
  %209 = call i32 @emit_stack_restore(i32 %206, i64 %207, i32 %208)
  %210 = load i32, i32* @OK_DEFER_POP, align 4
  %211 = load i64, i64* %12, align 8
  %212 = call i32 @XEXP(i64 %211, i32 0)
  %213 = call i64 @copy_addr_to_reg(i32 %212)
  store i64 %213, i64* %12, align 8
  %214 = load i32, i32* @ptr_mode, align 4
  %215 = load i64, i64* %12, align 8
  %216 = call i64 @convert_memory_address(i32 %214, i64 %215)
  ret i64 %216
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @convert_memory_address(i32, i64) #1

declare dso_local i64 @assign_stack_local(i32, i32, i32) #1

declare dso_local i32 @apply_result_size(...) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_MEM(i32, i64) #1

declare dso_local i64 @expand_simple_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @emit_stack_save(i32, i64*, i32) #1

declare dso_local i32 @allocate_dynamic_stack_space(i64, i32, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i32) #1

declare dso_local i32 @negate_rtx(i32, i64) #1

declare dso_local i32 @set_mem_align(i64, i32) #1

declare dso_local i32 @emit_block_move(i64, i64, i64, i32) #1

declare dso_local i32 @apply_args_size(...) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i32 @use_reg(i64*, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @prepare_call_address(i64, i32*, i64*, i32, i32) #1

declare dso_local i64 @memory_address(i32, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @last_call_insn(...) #1

declare dso_local i32 @add_function_usage_to(i64, i64) #1

declare dso_local i32 @emit_stack_restore(i32, i64, i32) #1

declare dso_local i64 @copy_addr_to_reg(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
