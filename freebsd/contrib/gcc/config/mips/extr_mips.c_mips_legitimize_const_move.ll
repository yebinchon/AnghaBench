; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_const_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_const_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i32 0, align 4
@no_new_pseudos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mips_legitimize_const_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_legitimize_const_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @splittable_const_int_operand(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @INTVAL(i32 %16)
  %18 = call i32 @mips_move_integer(i32 %14, i32 %15, i32 %17)
  br label %84

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @splittable_symbolic_operand(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mips_split_symbol(i32 %27, i32 %28)
  %30 = call i32 @gen_rtx_SET(i32 %25, i32 %26, i32 %29)
  %31 = call i32 @emit_insn(i32 %30)
  br label %84

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @mips_tls_operand_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mips_legitimize_tls_address(i32 %38)
  %40 = call i32 @emit_move_insn(i32 %37, i32 %39)
  br label %84

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mips_split_const(i32 %42, i32* %7, i64* %8)
  %44 = load i32, i32* @TARGET_MIPS16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* @no_new_pseudos, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @SMALL_OPERAND(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @mips_force_temporary(i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @mips_add_offset(i32 0, i32 %61, i64 %62)
  %64 = call i32 @emit_move_insn(i32 %60, i32 %63)
  br label %84

65:                                               ; preds = %52, %46, %41
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @force_const_mem(i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @VOIDmode, align 4
  %71 = call i32 @memory_operand(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @XEXP(i32 %76, i32 0)
  %78 = call i32 @mips_split_symbol(i32 %75, i32 %77)
  %79 = call i32 @replace_equiv_address(i32 %74, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %65
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @emit_move_insn(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %56, %36, %24, %13
  ret void
}

declare dso_local i64 @splittable_const_int_operand(i32, i32) #1

declare dso_local i32 @mips_move_integer(i32, i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @splittable_symbolic_operand(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @mips_split_symbol(i32, i32) #1

declare dso_local i64 @mips_tls_operand_p(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @mips_legitimize_tls_address(i32) #1

declare dso_local i32 @mips_split_const(i32, i32*, i64*) #1

declare dso_local i64 @SMALL_OPERAND(i64) #1

declare dso_local i32 @mips_force_temporary(i32, i32) #1

declare dso_local i32 @mips_add_offset(i32, i32, i64) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i32 @memory_operand(i32, i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
