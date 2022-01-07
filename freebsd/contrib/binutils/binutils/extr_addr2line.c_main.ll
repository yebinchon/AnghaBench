; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_addr2line.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_addr2line.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"b:Ce:sfHhij:Vv\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@do_demangle = common dso_local global i8* null, align 8
@unknown_demangling = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown demangling style `%s'\00", align 1
@base_names = common dso_local global i8* null, align 8
@with_functions = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"addr2line\00", align 1
@stdout = common dso_local global i32 0, align 4
@unwind_inlines = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@optind = common dso_local global i32 0, align 4
@addr = common dso_local global i8** null, align 8
@naddr = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = load i32, i32* @LOCALEDIR, align 4
  %13 = call i32 @bindtextdomain(i32 %11, i32 %12)
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = call i32 @textdomain(i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** @program_name, align 8
  %18 = load i8*, i8** @program_name, align 8
  %19 = call i32 @xmalloc_set_program_name(i8* %18)
  %20 = call i32 @expandargv(i32* %4, i8*** %5)
  %21 = call i32 (...) @bfd_init()
  %22 = call i32 (...) @set_default_bfd_target()
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %23

23:                                               ; preds = %71, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @long_options, align 4
  %27 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26, i32* null)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %68 [
    i32 0, label %32
    i32 98, label %33
    i32 67, label %35
    i32 101, label %53
    i32 115, label %55
    i32 102, label %57
    i32 118, label %59
    i32 86, label %59
    i32 104, label %61
    i32 72, label %61
    i32 105, label %64
    i32 106, label %66
  ]

32:                                               ; preds = %30
  br label %71

33:                                               ; preds = %30
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %8, align 8
  br label %71

35:                                               ; preds = %30
  %36 = load i8*, i8** @TRUE, align 8
  store i8* %36, i8** @do_demangle, align 8
  %37 = load i8*, i8** @optarg, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @cplus_demangle_name_to_style(i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @unknown_demangling, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @fatal(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @cplus_demangle_set_style(i32 %50)
  br label %52

52:                                               ; preds = %49, %35
  br label %71

53:                                               ; preds = %30
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %6, align 8
  br label %71

55:                                               ; preds = %30
  %56 = load i8*, i8** @TRUE, align 8
  store i8* %56, i8** @base_names, align 8
  br label %71

57:                                               ; preds = %30
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** @with_functions, align 8
  br label %71

59:                                               ; preds = %30, %30
  %60 = call i32 @print_version(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %71

61:                                               ; preds = %30, %30
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @usage(i32 %62, i32 0)
  br label %71

64:                                               ; preds = %30
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** @unwind_inlines, align 8
  br label %71

66:                                               ; preds = %30
  %67 = load i8*, i8** @optarg, align 8
  store i8* %67, i8** %7, align 8
  br label %71

68:                                               ; preds = %30
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @usage(i32 %69, i32 1)
  br label %71

71:                                               ; preds = %68, %66, %64, %61, %59, %57, %55, %53, %52, %33, %32
  br label %23

72:                                               ; preds = %23
  %73 = load i8*, i8** %6, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* @optind, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8** %80, i8*** @addr, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @optind, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* @naddr, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @process_file(i8* %84, i8* %85, i8* %86)
  ret i32 %87
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @cplus_demangle_name_to_style(i8*) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @cplus_demangle_set_style(i32) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @process_file(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
