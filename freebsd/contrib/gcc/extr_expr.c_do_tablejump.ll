; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_do_tablejump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_do_tablejump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@GTU = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@CASE_VECTOR_MODE = common dso_local global i32 0, align 4
@CASE_VECTOR_PC_RELATIVE = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @do_tablejump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tablejump(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @INTVAL(i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @INTVAL(i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GTU, align 4
  %28 = load i32, i32* @NULL_RTX, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @emit_cmp_and_jump_insns(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 1, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @Pmode, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* @Pmode, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @convert_to_mode(i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %24
  %40 = load i32, i32* @Pmode, align 4
  %41 = load i32, i32* @Pmode, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CASE_VECTOR_MODE, align 4
  %44 = call i32 @GET_MODE_SIZE(i32 %43)
  %45 = call i32 @GEN_INT(i32 %44)
  %46 = call i32 @gen_rtx_MULT(i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* @Pmode, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @gen_rtx_LABEL_REF(i32 %47, i32 %48)
  %50 = call i32 @gen_rtx_PLUS(i32 %40, i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @CASE_VECTOR_MODE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @memory_address_noforce(i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @CASE_VECTOR_MODE, align 4
  %55 = call i32 @gen_reg_rtx(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @CASE_VECTOR_MODE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @gen_const_mem(i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @convert_move(i32 %59, i32 %60, i32 0)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @gen_tablejump(i32 %62, i32 %63)
  %65 = call i32 @emit_jump_insn(i32 %64)
  %66 = load i32, i32* @CASE_VECTOR_PC_RELATIVE, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %39
  %69 = load i64, i64* @flag_pic, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i32 (...) @emit_barrier()
  br label %73

73:                                               ; preds = %71, %68, %39
  ret void
}

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_to_mode(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_MULT(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @memory_address_noforce(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_const_mem(i32, i32) #1

declare dso_local i32 @convert_move(i32, i32, i32) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_tablejump(i32, i32) #1

declare dso_local i32 @emit_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
