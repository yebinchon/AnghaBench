; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"Usage: %s [option...] [asmfile...]\0A\00", align 1
@myname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [552 x i8] c"Options:\0A  -a[sub-option...]\09  turn on listings\0A                      \09  Sub-options [default hls]:\0A                      \09  c      omit false conditionals\0A                      \09  d      omit debugging directives\0A                      \09  h      include high-level source\0A                      \09  l      include assembly\0A                      \09  m      include macro expansions\0A                      \09  n      omit forms processing\0A                      \09  s      include symbols\0A                      \09  =FILE  list to FILE (must be last sub-option)\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"  --alternate             initially turn on alternate macro syntax\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"  -D                      produce assembler debugging messages\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"  --defsym SYM=VAL        define symbol SYM to given value\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"  -f                      skip whitespace and comment preprocessing\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"  -g --gen-debug          generate debugging information\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  --gstabs                generate STABS debugging information\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"  --gstabs+               generate STABS debug info with GNU extensions\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"  --gdwarf-2              generate DWARF2 debugging information\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"  --hash-size=<value>     set the hash table size close to <value>\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"  --help                  show this message and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"  --target-help           show target specific options\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"  -I DIR                  add DIR to search list for .include directives\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"  -J                      don't warn about signed overflow\0A\00", align 1
@.str.15 = private unnamed_addr constant [80 x i8] c"  -K                      warn when differences altered for long displacements\0A\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"  -L,--keep-locals        keep local symbols (e.g. starting with `L')\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"  -M,--mri                assemble in MRI compatibility mode\0A\00", align 1
@.str.18 = private unnamed_addr constant [79 x i8] c"  --MD FILE               write dependency information in FILE (default none)\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"  -nocpp                  ignored\0A\00", align 1
@.str.20 = private unnamed_addr constant [79 x i8] c"  -o OBJFILE              name the object-file output OBJFILE (default a.out)\0A\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"  -R                      fold data section into text section\0A\00", align 1
@.str.22 = private unnamed_addr constant [145 x i8] c"  --reduce-memory-overheads \0A                          prefer smaller memory use at the cost of longer\0A                          assembly times\0A\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"  --statistics            print various measured statistics from execution\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"  --strip-local-absolute  strip local absolute symbols\0A\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"  --traditional-format    Use same format as native assembler when possible\0A\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"  --version               print assembler version number and exit\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"  -W  --no-warn           suppress warnings\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"  --warn                  don't suppress warnings\0A\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"  --fatal-warnings        treat warnings as errors\0A\00", align 1
@.str.30 = private unnamed_addr constant [152 x i8] c"  --itbl INSTTBL          extend instruction set to include instructions\0A                          matching the specifications defined in file INSTTBL\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"  -w                      ignored\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"  -X                      ignored\0A\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"  -Z                      generate object file even after errors\0A\00", align 1
@.str.34 = private unnamed_addr constant [117 x i8] c"  --listing-lhs-width     set the width in words of the output data column of\0A                          the listing\0A\00", align 1
@.str.35 = private unnamed_addr constant [207 x i8] c"  --listing-lhs-width2    set the width in words of the continuation lines\0A                          of the output data column; ignored if smaller than\0A                          the width of the first line\0A\00", align 1
@.str.36 = private unnamed_addr constant [119 x i8] c"  --listing-rhs-width     set the max width in characters of the lines from\0A                          the source file\0A\00", align 1
@.str.37 = private unnamed_addr constant [145 x i8] c"  --listing-cont-lines    set the maximum number of continuation lines used\0A                          for the output data column of the listing\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"  @FILE                   read options from FILE\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.39 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@DEFAULT_EMULATION = common dso_local global i8* null, align 8
@EMULATION_ENVIRON = common dso_local global i32 0, align 4
@emulations = common dso_local global %struct.TYPE_2__** null, align 8
@n_emulations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = load i8*, i8** @myname, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* %4, i8* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @_(i8* getelementptr inbounds ([552 x i8], [552 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0))
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.15, i64 0, i64 0))
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16, i64 0, i64 0))
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0))
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.18, i64 0, i64 0))
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.20, i64 0, i64 0))
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.21, i64 0, i64 0))
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i8* @_(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.22, i64 0, i64 0))
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0))
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0))
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i64 0, i64 0))
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0))
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* %83)
  %85 = load i32*, i32** %2, align 8
  %86 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0))
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0))
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i64 0, i64 0))
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i8* @_(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.30, i64 0, i64 0))
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0))
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i64 0, i64 0))
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* %104)
  %106 = load i32*, i32** %2, align 8
  %107 = call i8* @_(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.34, i64 0, i64 0))
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* %107)
  %109 = load i32*, i32** %2, align 8
  %110 = call i8* @_(i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.35, i64 0, i64 0))
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i8* @_(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.36, i64 0, i64 0))
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i8* @_(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.37, i64 0, i64 0))
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i64 0, i64 0))
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @md_show_usage(i32* %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @fputc(i8 signext 10, i32* %123)
  %125 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %1
  %131 = load i32*, i32** %2, align 8
  %132 = load i32*, i32** @stdout, align 8
  %133 = icmp eq i32* %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32*, i32** %2, align 8
  %136 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0))
  %137 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* %136, i8* %137)
  br label %139

139:                                              ; preds = %134, %130, %1
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @md_show_usage(i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
