; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"ABHhVvdfotx\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32* null, align 8
@berkeley_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid argument to --format: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@target = common dso_local global i32* null, align 8
@decimal = common dso_local global i64 0, align 8
@radix = common dso_local global i64 0, align 8
@octal = common dso_local global i64 0, align 8
@hex = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid radix: %s\0A\00", align 1
@show_version = common dso_local global i32 0, align 4
@show_totals = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@show_help = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@total_textsize = common dso_local global i64 0, align 8
@total_datasize = common dso_local global i64 0, align 8
@total_bsssize = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"\09%7lo\09%7lx\09\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\09%7lu\09%7lx\09\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"(TOTALS)\0A\00", align 1
@return_code = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
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
  %18 = call i32 @expandargv(i32* %4, i8*** %5)
  %19 = call i32 (...) @bfd_init()
  %20 = call i32 (...) @set_default_bfd_target()
  br label %21

21:                                               ; preds = %76, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* @long_options, align 4
  %25 = call i32 @getopt_long(i32 %22, i8** %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %76 [
    i32 200, label %30
    i32 202, label %42
    i32 201, label %44
    i32 65, label %61
    i32 66, label %62
    i32 118, label %63
    i32 86, label %63
    i32 100, label %64
    i32 120, label %66
    i32 111, label %68
    i32 116, label %70
    i32 102, label %71
    i32 0, label %72
    i32 104, label %73
    i32 72, label %73
    i32 63, label %73
  ]

30:                                               ; preds = %28
  %31 = load i32*, i32** @optarg, align 8
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %35 [
    i32 66, label %33
    i32 98, label %33
    i32 83, label %34
    i32 115, label %34
  ]

33:                                               ; preds = %30, %30
  store i32 1, i32* @berkeley_format, align 4
  br label %41

34:                                               ; preds = %30, %30
  store i32 0, i32* @berkeley_format, align 4
  br label %41

35:                                               ; preds = %30
  %36 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** @optarg, align 8
  %38 = call i32 @non_fatal(i32 %36, i32* %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @usage(i32 %39, i32 1)
  br label %41

41:                                               ; preds = %35, %34, %33
  br label %76

42:                                               ; preds = %28
  %43 = load i32*, i32** @optarg, align 8
  store i32* %43, i32** @target, align 8
  br label %76

44:                                               ; preds = %28
  %45 = load i32*, i32** @optarg, align 8
  %46 = call i32 @atol(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %54 [
    i32 10, label %48
    i32 8, label %50
    i32 16, label %52
  ]

48:                                               ; preds = %44
  %49 = load i64, i64* @decimal, align 8
  store i64 %49, i64* @radix, align 8
  br label %60

50:                                               ; preds = %44
  %51 = load i64, i64* @octal, align 8
  store i64 %51, i64* @radix, align 8
  br label %60

52:                                               ; preds = %44
  %53 = load i64, i64* @hex, align 8
  store i64 %53, i64* @radix, align 8
  br label %60

54:                                               ; preds = %44
  %55 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** @optarg, align 8
  %57 = call i32 @non_fatal(i32 %55, i32* %56)
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @usage(i32 %58, i32 1)
  br label %60

60:                                               ; preds = %54, %52, %50, %48
  br label %76

61:                                               ; preds = %28
  store i32 0, i32* @berkeley_format, align 4
  br label %76

62:                                               ; preds = %28
  store i32 1, i32* @berkeley_format, align 4
  br label %76

63:                                               ; preds = %28, %28
  store i32 1, i32* @show_version, align 4
  br label %76

64:                                               ; preds = %28
  %65 = load i64, i64* @decimal, align 8
  store i64 %65, i64* @radix, align 8
  br label %76

66:                                               ; preds = %28
  %67 = load i64, i64* @hex, align 8
  store i64 %67, i64* @radix, align 8
  br label %76

68:                                               ; preds = %28
  %69 = load i64, i64* @octal, align 8
  store i64 %69, i64* @radix, align 8
  br label %76

70:                                               ; preds = %28
  store i32 1, i32* @show_totals, align 4
  br label %76

71:                                               ; preds = %28
  br label %76

72:                                               ; preds = %28
  br label %76

73:                                               ; preds = %28, %28, %28
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @usage(i32 %74, i32 1)
  br label %76

76:                                               ; preds = %73, %28, %72, %71, %70, %68, %66, %64, %63, %62, %61, %60, %42, %41
  br label %21

77:                                               ; preds = %21
  %78 = load i32, i32* @show_version, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @print_version(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i64, i64* @show_help, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @stdout, align 4
  %87 = call i32 @usage(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @optind, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @display_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %108

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %99, %94
  %96 = load i32, i32* @optind, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @optind, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @display_file(i8* %105)
  br label %95

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %92
  %109 = load i32, i32* @show_totals, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i32, i32* @berkeley_format, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %111
  %115 = load i64, i64* @total_textsize, align 8
  %116 = load i64, i64* @total_datasize, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* @total_bsssize, align 8
  %119 = add nsw i64 %117, %118
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* @total_textsize, align 8
  %121 = call i32 @rprint_number(i32 7, i64 %120)
  %122 = call i32 @putchar(i8 signext 9)
  %123 = load i64, i64* @total_datasize, align 8
  %124 = call i32 @rprint_number(i32 7, i64 %123)
  %125 = call i32 @putchar(i8 signext 9)
  %126 = load i64, i64* @total_bsssize, align 8
  %127 = call i32 @rprint_number(i32 7, i64 %126)
  %128 = load i64, i64* @radix, align 8
  %129 = load i64, i64* @octal, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @printf(i8* %132, i64 %133, i64 %134)
  %136 = load i32, i32* @stdout, align 4
  %137 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %114, %111, %108
  %139 = load i32, i32* @return_code, align 4
  ret i32 %139
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @non_fatal(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @atol(i32*) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @display_file(i8*) #1

declare dso_local i32 @rprint_number(i32, i64) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
