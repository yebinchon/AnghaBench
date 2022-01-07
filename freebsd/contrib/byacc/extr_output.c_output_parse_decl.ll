; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_parse_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_parse_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"/* compatibility with bison */\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"#ifdef YYPARSE_PARAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"/* compatibility with FreeBSD */\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"# ifdef YYPARSE_PARAM_TYPE\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"#  define YYPARSE_DECL() yyparse(YYPARSE_PARAM_TYPE YYPARSE_PARAM)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"# else\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"#  define YYPARSE_DECL() yyparse(void *YYPARSE_PARAM)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"# endif\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"# define YYPARSE_DECL() yyparse(\00", align 1
@parse_param = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_parse_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_parse_decl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @putc_code(i32* %3, i8 signext 10)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @putl_code(i32* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @putl_code(i32* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @putl_code(i32* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @putl_code(i32* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @putl_code(i32* %13, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @putl_code(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @putl_code(i32* %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @putl_code(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @putl_code(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @puts_code(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @parse_param, align 4
  %27 = call i32 @puts_param_types(i32* %25, i32 %26, i32 0)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @putl_code(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @putl_code(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @putc_code(i32*, i8 signext) #1

declare dso_local i32 @putl_code(i32*, i8*) #1

declare dso_local i32 @puts_code(i32*, i8*) #1

declare dso_local i32 @puts_param_types(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
