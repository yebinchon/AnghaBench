; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_dot_prod_v8qi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_dot_prod_v8qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V8QImode = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@V4HImode = common dso_local global i32 0, align 4
@V2SImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_expand_dot_prod_v8qi(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @V8QImode, align 4
  %23 = call i32 @CONST0_RTX(i32 %22)
  store i32 %23, i32* %10, align 4
  store i32 %23, i32* %9, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* @V8QImode, align 4
  %26 = call i32 @gen_reg_rtx(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @V8QImode, align 4
  %28 = call i32 @gen_reg_rtx(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @LT, align 4
  %30 = load i32, i32* @V8QImode, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V8QImode, align 4
  %36 = call i32 @CONST0_RTX(i32 %35)
  %37 = call i32 @ia64_expand_vecint_compare(i32 %29, i32 %30, i32 %31, i32 %34, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i32, i32* @LT, align 4
  %44 = load i32, i32* @V8QImode, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @V8QImode, align 4
  %50 = call i32 @CONST0_RTX(i32 %49)
  %51 = call i32 @ia64_expand_vecint_compare(i32 %43, i32 %44, i32 %45, i32 %48, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @gcc_assert(i32 %55)
  br label %57

57:                                               ; preds = %24, %21
  %58 = load i32, i32* @V4HImode, align 4
  %59 = call i32 @gen_reg_rtx(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @V4HImode, align 4
  %61 = call i32 @gen_reg_rtx(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @V4HImode, align 4
  %63 = call i32 @gen_reg_rtx(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @V4HImode, align 4
  %65 = call i32 @gen_reg_rtx(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @V8QImode, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @gen_lowpart(i32 %66, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @gen_unpack1_l(i32 %68, i32 %71, i32 %72)
  %74 = call i32 @emit_insn(i32 %73)
  %75 = load i32, i32* @V8QImode, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @gen_lowpart(i32 %75, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @gen_unpack1_l(i32 %77, i32 %80, i32 %81)
  %83 = call i32 @emit_insn(i32 %82)
  %84 = load i32, i32* @V8QImode, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @gen_lowpart(i32 %84, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @gen_unpack1_h(i32 %86, i32 %89, i32 %90)
  %92 = call i32 @emit_insn(i32 %91)
  %93 = load i32, i32* @V8QImode, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @gen_lowpart(i32 %93, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @gen_unpack1_h(i32 %95, i32 %98, i32 %99)
  %101 = call i32 @emit_insn(i32 %100)
  %102 = load i32, i32* @V2SImode, align 4
  %103 = call i32 @gen_reg_rtx(i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* @V2SImode, align 4
  %105 = call i32 @gen_reg_rtx(i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @V2SImode, align 4
  %107 = call i32 @gen_reg_rtx(i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* @V2SImode, align 4
  %109 = call i32 @gen_reg_rtx(i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @gen_pmpy2_r(i32 %110, i32 %111, i32 %112)
  %114 = call i32 @emit_insn(i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @gen_pmpy2_l(i32 %115, i32 %116, i32 %117)
  %119 = call i32 @emit_insn(i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @gen_pmpy2_r(i32 %120, i32 %121, i32 %122)
  %124 = call i32 @emit_insn(i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @gen_pmpy2_l(i32 %125, i32 %126, i32 %127)
  %129 = call i32 @emit_insn(i32 %128)
  %130 = load i32, i32* @V2SImode, align 4
  %131 = call i32 @gen_reg_rtx(i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* @V2SImode, align 4
  %133 = call i32 @gen_reg_rtx(i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* @V2SImode, align 4
  %135 = call i32 @gen_reg_rtx(i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @gen_addv2si3(i32 %136, i32 %137, i32 %138)
  %140 = call i32 @emit_insn(i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @gen_addv2si3(i32 %141, i32 %142, i32 %143)
  %145 = call i32 @emit_insn(i32 %144)
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @gen_addv2si3(i32 %146, i32 %147, i32 %150)
  %152 = call i32 @emit_insn(i32 %151)
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @gen_addv2si3(i32 %155, i32 %156, i32 %157)
  %159 = call i32 @emit_insn(i32 %158)
  ret void
}

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @ia64_expand_vecint_compare(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_unpack1_l(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_unpack1_h(i32, i32, i32) #1

declare dso_local i32 @gen_pmpy2_r(i32, i32, i32) #1

declare dso_local i32 @gen_pmpy2_l(i32, i32, i32) #1

declare dso_local i32 @gen_addv2si3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
