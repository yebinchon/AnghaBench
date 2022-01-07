; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc64_initialize_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc64_initialize_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@sparc_cpu = common dso_local global i64 0, align 8
@PROCESSOR_ULTRASPARC = common dso_local global i64 0, align 8
@PROCESSOR_ULTRASPARC3 = common dso_local global i64 0, align 8
@PROCESSOR_NIAGARA = common dso_local global i64 0, align 8
@LCT_NORMAL = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc64_initialize_trampoline(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SImode, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @gen_rtx_MEM(i32 %7, i32 %8)
  %10 = load i32, i32* @SImode, align 4
  %11 = call i32 @trunc_int_for_mode(i32 -2092875776, i32 %10)
  %12 = call i32 @GEN_INT(i32 %11)
  %13 = call i32 @emit_move_insn(i32 %9, i32 %12)
  %14 = load i32, i32* @SImode, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @plus_constant(i32 %15, i32 4)
  %17 = call i32 @gen_rtx_MEM(i32 %14, i32 %16)
  %18 = load i32, i32* @SImode, align 4
  %19 = call i32 @trunc_int_for_mode(i32 -900177896, i32 %18)
  %20 = call i32 @GEN_INT(i32 %19)
  %21 = call i32 @emit_move_insn(i32 %17, i32 %20)
  %22 = load i32, i32* @SImode, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @plus_constant(i32 %23, i32 8)
  %25 = call i32 @gen_rtx_MEM(i32 %22, i32 %24)
  %26 = load i32, i32* @SImode, align 4
  %27 = call i32 @trunc_int_for_mode(i32 -2118041600, i32 %26)
  %28 = call i32 @GEN_INT(i32 %27)
  %29 = call i32 @emit_move_insn(i32 %25, i32 %28)
  %30 = load i32, i32* @SImode, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @plus_constant(i32 %31, i32 12)
  %33 = call i32 @gen_rtx_MEM(i32 %30, i32 %32)
  %34 = load i32, i32* @SImode, align 4
  %35 = call i32 @trunc_int_for_mode(i32 -900177904, i32 %34)
  %36 = call i32 @GEN_INT(i32 %35)
  %37 = call i32 @emit_move_insn(i32 %33, i32 %36)
  %38 = load i32, i32* @DImode, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @plus_constant(i32 %39, i32 16)
  %41 = call i32 @gen_rtx_MEM(i32 %38, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @emit_move_insn(i32 %41, i32 %42)
  %44 = load i32, i32* @DImode, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @plus_constant(i32 %45, i32 24)
  %47 = call i32 @gen_rtx_MEM(i32 %44, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @emit_move_insn(i32 %47, i32 %48)
  %50 = load i32, i32* @DImode, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @gen_rtx_MEM(i32 %50, i32 %51)
  %53 = call i32 @validize_mem(i32 %52)
  %54 = call i32 @gen_flushdi(i32 %53)
  %55 = call i32 @emit_insn(i32 %54)
  %56 = load i64, i64* @sparc_cpu, align 8
  %57 = load i64, i64* @PROCESSOR_ULTRASPARC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %3
  %60 = load i64, i64* @sparc_cpu, align 8
  %61 = load i64, i64* @PROCESSOR_ULTRASPARC3, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i64, i64* @sparc_cpu, align 8
  %65 = load i64, i64* @PROCESSOR_NIAGARA, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* @DImode, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @plus_constant(i32 %69, i32 8)
  %71 = call i32 @gen_rtx_MEM(i32 %68, i32 %70)
  %72 = call i32 @validize_mem(i32 %71)
  %73 = call i32 @gen_flushdi(i32 %72)
  %74 = call i32 @emit_insn(i32 %73)
  br label %75

75:                                               ; preds = %67, %63, %59, %3
  ret void
}

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @trunc_int_for_mode(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_flushdi(i32) #1

declare dso_local i32 @validize_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
