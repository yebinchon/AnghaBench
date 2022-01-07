; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_swdivdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_swdivdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DFmode = common dso_local global i32 0, align 4
@dconst1 = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@UNSPEC_FRES = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_emit_swdivdf(i32 %0, i32 %1, i32 %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @DFmode, align 4
  %18 = call i32 @gen_reg_rtx(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @DFmode, align 4
  %20 = call i32 @gen_reg_rtx(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @DFmode, align 4
  %22 = call i32 @gen_reg_rtx(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @DFmode, align 4
  %24 = call i32 @gen_reg_rtx(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @DFmode, align 4
  %26 = call i32 @gen_reg_rtx(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @DFmode, align 4
  %28 = call i32 @gen_reg_rtx(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @DFmode, align 4
  %30 = call i32 @gen_reg_rtx(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @DFmode, align 4
  %32 = call i32 @gen_reg_rtx(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* @DFmode, align 4
  %34 = call i32 @gen_reg_rtx(i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @DFmode, align 4
  %36 = load i32, i32* @dconst1, align 4
  %37 = load i32, i32* @DFmode, align 4
  %38 = call i32 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %36, i32 %37)
  %39 = call i32 @force_reg(i32 %35, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @VOIDmode, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DFmode, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @gen_rtvec(i32 1, i32 %43)
  %45 = load i32, i32* @UNSPEC_FRES, align 4
  %46 = call i32 @gen_rtx_UNSPEC(i32 %42, i32 %44, i32 %45)
  %47 = call i32 @gen_rtx_SET(i32 %40, i32 %41, i32 %46)
  %48 = call i32 @emit_insn(i32 %47)
  %49 = load i32, i32* @VOIDmode, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @DFmode, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @SFmode, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @gen_rtx_MULT(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @gen_rtx_MINUS(i32 %51, i32 %52, i32 %56)
  %58 = call i32 @gen_rtx_SET(i32 %49, i32 %50, i32 %57)
  %59 = call i32 @emit_insn(i32 %58)
  %60 = load i32, i32* @VOIDmode, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @DFmode, align 4
  %63 = load i32, i32* @DFmode, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @gen_rtx_MULT(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gen_rtx_PLUS(i32 %62, i32 %66, i32 %67)
  %69 = call i32 @gen_rtx_SET(i32 %60, i32 %61, i32 %68)
  %70 = call i32 @emit_insn(i32 %69)
  %71 = load i32, i32* @VOIDmode, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DFmode, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @gen_rtx_MULT(i32 %73, i32 %74, i32 %75)
  %77 = call i32 @gen_rtx_SET(i32 %71, i32 %72, i32 %76)
  %78 = call i32 @emit_insn(i32 %77)
  %79 = load i32, i32* @VOIDmode, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @DFmode, align 4
  %82 = load i32, i32* @DFmode, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @gen_rtx_MULT(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @gen_rtx_PLUS(i32 %81, i32 %85, i32 %86)
  %88 = call i32 @gen_rtx_SET(i32 %79, i32 %80, i32 %87)
  %89 = call i32 @emit_insn(i32 %88)
  %90 = load i32, i32* @VOIDmode, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @DFmode, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @gen_rtx_MULT(i32 %92, i32 %93, i32 %94)
  %96 = call i32 @gen_rtx_SET(i32 %90, i32 %91, i32 %95)
  %97 = call i32 @emit_insn(i32 %96)
  %98 = load i32, i32* @VOIDmode, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @DFmode, align 4
  %101 = load i32, i32* @DFmode, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @gen_rtx_MULT(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @gen_rtx_PLUS(i32 %100, i32 %104, i32 %105)
  %107 = call i32 @gen_rtx_SET(i32 %98, i32 %99, i32 %106)
  %108 = call i32 @emit_insn(i32 %107)
  %109 = load i32, i32* @VOIDmode, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @DFmode, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @gen_rtx_MULT(i32 %111, i32 %112, i32 %113)
  %115 = call i32 @gen_rtx_SET(i32 %109, i32 %110, i32 %114)
  %116 = call i32 @emit_insn(i32 %115)
  %117 = load i32, i32* @VOIDmode, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @DFmode, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @DFmode, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @gen_rtx_MULT(i32 %121, i32 %122, i32 %123)
  %125 = call i32 @gen_rtx_MINUS(i32 %119, i32 %120, i32 %124)
  %126 = call i32 @gen_rtx_SET(i32 %117, i32 %118, i32 %125)
  %127 = call i32 @emit_insn(i32 %126)
  %128 = load i32, i32* @VOIDmode, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @DFmode, align 4
  %131 = load i32, i32* @DFmode, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @gen_rtx_MULT(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @gen_rtx_PLUS(i32 %130, i32 %134, i32 %135)
  %137 = call i32 @gen_rtx_SET(i32 %128, i32 %129, i32 %136)
  %138 = call i32 @emit_insn(i32 %137)
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
