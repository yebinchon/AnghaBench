; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"aABCDef:gHhlnopPrSst:uvVvX:\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@print_debug_syms = common dso_local global i32 0, align 4
@filename_per_symbol = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bsd\00", align 1
@do_demangle = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@unknown_demangling = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unknown demangling style `%s'\00", align 1
@dynamic = common dso_local global i32 0, align 4
@external_only = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@line_numbers = common dso_local global i32 0, align 4
@sort_numerically = common dso_local global i32 0, align 4
@no_sort = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@reverse_sort = common dso_local global i32 0, align 4
@print_armap = common dso_local global i32 0, align 4
@print_size = common dso_local global i32 0, align 4
@undefined_only = common dso_local global i32 0, align 4
@show_version = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"32_64\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Only -X 32_64 is supported\00", align 1
@target = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@sort_by_size = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [60 x i8] c"Using the --size-sort and --undefined-only options together\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"will produce no output, since undefined symbols have no size.\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@filename_per_file = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4
@environ = common dso_local global i32 0, align 4
@show_stats = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @PACKAGE, align 4
  %10 = load i32, i32* @LOCALEDIR, align 4
  %11 = call i32 @bindtextdomain(i32 %9, i32 %10)
  %12 = load i32, i32* @PACKAGE, align 4
  %13 = call i32 @textdomain(i32 %12)
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** @program_name, align 8
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i32 @xmalloc_set_program_name(i8* %16)
  %18 = load i8*, i8** @program_name, align 8
  %19 = call i32 @START_PROGRESS(i8* %18, i32 0)
  %20 = call i32 @expandargv(i32* %4, i8*** %5)
  %21 = call i32 (...) @bfd_init()
  %22 = call i32 (...) @set_default_bfd_target()
  br label %23

23:                                               ; preds = %89, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @long_options, align 4
  %27 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i32* null)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %90

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %86 [
    i32 97, label %32
    i32 65, label %33
    i32 111, label %33
    i32 66, label %34
    i32 67, label %36
    i32 68, label %53
    i32 101, label %54
    i32 102, label %55
    i32 103, label %58
    i32 72, label %59
    i32 104, label %59
    i32 108, label %62
    i32 110, label %63
    i32 118, label %63
    i32 112, label %64
    i32 80, label %65
    i32 114, label %67
    i32 115, label %68
    i32 83, label %69
    i32 116, label %70
    i32 117, label %73
    i32 86, label %74
    i32 88, label %75
    i32 128, label %83
    i32 0, label %85
  ]

32:                                               ; preds = %30
  store i32 1, i32* @print_debug_syms, align 4
  br label %89

33:                                               ; preds = %30, %30
  store i32 1, i32* @filename_per_symbol, align 4
  br label %89

34:                                               ; preds = %30
  %35 = call i32 @set_output_format(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %89

36:                                               ; preds = %30
  store i32 1, i32* @do_demangle, align 4
  %37 = load i8*, i8** @optarg, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @cplus_demangle_name_to_style(i8* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @unknown_demangling, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 (i32, ...) @fatal(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @cplus_demangle_set_style(i32 %50)
  br label %52

52:                                               ; preds = %49, %36
  br label %89

53:                                               ; preds = %30
  store i32 1, i32* @dynamic, align 4
  br label %89

54:                                               ; preds = %30
  br label %89

55:                                               ; preds = %30
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @set_output_format(i8* %56)
  br label %89

58:                                               ; preds = %30
  store i32 1, i32* @external_only, align 4
  br label %89

59:                                               ; preds = %30, %30
  %60 = load i32, i32* @stdout, align 4
  %61 = call i32 @usage(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %30, %59
  store i32 1, i32* @line_numbers, align 4
  br label %89

63:                                               ; preds = %30, %30
  store i32 1, i32* @sort_numerically, align 4
  br label %89

64:                                               ; preds = %30
  store i32 1, i32* @no_sort, align 4
  br label %89

65:                                               ; preds = %30
  %66 = call i32 @set_output_format(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %89

67:                                               ; preds = %30
  store i32 1, i32* @reverse_sort, align 4
  br label %89

68:                                               ; preds = %30
  store i32 1, i32* @print_armap, align 4
  br label %89

69:                                               ; preds = %30
  store i32 1, i32* @print_size, align 4
  br label %89

70:                                               ; preds = %30
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @set_print_radix(i8* %71)
  br label %89

73:                                               ; preds = %30
  store i32 1, i32* @undefined_only, align 4
  br label %89

74:                                               ; preds = %30
  store i32 1, i32* @show_version, align 4
  br label %89

75:                                               ; preds = %30
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 (i32, ...) @fatal(i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  br label %89

83:                                               ; preds = %30
  %84 = load i8*, i8** @optarg, align 8
  store i8* %84, i8** @target, align 8
  br label %89

85:                                               ; preds = %30
  br label %89

86:                                               ; preds = %30
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @usage(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %86, %85, %83, %82, %74, %73, %70, %69, %68, %67, %65, %64, %63, %62, %58, %55, %54, %53, %52, %34, %33, %32
  br label %23

90:                                               ; preds = %23
  %91 = load i32, i32* @show_version, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @print_version(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i64, i64* @sort_by_size, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* @undefined_only, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 (i32, ...) @non_fatal(i32 %102)
  %104 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %105 = call i32 (i32, ...) @non_fatal(i32 %104)
  store i32 0, i32* %3, align 4
  br label %145

106:                                              ; preds = %98, %95
  %107 = load i32, i32* @optind, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = call i32 @display_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %145

115:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @optind, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* @filename_per_file, align 4
  br label %121

121:                                              ; preds = %120, %115
  br label %122

122:                                              ; preds = %139, %121
  %123 = load i32, i32* @optind, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = call i32 @PROGRESS(i32 1)
  %128 = load i8**, i8*** %5, align 8
  %129 = load i32, i32* @optind, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @optind, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @display_file(i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %136, %126
  br label %122

140:                                              ; preds = %122
  %141 = load i8*, i8** @program_name, align 8
  %142 = call i32 @END_PROGRESS(i8* %141)
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @exit(i32 %143) #3
  unreachable

145:                                              ; preds = %110, %101
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @START_PROGRESS(i8*, i32) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @set_output_format(i8*) #1

declare dso_local i32 @cplus_demangle_name_to_style(i8*) #1

declare dso_local i32 @fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @cplus_demangle_set_style(i32) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @set_print_radix(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @non_fatal(i32, ...) #1

declare dso_local i32 @display_file(i8*) #1

declare dso_local i32 @PROGRESS(i32) #1

declare dso_local i32 @END_PROGRESS(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
