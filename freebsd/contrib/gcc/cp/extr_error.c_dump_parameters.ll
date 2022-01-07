; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxx_pp = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@TFF_FUNCTION_DEFAULT_ARGUMENTS = common dso_local global i32 0, align 4
@TFF_EXPR_IN_PARENS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_parameters(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @cxx_pp, align 4
  %7 = call i32 @pp_cxx_left_paren(i32 %6)
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @void_list_node, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @cxx_pp, align 4
  %17 = call i32 @pp_separate_with_comma(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* %5, align 4
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @cxx_pp, align 4
  %23 = call i32 @pp_cxx_identifier(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %54

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @TREE_VALUE(i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dump_type(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TFF_FUNCTION_DEFAULT_ARGUMENTS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %24
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @TREE_PURPOSE(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* @cxx_pp, align 4
  %39 = call i32 @pp_cxx_whitespace(i32 %38)
  %40 = load i32, i32* @cxx_pp, align 4
  %41 = call i32 @pp_equal(i32 %40)
  %42 = load i32, i32* @cxx_pp, align 4
  %43 = call i32 @pp_cxx_whitespace(i32 %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @TREE_PURPOSE(i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @dump_expr(i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %37, %33, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @TREE_CHAIN(i64 %52)
  store i64 %53, i64* %3, align 8
  br label %8

54:                                               ; preds = %21, %8
  %55 = load i32, i32* @cxx_pp, align 4
  %56 = call i32 @pp_cxx_right_paren(i32 %55)
  ret void
}

declare dso_local i32 @pp_cxx_left_paren(i32) #1

declare dso_local i32 @pp_separate_with_comma(i32) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @dump_type(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i32 @pp_cxx_whitespace(i32) #1

declare dso_local i32 @pp_equal(i32) #1

declare dso_local i32 @dump_expr(i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_cxx_right_paren(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
