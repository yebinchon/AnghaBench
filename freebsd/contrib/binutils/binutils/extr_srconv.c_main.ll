; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }

@main.long_options = internal global [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 113 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32 0, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -128, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32 0, i32 86 }, %struct.option { i8* null, i8 -128, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"quick\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"noprescan\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"dHhVvqn\00", align 1
@EOF = common dso_local global i32 0, align 4
@quick = common dso_local global i32 0, align 4
@noprescan = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"srconv\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"input and output files must be different\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".obj\00", align 1
@abfd = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@FOPEN_WB = common dso_local global i32 0, align 4
@file = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"unable to open output file %s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ids %d %d\0A\00", align 1
@base1 = common dso_local global i32 0, align 4
@base2 = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
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
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @program_name, align 8
  %19 = load i8*, i8** @program_name, align 8
  %20 = call i32 @xmalloc_set_program_name(i8* %19)
  %21 = call i32 @expandargv(i32* %4, i8*** %5)
  br label %22

22:                                               ; preds = %43, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt_long(i32 %23, i8** %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %40 [
    i32 113, label %30
    i32 110, label %31
    i32 100, label %32
    i32 72, label %33
    i32 104, label %33
    i32 118, label %36
    i32 86, label %36
    i32 0, label %39
  ]

30:                                               ; preds = %28
  store i32 1, i32* @quick, align 4
  br label %43

31:                                               ; preds = %28
  store i32 1, i32* @noprescan, align 4
  br label %43

32:                                               ; preds = %28
  store i32 1, i32* @debug, align 4
  br label %43

33:                                               ; preds = %28, %28
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @show_usage(i32 %34, i32 0)
  br label %36

36:                                               ; preds = %28, %28, %33
  %37 = call i32 @print_version(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 @exit(i32 0) #3
  unreachable

39:                                               ; preds = %28
  br label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @show_usage(i32 %41, i32 1)
  br label %43

43:                                               ; preds = %40, %39, %32, %31, %30
  br label %22

44:                                               ; preds = %22
  store i8* null, i8** %9, align 8
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* @optind, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @optind, align 4
  %56 = load i32, i32* @optind, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %48
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* @optind, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  %65 = load i32, i32* @optind, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @optind, align 4
  %67 = load i32, i32* @optind, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @show_usage(i32 %71, i32 1)
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @strcmp(i8* %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %80 = call i32 (i32, ...) @fatal(i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %48
  br label %84

83:                                               ; preds = %44
  store i8* null, i8** %8, align 8
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %89 = call i32 (i32, ...) @fatal(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %141, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 5
  %98 = call i8* @xmalloc(i32 %97)
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strcpy(i8* %99, i8* %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 3
  br i1 %103, label %104, label %137

104:                                              ; preds = %93
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 46
  br i1 %112, label %113, label %137

113:                                              ; preds = %104
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 111
  br i1 %121, label %122, label %137

122:                                              ; preds = %113
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 98, i8* %126, align 1
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 106, i8* %131, align 1
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 0, i8* %136, align 1
  br label %140

137:                                              ; preds = %113, %104, %93
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @strcat(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %122
  br label %141

141:                                              ; preds = %140, %90
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @bfd_openr(i8* %142, i32 0)
  store i32 %143, i32* @abfd, align 4
  %144 = load i32, i32* @abfd, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @bfd_fatal(i8* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32, i32* @abfd, align 4
  %151 = load i32, i32* @bfd_object, align 4
  %152 = call i32 @bfd_check_format_matches(i32 %150, i32 %151, i8*** %7)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @bfd_nonfatal(i8* %155)
  %157 = call i64 (...) @bfd_get_error()
  %158 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load i8**, i8*** %7, align 8
  %162 = call i32 @list_matching_formats(i8** %161)
  %163 = load i8**, i8*** %7, align 8
  %164 = call i32 @free(i8** %163)
  br label %165

165:                                              ; preds = %160, %154
  %166 = call i32 @exit(i32 1) #3
  unreachable

167:                                              ; preds = %149
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* @FOPEN_WB, align 4
  %170 = call i32 @fopen(i8* %168, i32 %169)
  store i32 %170, i32* @file, align 4
  %171 = load i32, i32* @file, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %167
  %174 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 (i32, ...) @fatal(i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %173, %167
  %178 = load i32, i32* @debug, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @base1, align 4
  %182 = load i32, i32* @base2, align 4
  %183 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* @abfd, align 4
  %186 = call i32 @coff_grok(i32 %185)
  store i32 %186, i32* @tree, align 4
  %187 = load i32, i32* @noprescan, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* @tree, align 4
  %191 = call i32 @prescan(i32 %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* @tree, align 4
  %194 = call i32 @wr_module(i32 %193)
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

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @bfd_openr(i8*, i32) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @bfd_check_format_matches(i32, i32, i8***) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @fopen(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @coff_grok(i32) #1

declare dso_local i32 @prescan(i32) #1

declare dso_local i32 @wr_module(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
