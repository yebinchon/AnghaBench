; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_lex_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_lex_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"/* Parameters sent to lex. */\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"#ifdef YYLEX_PARAM\0A\00", align 1
@pure_parser = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"# ifdef YYLEX_PARAM_TYPE\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"#  define YYLEX_DECL() yylex(YYSTYPE *yylval, YYLEX_PARAM_TYPE YYLEX_PARAM)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"# else\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"#  define YYLEX_DECL() yylex(YYSTYPE *yylval, void * YYLEX_PARAM)\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"# endif\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"# define YYLEX yylex(&yylval, YYLEX_PARAM)\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"# define YYLEX_DECL() yylex(void *YYLEX_PARAM)\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"# define YYLEX yylex(YYLEX_PARAM)\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@lex_param = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [46 x i8] c"# define YYLEX_DECL() yylex(YYSTYPE *yylval, \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"# define YYLEX yylex(&yylval, \00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"# define YYLEX_DECL() yylex(YYSTYPE *yylval)\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"# define YYLEX yylex(&yylval)\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"# define YYLEX_DECL() yylex(\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"# define YYLEX yylex(\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"# define YYLEX_DECL() yylex(void)\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"# define YYLEX yylex()\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@locations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_lex_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_lex_decl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @putc_code(i32* %3, i8 signext 10)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @putl_code(i32* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @putl_code(i32* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i64, i64* @pure_parser, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @putl_code(i32* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @putl_code(i32* %14, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @putl_code(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @putl_code(i32* %18, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @putl_code(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @putl_code(i32* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %29

24:                                               ; preds = %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @putl_code(i32* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @putl_code(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %11
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @putl_code(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i64, i64* @pure_parser, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i64, i64* @lex_param, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @puts_code(i32* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = load i64, i64* @lex_param, align 8
  %42 = call i32 @puts_param_types(i32* %40, i64 %41, i32 0)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @putl_code(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @puts_code(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = load i64, i64* @lex_param, align 8
  %49 = call i32 @puts_param_names(i32* %47, i64 %48, i32 0)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @putl_code(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %85

52:                                               ; preds = %34, %29
  %53 = load i64, i64* @pure_parser, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @putl_code(i32* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @putl_code(i32* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  br label %84

60:                                               ; preds = %52
  %61 = load i64, i64* @lex_param, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @puts_code(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %66 = load i32*, i32** %2, align 8
  %67 = load i64, i64* @lex_param, align 8
  %68 = call i32 @puts_param_types(i32* %66, i64 %67, i32 0)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @putl_code(i32* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @puts_code(i32* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %73 = load i32*, i32** %2, align 8
  %74 = load i64, i64* @lex_param, align 8
  %75 = call i32 @puts_param_names(i32* %73, i64 %74, i32 0)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @putl_code(i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %83

78:                                               ; preds = %60
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @putl_code(i32* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @putl_code(i32* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %63
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84, %37
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @putl_code(i32* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @putc_code(i32*, i8 signext) #1

declare dso_local i32 @putl_code(i32*, i8*) #1

declare dso_local i32 @puts_code(i32*, i8*) #1

declare dso_local i32 @puts_param_types(i32*, i64, i32) #1

declare dso_local i32 @puts_param_names(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
