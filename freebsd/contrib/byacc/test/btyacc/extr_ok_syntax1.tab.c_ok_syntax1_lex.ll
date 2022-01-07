; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_ok_syntax1.tab.c_ok_syntax1_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_ok_syntax1.tab.c_ok_syntax1_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@yylval = common dso_local global %struct.TYPE_2__* null, align 8
@LETTER = common dso_local global i32 0, align 4
@base = common dso_local global i32* null, align 8
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
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %12, 97
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @yylval, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @LETTER, align 4
  store i32 %16, i32* %1, align 4
  br label %32

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @isdigit(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = sub nsw i32 %22, 48
  %24 = load i32*, i32** @base, align 8
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %23, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @yylval, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DIGIT, align 4
  store i32 %29, i32* %1, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %21, %11
  %33 = load i32, i32* %1, align 4
  ret i32 %33
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
