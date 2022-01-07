; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"second argument to %<__builtin_expect%> must be a constant\00", align 1
@integer_zero_node = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@flag_guess_branch_prob = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@NOTE_INSN_EXPECTED_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @expand_builtin_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_expect(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_CHAIN(i64 %15)
  %17 = load i64, i64* @NULL_TREE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @const0_rtx, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TREE_VALUE(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_CHAIN(i64 %24)
  %26 = call i64 @TREE_VALUE(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @INTEGER_CST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @integer_zero_node, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VOIDmode, align 4
  %38 = load i32, i32* @EXPAND_NORMAL, align 4
  %39 = call i32 @expand_expr(i64 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i64, i64* @flag_guess_branch_prob, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @GET_CODE(i32 %43)
  %45 = load i64, i64* @CONST_INT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @GET_MODE(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @force_reg(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @NULL_RTX, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @GET_MODE(i32 %54)
  %56 = load i32, i32* @EXPAND_NORMAL, align 4
  %57 = call i32 @expand_expr(i64 %52, i32 %53, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @NOTE_INSN_EXPECTED_VALUE, align 4
  %59 = call i32 @emit_note(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @VOIDmode, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gen_rtx_EQ(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %47, %42, %34
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @expand_expr(i64, i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @emit_note(i32) #1

declare dso_local i32 @gen_rtx_EQ(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
