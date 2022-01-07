; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symbol_prefix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"yyparse\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"yylex\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"yyerror\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"yychar\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"yyval\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"yylval\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"yydebug\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"yynerrs\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"yyerrflag\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"yylhs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"yylen\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"yydefred\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"yydgoto\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"yysindex\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"yyrindex\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"yygindex\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"yytable\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"yycheck\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"yyname\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"yyrule\00", align 1
@outline = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [23 x i8] c"#define YYPREFIX \22%s\22\0A\00", align 1
@locations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_prefix(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i8*, i8** @symbol_prefix, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @symbol_prefix, align 8
  br label %47

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @define_prefixed(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @define_prefixed(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @define_prefixed(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @define_prefixed(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @define_prefixed(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @define_prefixed(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @define_prefixed(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @define_prefixed(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @define_prefixed(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @define_prefixed(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @define_prefixed(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @define_prefixed(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @define_prefixed(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @define_prefixed(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @define_prefixed(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @define_prefixed(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @define_prefixed(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @define_prefixed(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @define_prefixed(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @define_prefixed(i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %47

47:                                               ; preds = %6, %5
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @CountLine(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @outline, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @outline, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32*, i32** %2, align 8
  %56 = load i8*, i8** @symbol_prefix, align 8
  %57 = call i32 @fprintf(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %56)
  ret void
}

declare dso_local i32 @define_prefixed(i32*, i8*) #1

declare dso_local i64 @CountLine(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
