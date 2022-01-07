; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_set_const32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_set_const32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_emit_set_const32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @GET_MODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @reload_in_progress, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @reload_completed, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %6, align 4
  br label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @gen_reg_rtx(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @CONST_INT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @small_int_operand(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @const_high_operand(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i32, i32* @VOIDmode, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @INTVAL(i32 %41)
  %43 = and i32 %42, -1024
  %44 = call i32 @GEN_INT(i32 %43)
  %45 = call i32 @gen_rtx_SET(i32 %39, i32 %40, i32 %44)
  %46 = call i32 @emit_insn(i32 %45)
  %47 = load i32, i32* @VOIDmode, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @INTVAL(i32 %51)
  %53 = and i32 %52, 1023
  %54 = call i32 @GEN_INT(i32 %53)
  %55 = call i32 @gen_rtx_IOR(i32 %49, i32 %50, i32 %54)
  %56 = call i32 @gen_rtx_SET(i32 %47, i32 %48, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  br label %74

58:                                               ; preds = %19
  %59 = load i32, i32* @VOIDmode, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @gen_rtx_HIGH(i32 %61, i32 %62)
  %64 = call i32 @gen_rtx_SET(i32 %59, i32 %60, i32 %63)
  %65 = call i32 @emit_insn(i32 %64)
  %66 = load i32, i32* @VOIDmode, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @gen_rtx_LO_SUM(i32 %68, i32 %69, i32 %70)
  %72 = call i32 @gen_rtx_SET(i32 %66, i32 %67, i32 %71)
  %73 = call i32 @emit_insn(i32 %72)
  br label %74

74:                                               ; preds = %58, %35
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @small_int_operand(i32, i32) #1

declare dso_local i32 @const_high_operand(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @gen_rtx_IOR(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_HIGH(i32, i32) #1

declare dso_local i32 @gen_rtx_LO_SUM(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
