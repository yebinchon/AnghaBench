; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_swdivsf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_swdivsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFmode = common dso_local global i32 0, align 4
@dconst1 = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@UNSPEC_FRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_emit_swdivsf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @SFmode, align 4
  %15 = call i32 @gen_reg_rtx(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @SFmode, align 4
  %17 = call i32 @gen_reg_rtx(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @SFmode, align 4
  %19 = call i32 @gen_reg_rtx(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @SFmode, align 4
  %21 = call i32 @gen_reg_rtx(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @SFmode, align 4
  %23 = call i32 @gen_reg_rtx(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @SFmode, align 4
  %25 = call i32 @gen_reg_rtx(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @SFmode, align 4
  %27 = load i32, i32* @dconst1, align 4
  %28 = load i32, i32* @SFmode, align 4
  %29 = call i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %27, i32 %28)
  %30 = call i32 @force_reg(i32 %26, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @VOIDmode, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SFmode, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gen_rtvec(i32 1, i32 %34)
  %36 = load i32, i32* @UNSPEC_FRES, align 4
  %37 = call i32 @gen_rtx_UNSPEC(i32 %33, i32 %35, i32 %36)
  %38 = call i32 @gen_rtx_SET(i32 %31, i32 %32, i32 %37)
  %39 = call i32 @emit_insn(i32 %38)
  %40 = load i32, i32* @VOIDmode, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SFmode, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @SFmode, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @gen_rtx_MULT(i32 %44, i32 %45, i32 %46)
  %48 = call i32 @gen_rtx_MINUS(i32 %42, i32 %43, i32 %47)
  %49 = call i32 @gen_rtx_SET(i32 %40, i32 %41, i32 %48)
  %50 = call i32 @emit_insn(i32 %49)
  %51 = load i32, i32* @VOIDmode, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SFmode, align 4
  %54 = load i32, i32* @SFmode, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @gen_rtx_MULT(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @gen_rtx_PLUS(i32 %53, i32 %57, i32 %58)
  %60 = call i32 @gen_rtx_SET(i32 %51, i32 %52, i32 %59)
  %61 = call i32 @emit_insn(i32 %60)
  %62 = load i32, i32* @VOIDmode, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @SFmode, align 4
  %65 = load i32, i32* @SFmode, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gen_rtx_MULT(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @gen_rtx_PLUS(i32 %64, i32 %68, i32 %69)
  %71 = call i32 @gen_rtx_SET(i32 %62, i32 %63, i32 %70)
  %72 = call i32 @emit_insn(i32 %71)
  %73 = load i32, i32* @VOIDmode, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @SFmode, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @gen_rtx_MULT(i32 %75, i32 %76, i32 %77)
  %79 = call i32 @gen_rtx_SET(i32 %73, i32 %74, i32 %78)
  %80 = call i32 @emit_insn(i32 %79)
  %81 = load i32, i32* @VOIDmode, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @SFmode, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SFmode, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @gen_rtx_MULT(i32 %85, i32 %86, i32 %87)
  %89 = call i32 @gen_rtx_MINUS(i32 %83, i32 %84, i32 %88)
  %90 = call i32 @gen_rtx_SET(i32 %81, i32 %82, i32 %89)
  %91 = call i32 @emit_insn(i32 %90)
  %92 = load i32, i32* @VOIDmode, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @SFmode, align 4
  %95 = load i32, i32* @SFmode, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @gen_rtx_MULT(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @gen_rtx_PLUS(i32 %94, i32 %98, i32 %99)
  %101 = call i32 @gen_rtx_SET(i32 %92, i32 %93, i32 %100)
  %102 = call i32 @emit_insn(i32 %101)
  ret void
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @gen_rtx_MINUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_MULT(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
