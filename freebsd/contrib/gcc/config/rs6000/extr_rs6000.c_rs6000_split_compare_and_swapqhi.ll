; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_compare_and_swapqhi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_compare_and_swapqhi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCmode = common dso_local global i32 0, align 4
@CR0_REGNO = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@UNSPEC_AND = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_split_compare_and_swapqhi(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @CCmode, align 4
  %18 = load i32, i32* @CR0_REGNO, align 4
  %19 = call i32 @gen_rtx_REG(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = call i32 (...) @gen_memory_barrier()
  %21 = call i32 @emit_insn(i32 %20)
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = call i32 (...) @gen_label_rtx()
  %24 = call i32 @gen_rtx_LABEL_REF(i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = call i32 (...) @gen_label_rtx()
  %27 = call i32 @gen_rtx_LABEL_REF(i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  %30 = call i32 @emit_label(i32 %29)
  %31 = load i32, i32* @SImode, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @emit_load_locked(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @SImode, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SImode, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @gen_rtvec(i32 2, i32 %38, i32 %39)
  %41 = load i32, i32* @UNSPEC_AND, align 4
  %42 = call i32 @gen_rtx_UNSPEC(i32 %37, i32 %40, i32 %41)
  %43 = call i32 @gen_rtx_SET(i32 %35, i32 %36, i32 %42)
  %44 = call i32 @emit_insn(i32 %43)
  %45 = load i32, i32* @CCmode, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @gen_rtx_COMPARE(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @VOIDmode, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @gen_rtx_SET(i32 %49, i32 %50, i32 %51)
  %53 = call i32 @emit_insn(i32 %52)
  %54 = load i32, i32* @VOIDmode, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @const0_rtx, align 4
  %57 = call i32 @gen_rtx_NE(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @emit_unlikely_jump(i32 %58, i32 %59)
  %61 = load i32, i32* @SImode, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @SImode, align 4
  %64 = load i32, i32* @SImode, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @gen_rtx_NOT(i32 %64, i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @gen_rtx_AND(i32 %63, i32 %66, i32 %67)
  %69 = call i32 @gen_rtx_SET(i32 %61, i32 %62, i32 %68)
  %70 = call i32 @emit_insn(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @gen_iorsi3(i32 %71, i32 %72, i32 %73)
  %75 = call i32 @emit_insn(i32 %74)
  %76 = load i32, i32* @SImode, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @emit_store_conditional(i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @VOIDmode, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @const0_rtx, align 4
  %84 = call i32 @gen_rtx_NE(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @emit_unlikely_jump(i32 %85, i32 %86)
  %88 = call i32 (...) @gen_isync()
  %89 = call i32 @emit_insn(i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @XEXP(i32 %90, i32 0)
  %92 = call i32 @emit_label(i32 %91)
  ret void
}

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_memory_barrier(...) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @emit_load_locked(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_COMPARE(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_NE(i32, i32, i32) #1

declare dso_local i32 @emit_unlikely_jump(i32, i32) #1

declare dso_local i32 @gen_rtx_AND(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_NOT(i32, i32) #1

declare dso_local i32 @gen_iorsi3(i32, i32, i32) #1

declare dso_local i32 @emit_store_conditional(i32, i32, i32, i32) #1

declare dso_local i32 @gen_isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
