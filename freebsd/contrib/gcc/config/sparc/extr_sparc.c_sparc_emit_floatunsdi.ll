; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_floatunsdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_floatunsdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DImode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_emit_floatunsdi(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @DImode, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @force_reg(i32 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = call i32 (...) @gen_label_rtx()
  store i32 %20, i32* %5, align 4
  %21 = call i32 (...) @gen_label_rtx()
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @DImode, align 4
  %23 = call i32 @gen_reg_rtx(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @DImode, align 4
  %25 = call i32 @gen_reg_rtx(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @gen_reg_rtx(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @const0_rtx, align 4
  %30 = load i32, i32* @LT, align 4
  %31 = load i32, i32* @const0_rtx, align 4
  %32 = load i32, i32* @DImode, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @emit_cmp_and_jump_insns(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 0, i32 %33)
  %35 = load i32, i32* @VOIDmode, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @gen_rtx_FLOAT(i32 %37, i32 %38)
  %40 = call i32 @gen_rtx_SET(i32 %35, i32 %36, i32 %39)
  %41 = call i32 @emit_insn(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @gen_jump(i32 %42)
  %44 = call i32 @emit_jump_insn(i32 %43)
  %45 = call i32 (...) @emit_barrier()
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @emit_label(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @const1_rtx, align 4
  %51 = call i32 @gen_lshrdi3(i32 %48, i32 %49, i32 %50)
  %52 = call i32 @emit_insn(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @const1_rtx, align 4
  %56 = call i32 @gen_anddi3(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @gen_iordi3(i32 %58, i32 %59, i32 %60)
  %62 = call i32 @emit_insn(i32 %61)
  %63 = load i32, i32* @VOIDmode, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @gen_rtx_FLOAT(i32 %65, i32 %66)
  %68 = call i32 @gen_rtx_SET(i32 %63, i32 %64, i32 %67)
  %69 = call i32 @emit_insn(i32 %68)
  %70 = load i32, i32* @VOIDmode, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @gen_rtx_PLUS(i32 %72, i32 %73, i32 %74)
  %76 = call i32 @gen_rtx_SET(i32 %70, i32 %71, i32 %75)
  %77 = call i32 @emit_insn(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @emit_label(i32 %78)
  ret void
}

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_FLOAT(i32, i32) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_jump(i32) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @gen_lshrdi3(i32, i32, i32) #1

declare dso_local i32 @gen_anddi3(i32, i32, i32) #1

declare dso_local i32 @gen_iordi3(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
