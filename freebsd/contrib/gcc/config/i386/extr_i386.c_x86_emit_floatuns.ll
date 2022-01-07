; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_emit_floatuns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_emit_floatuns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@LSHIFTRT = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32* null, align 8
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_emit_floatuns(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %12 = load i32**, i32*** %2, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @GET_MODE(i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @SImode, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @DImode, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %1
  %24 = phi i1 [ true, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load i32**, i32*** %2, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32**, i32*** %2, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @force_reg(i32 %30, i32* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @GET_MODE(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = call i32* (...) @gen_label_rtx()
  store i32* %37, i32** %3, align 8
  %38 = call i32* (...) @gen_label_rtx()
  store i32* %38, i32** %4, align 8
  %39 = load i32, i32* @Pmode, align 4
  %40 = call i32* @gen_reg_rtx(i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32* @gen_reg_rtx(i32 %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @const0_rtx, align 4
  %45 = load i32, i32* @LT, align 4
  %46 = load i32, i32* @const0_rtx, align 4
  %47 = load i32, i32* @Pmode, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @emit_cmp_and_jump_insns(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 0, i32* %48)
  %50 = load i32, i32* @VOIDmode, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @gen_rtx_FLOAT(i32 %52, i32* %53)
  %55 = call i32 @gen_rtx_SET(i32 %50, i32* %51, i32 %54)
  %56 = call i32 @emit_insn(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @gen_jump(i32* %57)
  %59 = call i32 @emit_jump_insn(i32 %58)
  %60 = call i32 (...) @emit_barrier()
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @emit_label(i32* %61)
  %63 = load i32, i32* @Pmode, align 4
  %64 = load i32, i32* @LSHIFTRT, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** @const1_rtx, align 8
  %67 = load i32, i32* @OPTAB_DIRECT, align 4
  %68 = call i32* @expand_simple_binop(i32 %63, i32 %64, i32* %65, i32* %66, i32* null, i32 1, i32 %67)
  store i32* %68, i32** %5, align 8
  %69 = load i32, i32* @Pmode, align 4
  %70 = load i32, i32* @AND, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** @const1_rtx, align 8
  %73 = load i32, i32* @OPTAB_DIRECT, align 4
  %74 = call i32* @expand_simple_binop(i32 %69, i32 %70, i32* %71, i32* %72, i32* null, i32 1, i32 %73)
  store i32* %74, i32** %6, align 8
  %75 = load i32, i32* @Pmode, align 4
  %76 = load i32, i32* @IOR, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @OPTAB_DIRECT, align 4
  %81 = call i32* @expand_simple_binop(i32 %75, i32 %76, i32* %77, i32* %78, i32* %79, i32 1, i32 %80)
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @expand_float(i32* %82, i32* %83, i32 0)
  %85 = load i32, i32* @VOIDmode, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @gen_rtx_PLUS(i32 %87, i32* %88, i32* %89)
  %91 = call i32 @gen_rtx_SET(i32 %85, i32* %86, i32 %90)
  %92 = call i32 @emit_insn(i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @emit_label(i32* %93)
  ret void
}

declare dso_local i32 @GET_MODE(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @force_reg(i32, i32*) #1

declare dso_local i32* @gen_label_rtx(...) #1

declare dso_local i32* @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32*, i32) #1

declare dso_local i32 @gen_rtx_FLOAT(i32, i32*) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_jump(i32*) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @emit_label(i32*) #1

declare dso_local i32* @expand_simple_binop(i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @expand_float(i32*, i32*, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
