; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }

@main.long_options = internal global [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 86 }, %struct.option { i8* null, i8 -128, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"HhVv\00", align 1
@EOF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sysdump\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@FOPEN_RB = common dso_local global i32 0, align 4
@file = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"cannot open input file %s\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @PACKAGE, align 4
  %9 = load i32, i32* @LOCALEDIR, align 4
  %10 = call i32 @bindtextdomain(i32 %8, i32 %9)
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = call i32 @textdomain(i32 %11)
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** @program_name, align 8
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i32 @xmalloc_set_program_name(i8* %16)
  %18 = call i32 @expandargv(i32* %4, i8*** %5)
  br label %19

19:                                               ; preds = %37, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %34 [
    i32 72, label %27
    i32 104, label %27
    i32 118, label %30
    i32 86, label %30
    i32 0, label %33
  ]

27:                                               ; preds = %25, %25
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @show_usage(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %25, %25, %27
  %31 = call i32 @print_version(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @exit(i32 0) #3
  unreachable

33:                                               ; preds = %25
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @show_usage(i32 %35, i32 1)
  br label %37

37:                                               ; preds = %34, %33
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @optind, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* @optind, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 (i32, ...) @fatal(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @FOPEN_RB, align 4
  %57 = call i32 @fopen(i8* %55, i32 %56)
  store i32 %57, i32* @file, align 4
  %58 = load i32, i32* @file, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i32, ...) @fatal(i32 %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = call i32 (...) @module()
  ret i32 0
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @show_usage(i32, i32) #1

declare dso_local i32 @print_version(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fopen(i8*, i32) #1

declare dso_local i32 @module(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
