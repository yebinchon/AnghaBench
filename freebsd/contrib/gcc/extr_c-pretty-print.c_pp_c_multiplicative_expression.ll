; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_multiplicative_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_multiplicative_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_multiplicative_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_multiplicative_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %38 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 0)
  %13 = call i32 @pp_multiplicative_expression(i32* %10, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pp_c_whitespace(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pp_c_star(i32* %19)
  br label %31

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @pp_slash(i32* %25)
  br label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pp_modulo(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pp_c_whitespace(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @TREE_OPERAND(i32 %35, i32 1)
  %37 = call i32 @pp_c_cast_expression(i32* %34, i32 %36)
  br label %42

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pp_c_cast_expression(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_multiplicative_expression(i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_c_star(i32*) #1

declare dso_local i32 @pp_slash(i32*) #1

declare dso_local i32 @pp_modulo(i32*) #1

declare dso_local i32 @pp_c_cast_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
