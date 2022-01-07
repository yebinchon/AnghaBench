; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_cxxfilt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_cxxfilt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"_hinps:tv\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@strip_underscore = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@DMGL_TYPES = common dso_local global i32 0, align 4
@DMGL_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"c++filt\00", align 1
@optarg = common dso_local global i8* null, align 8
@unknown_demangling = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: unknown demangling style `%s'\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@current_demangling_style = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Internal error: no symbol alphabet for current style\00", align 1
@main.mbuffer = internal global [32767 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 135, i32* %8, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** @program_name, align 8
  %13 = load i8*, i8** @program_name, align 8
  %14 = call i32 @xmalloc_set_program_name(i8* %13)
  %15 = call i32 @expandargv(i32* %4, i8*** %5)
  br label %16

16:                                               ; preds = %63, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* @long_options, align 4
  %20 = call i32 @getopt_long(i32 %17, i8** %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %63 [
    i32 63, label %25
    i32 104, label %28
    i32 110, label %31
    i32 112, label %32
    i32 116, label %37
    i32 105, label %41
    i32 118, label %46
    i32 95, label %48
    i32 115, label %49
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @usage(i32 %26, i32 1)
  br label %63

28:                                               ; preds = %23
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @usage(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %23, %28
  store i32 0, i32* @strip_underscore, align 4
  br label %63

32:                                               ; preds = %23
  %33 = load i32, i32* @DMGL_PARAMS, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @flags, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* @flags, align 4
  br label %63

37:                                               ; preds = %23
  %38 = load i32, i32* @DMGL_TYPES, align 4
  %39 = load i32, i32* @flags, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @flags, align 4
  br label %63

41:                                               ; preds = %23
  %42 = load i32, i32* @DMGL_VERBOSE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @flags, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @flags, align 4
  br label %63

46:                                               ; preds = %23
  %47 = call i32 @print_version(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %151

48:                                               ; preds = %23
  store i32 1, i32* @strip_underscore, align 4
  br label %63

49:                                               ; preds = %23
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @cplus_demangle_name_to_style(i8* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @unknown_demangling, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** @program_name, align 8
  %58 = load i8*, i8** @optarg, align 8
  %59 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %58)
  store i32 1, i32* %3, align 4
  br label %151

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @cplus_demangle_set_style(i32 %61)
  br label %63

63:                                               ; preds = %23, %60, %48, %41, %37, %32, %31, %25
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* @optind, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i32, i32* @optind, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* @optind, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @demangle_it(i8* %78)
  %80 = call i32 @putchar(i32 10)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @optind, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @optind, align 4
  br label %69

84:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %151

85:                                               ; preds = %64
  %86 = load i32, i32* @current_demangling_style, align 4
  switch i32 %86, label %91 [
    i32 132, label %87
    i32 128, label %87
    i32 136, label %87
    i32 129, label %87
    i32 134, label %87
    i32 133, label %87
    i32 131, label %87
    i32 135, label %87
    i32 130, label %89
  ]

87:                                               ; preds = %85, %85, %85, %85, %85, %85, %85, %85
  %88 = call i8* (...) @standard_symbol_characters()
  store i8* %88, i8** %7, align 8
  br label %93

89:                                               ; preds = %85
  %90 = call i8* (...) @hp_symbol_characters()
  store i8* %90, i8** %7, align 8
  br label %93

91:                                               ; preds = %85
  %92 = call i32 @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89, %87
  br label %94

94:                                               ; preds = %147, %93
  store i32 0, i32* %9, align 4
  %95 = call i32 (...) @getchar()
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %118, %94
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @EOF, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @ISALNUM(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @strchr(i8* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi i1 [ true, %100 ], [ %108, %104 ]
  br label %111

111:                                              ; preds = %109, %96
  %112 = phi i1 [ false, %96 ], [ %110, %109 ]
  br i1 %112, label %113, label %126

113:                                              ; preds = %111
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp uge i64 %115, 32766
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %126

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  %120 = trunc i32 %119 to i8
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds [32767 x i8], [32767 x i8]* @main.mbuffer, i64 0, i64 %123
  store i8 %120, i8* %124, align 1
  %125 = call i32 (...) @getchar()
  store i32 %125, i32* %6, align 4
  br label %96

126:                                              ; preds = %117, %111
  %127 = load i32, i32* %9, align 4
  %128 = icmp ugt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [32767 x i8], [32767 x i8]* @main.mbuffer, i64 0, i64 %131
  store i8 0, i8* %132, align 1
  %133 = call i32 @demangle_it(i8* getelementptr inbounds ([32767 x i8], [32767 x i8]* @main.mbuffer, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @EOF, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %148

139:                                              ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @putchar(i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 10
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @stdout, align 4
  %146 = call i32 @fflush(i32 %145)
  br label %147

147:                                              ; preds = %144, %139
  br label %94

148:                                              ; preds = %138
  %149 = load i32, i32* @stdout, align 4
  %150 = call i32 @fflush(i32 %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %84, %55, %46
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @cplus_demangle_name_to_style(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @cplus_demangle_set_style(i32) #1

declare dso_local i32 @demangle_it(i8*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i8* @standard_symbol_characters(...) #1

declare dso_local i8* @hp_symbol_characters(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @ISALNUM(i32) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
