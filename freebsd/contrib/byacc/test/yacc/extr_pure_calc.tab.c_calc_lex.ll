; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_pure_calc.tab.c_calc_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_pure_calc.tab.c_calc_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yylval = common dso_local global i32* null, align 8
@LETTER = common dso_local global i32 0, align 4
@DIGIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YYLEX_DECL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = call i32 (...) @getchar()
  store i32 %4, i32* %2, align 4
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %3

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @islower(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %12, 97
  %14 = load i32*, i32** @yylval, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @LETTER, align 4
  store i32 %15, i32* %1, align 4
  br label %27

16:                                               ; preds = %7
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @isdigit(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 48
  %23 = load i32*, i32** @yylval, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @DIGIT, align 4
  store i32 %24, i32* %1, align 4
  br label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %20, %11
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
