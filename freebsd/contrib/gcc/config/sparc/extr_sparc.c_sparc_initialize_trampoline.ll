; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_initialize_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_initialize_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@ior_optab = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@sparc_cpu = common dso_local global i64 0, align 8
@PROCESSOR_ULTRASPARC = common dso_local global i64 0, align 8
@PROCESSOR_ULTRASPARC3 = common dso_local global i64 0, align 8
@PROCESSOR_NIAGARA = common dso_local global i64 0, align 8
@LCT_NORMAL = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_initialize_trampoline(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SImode, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @plus_constant(i32 %8, i32 0)
  %10 = call i32 @gen_rtx_MEM(i32 %7, i32 %9)
  %11 = load i32, i32* @SImode, align 4
  %12 = load i32, i32* @ior_optab, align 4
  %13 = load i32, i32* @RSHIFT_EXPR, align 4
  %14 = load i32, i32* @SImode, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @size_int(i32 10)
  %17 = call i32 @expand_shift(i32 %13, i32 %14, i32 %15, i32 %16, i32 0, i32 1)
  %18 = load i32, i32* @SImode, align 4
  %19 = call i32 @trunc_int_for_mode(i32 50331648, i32 %18)
  %20 = call i32 @GEN_INT(i32 %19)
  %21 = load i32, i32* @NULL_RTX, align 4
  %22 = load i32, i32* @OPTAB_DIRECT, align 4
  %23 = call i32 @expand_binop(i32 %11, i32 %12, i32 %17, i32 %20, i32 %21, i32 1, i32 %22)
  %24 = call i32 @emit_move_insn(i32 %10, i32 %23)
  %25 = load i32, i32* @SImode, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @plus_constant(i32 %26, i32 4)
  %28 = call i32 @gen_rtx_MEM(i32 %25, i32 %27)
  %29 = load i32, i32* @SImode, align 4
  %30 = load i32, i32* @ior_optab, align 4
  %31 = load i32, i32* @RSHIFT_EXPR, align 4
  %32 = load i32, i32* @SImode, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @size_int(i32 10)
  %35 = call i32 @expand_shift(i32 %31, i32 %32, i32 %33, i32 %34, i32 0, i32 1)
  %36 = load i32, i32* @SImode, align 4
  %37 = call i32 @trunc_int_for_mode(i32 83886080, i32 %36)
  %38 = call i32 @GEN_INT(i32 %37)
  %39 = load i32, i32* @NULL_RTX, align 4
  %40 = load i32, i32* @OPTAB_DIRECT, align 4
  %41 = call i32 @expand_binop(i32 %29, i32 %30, i32 %35, i32 %38, i32 %39, i32 1, i32 %40)
  %42 = call i32 @emit_move_insn(i32 %28, i32 %41)
  %43 = load i32, i32* @SImode, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @plus_constant(i32 %44, i32 8)
  %46 = call i32 @gen_rtx_MEM(i32 %43, i32 %45)
  %47 = load i32, i32* @SImode, align 4
  %48 = load i32, i32* @ior_optab, align 4
  %49 = load i32, i32* @SImode, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @GEN_INT(i32 1023)
  %52 = load i32, i32* @NULL_RTX, align 4
  %53 = call i32 @expand_and(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @SImode, align 4
  %55 = call i32 @trunc_int_for_mode(i32 -2118098944, i32 %54)
  %56 = call i32 @GEN_INT(i32 %55)
  %57 = load i32, i32* @NULL_RTX, align 4
  %58 = load i32, i32* @OPTAB_DIRECT, align 4
  %59 = call i32 @expand_binop(i32 %47, i32 %48, i32 %53, i32 %56, i32 %57, i32 1, i32 %58)
  %60 = call i32 @emit_move_insn(i32 %46, i32 %59)
  %61 = load i32, i32* @SImode, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @plus_constant(i32 %62, i32 12)
  %64 = call i32 @gen_rtx_MEM(i32 %61, i32 %63)
  %65 = load i32, i32* @SImode, align 4
  %66 = load i32, i32* @ior_optab, align 4
  %67 = load i32, i32* @SImode, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @GEN_INT(i32 1023)
  %70 = load i32, i32* @NULL_RTX, align 4
  %71 = call i32 @expand_and(i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @SImode, align 4
  %73 = call i32 @trunc_int_for_mode(i32 -2079285248, i32 %72)
  %74 = call i32 @GEN_INT(i32 %73)
  %75 = load i32, i32* @NULL_RTX, align 4
  %76 = load i32, i32* @OPTAB_DIRECT, align 4
  %77 = call i32 @expand_binop(i32 %65, i32 %66, i32 %71, i32 %74, i32 %75, i32 1, i32 %76)
  %78 = call i32 @emit_move_insn(i32 %64, i32 %77)
  %79 = load i32, i32* @SImode, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @gen_rtx_MEM(i32 %79, i32 %80)
  %82 = call i32 @validize_mem(i32 %81)
  %83 = call i32 @gen_flush(i32 %82)
  %84 = call i32 @emit_insn(i32 %83)
  %85 = load i64, i64* @sparc_cpu, align 8
  %86 = load i64, i64* @PROCESSOR_ULTRASPARC, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %3
  %89 = load i64, i64* @sparc_cpu, align 8
  %90 = load i64, i64* @PROCESSOR_ULTRASPARC3, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i64, i64* @sparc_cpu, align 8
  %94 = load i64, i64* @PROCESSOR_NIAGARA, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* @SImode, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @plus_constant(i32 %98, i32 8)
  %100 = call i32 @gen_rtx_MEM(i32 %97, i32 %99)
  %101 = call i32 @validize_mem(i32 %100)
  %102 = call i32 @gen_flush(i32 %101)
  %103 = call i32 @emit_insn(i32 %102)
  br label %104

104:                                              ; preds = %96, %92, %88, %3
  ret void
}

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @expand_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expand_shift(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @trunc_int_for_mode(i32, i32) #1

declare dso_local i32 @expand_and(i32, i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_flush(i32) #1

declare dso_local i32 @validize_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
