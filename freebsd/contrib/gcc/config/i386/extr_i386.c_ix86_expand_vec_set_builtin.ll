; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vec_set_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vec_set_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ix86_expand_vec_set_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_expand_vec_set_builtin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @TREE_VALUE(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TREE_CHAIN(i32 %14)
  %16 = call i32 @TREE_VALUE(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @TREE_CHAIN(i32 %17)
  %19 = call i32 @TREE_CHAIN(i32 %18)
  %20 = call i32 @TREE_VALUE(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @TYPE_MODE(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TREE_TYPE(i32 %25)
  %27 = call i32 @TYPE_MODE(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @VECTOR_MODE_P(i32 %28)
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NULL_RTX, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @expand_expr(i32 %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NULL_RTX, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @expand_expr(i32 %35, i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TREE_TYPE(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @get_element_number(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @GET_MODE(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %1
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @GET_MODE(i32 %49)
  %51 = load i64, i64* @VOIDmode, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @GET_MODE(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @convert_modes(i32 %54, i64 %56, i32 %57, i32 1)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %48, %1
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @force_reg(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @force_reg(i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @gen_reg_rtx(i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @emit_move_insn(i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ix86_expand_vector_set(i32 1, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @get_element_number(i32, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @convert_modes(i32, i64, i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @ix86_expand_vector_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
