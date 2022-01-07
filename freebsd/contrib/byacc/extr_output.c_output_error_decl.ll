; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_error_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_error_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"/* Parameters sent to yyerror. */\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"#ifndef YYERROR_DECL\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"#define YYERROR_DECL() yyerror(\00", align 1
@parse_param = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"const char *s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"#ifndef YYERROR_CALL\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"#define YYERROR_CALL(msg) yyerror(\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"msg)\0A\00", align 1
@locations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_error_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_error_decl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @putc_code(i32* %3, i8 signext 10)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @putl_code(i32* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @putl_code(i32* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @puts_code(i32* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @parse_param, align 4
  %13 = call i32 @puts_param_types(i32* %11, i32 %12, i32 1)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @putl_code(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @putl_code(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @putl_code(i32* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @puts_code(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @parse_param, align 4
  %24 = call i32 @puts_param_names(i32* %22, i32 %23, i32 1)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @putl_code(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @putl_code(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @putc_code(i32*, i8 signext) #1

declare dso_local i32 @putl_code(i32*, i8*) #1

declare dso_local i32 @puts_code(i32*, i8*) #1

declare dso_local i32 @puts_param_types(i32*, i32, i32) #1

declare dso_local i32 @puts_param_names(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
