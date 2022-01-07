; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_unary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFF_EXPR_IN_PARENS = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @dump_unary_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_unary_op(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @cxx_pp, align 4
  %13 = call i32 @pp_cxx_left_paren(i32 %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @cxx_pp, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @pp_cxx_identifier(i32 %15, i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @dump_expr(i32 %19, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @cxx_pp, align 4
  %31 = call i32 @pp_cxx_right_paren(i32 %30)
  br label %32

32:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @pp_cxx_left_paren(i32) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @dump_expr(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_cxx_right_paren(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
