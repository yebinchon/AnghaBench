; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }
%struct.coff_ofile = type { i32 }

@main.long_options = internal global [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 86 }, %struct.option { i8* null, i8 -128, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"HhVv\00", align 1
@EOF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"coffdump\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.coff_ofile*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = load i32, i32* @LOCALEDIR, align 4
  %13 = call i32 @bindtextdomain(i32 %11, i32 %12)
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = call i32 @textdomain(i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @program_name, align 8
  %19 = load i8*, i8** @program_name, align 8
  %20 = call i32 @xmalloc_set_program_name(i8* %19)
  %21 = call i32 @expandargv(i32* %4, i8*** %5)
  br label %22

22:                                               ; preds = %40, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt_long(i32 %23, i8** %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %37 [
    i32 72, label %30
    i32 104, label %30
    i32 118, label %33
    i32 86, label %33
    i32 0, label %36
  ]

30:                                               ; preds = %28, %28
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @show_usage(i32 %31, i32 0)
  br label %40

33:                                               ; preds = %28, %28
  %34 = call i32 @print_version(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @exit(i32 0) #3
  unreachable

36:                                               ; preds = %28
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @show_usage(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %37, %36, %30
  br label %22

41:                                               ; preds = %22
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* @optind, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @fatal(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8*, i8** %9, align 8
  %59 = call i32* @bfd_openr(i8* %58, i32 0)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @bfd_fatal(i8* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @bfd_object, align 4
  %68 = call i32 @bfd_check_format_matches(i32* %66, i32 %67, i8*** %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @bfd_nonfatal(i8* %71)
  %73 = call i64 (...) @bfd_get_error()
  %74 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i8**, i8*** %8, align 8
  %78 = call i32 @list_matching_formats(i8** %77)
  %79 = load i8**, i8*** %8, align 8
  %80 = call i32 @free(i8** %79)
  br label %81

81:                                               ; preds = %76, %70
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %65
  %84 = load i32*, i32** %6, align 8
  %85 = call %struct.coff_ofile* @coff_grok(i32* %84)
  store %struct.coff_ofile* %85, %struct.coff_ofile** %7, align 8
  %86 = load %struct.coff_ofile*, %struct.coff_ofile** %7, align 8
  %87 = call i32 @coff_dump(%struct.coff_ofile* %86)
  %88 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
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

declare dso_local i32 @fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i32) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local %struct.coff_ofile* @coff_grok(i32*) #1

declare dso_local i32 @coff_dump(%struct.coff_ofile*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
