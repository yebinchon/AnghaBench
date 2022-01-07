; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_binary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxx_pp = common dso_local global i32 0, align 4
@TFF_EXPR_IN_PARENS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"<unknown operator>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @dump_binary_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_binary_op(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @cxx_pp, align 4
  %8 = call i32 @pp_cxx_left_paren(i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @dump_expr(i32 %10, i32 %13)
  %15 = load i32, i32* @cxx_pp, align 4
  %16 = call i32 @pp_cxx_whitespace(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @cxx_pp, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @pp_cxx_identifier(i32 %20, i8* %21)
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @cxx_pp, align 4
  %25 = call i32 @pp_identifier(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @cxx_pp, align 4
  %28 = call i32 @pp_cxx_whitespace(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 1)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @dump_expr(i32 %30, i32 %33)
  %35 = load i32, i32* @cxx_pp, align 4
  %36 = call i32 @pp_cxx_right_paren(i32 %35)
  ret void
}

declare dso_local i32 @pp_cxx_left_paren(i32) #1

declare dso_local i32 @dump_expr(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_cxx_whitespace(i32) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

declare dso_local i32 @pp_cxx_right_paren(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
