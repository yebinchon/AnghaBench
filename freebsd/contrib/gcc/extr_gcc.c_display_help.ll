; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_display_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_display_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Usage: %s [options] file...\0A\00", align 1
@programname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"  -pass-exit-codes         Exit with highest error code from a phase\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"  --help                   Display this information\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"  --target-help            Display target specific command line options\0A\00", align 1
@verbose_flag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"  (Use '-v --help' to display command line options of sub-processes)\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"  -dumpspecs               Display all of the built in spec strings\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -dumpversion             Display the version of the compiler\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"  -dumpmachine             Display the compiler's target processor\0A\00", align 1
@.str.9 = private unnamed_addr constant [82 x i8] c"  -print-search-dirs       Display the directories in the compiler's search path\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"  -print-libgcc-file-name  Display the name of the compiler's companion library\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"  -print-file-name=<lib>   Display the full path to library <lib>\0A\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"  -print-prog-name=<prog>  Display the full path to compiler component <prog>\0A\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"  -print-multi-directory   Display the root directory for versions of libgcc\0A\00", align 1
@.str.14 = private unnamed_addr constant [144 x i8] c"  -print-multi-lib         Display the mapping between command line options and\0A                           multiple library search directories\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"  -print-multi-os-directory Display the relative path to OS libraries\0A\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"  -Wa,<options>            Pass comma-separated <options> on to the assembler\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"  -Wp,<options>            Pass comma-separated <options> on to the preprocessor\0A\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"  -Wl,<options>            Pass comma-separated <options> on to the linker\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"  -Xassembler <arg>        Pass <arg> on to the assembler\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"  -Xpreprocessor <arg>     Pass <arg> on to the preprocessor\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"  -Xlinker <arg>           Pass <arg> on to the linker\0A\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"  -combine                 Pass multiple source files to compiler at once\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"  -save-temps              Do not delete intermediate files\0A\00", align 1
@.str.24 = private unnamed_addr constant [69 x i8] c"  -pipe                    Use pipes rather than intermediate files\0A\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"  -time                    Time the execution of each subprocess\0A\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"  -specs=<file>            Override built-in specs with the contents of <file>\0A\00", align 1
@.str.27 = private unnamed_addr constant [77 x i8] c"  -std=<standard>          Assume that the input sources are for <standard>\0A\00", align 1
@.str.28 = private unnamed_addr constant [119 x i8] c"  --sysroot=<directory>    Use <directory> as the root directory for headers\0A                           and libraries\0A\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"  -B <directory>           Add <directory> to the compiler's search paths\0A\00", align 1
@.str.30 = private unnamed_addr constant [71 x i8] c"  -b <machine>             Run gcc for target <machine>, if installed\0A\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"  -V <version>             Run gcc version number <version>, if installed\0A\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"  -v                       Display the programs invoked by the compiler\0A\00", align 1
@.str.33 = private unnamed_addr constant [81 x i8] c"  -###                     Like -v but options quoted and commands not executed\0A\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"  -E                       Preprocess only; do not compile, assemble or link\0A\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"  -S                       Compile only; do not assemble or link\0A\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"  -c                       Compile and assemble, but do not link\0A\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"  -o <file>                Place the output into <file>\0A\00", align 1
@.str.38 = private unnamed_addr constant [310 x i8] c"  -x <language>            Specify the language of the following input files\0A                           Permissible languages include: c c++ assembler none\0A                           'none' means revert to the default behavior of\0A                           guessing the language based on the file's extension\0A\00", align 1
@.str.39 = private unnamed_addr constant [220 x i8] c"\0AOptions starting with -g, -f, -m, -O, -W, or --param are automatically\0A passed on to the various sub-processes invoked by %s.  In order to pass\0A other options on to these processes the -W<letter> options must be used.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @display_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_help() #0 {
  %1 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %2 = load i8*, i8** @programname, align 8
  %3 = call i32 @printf(i8* %1, i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fputs(i8* %4, i32 %5)
  %7 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fputs(i8* %7, i32 %8)
  %10 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fputs(i8* %10, i32 %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i8* %13, i32 %14)
  %16 = load i32, i32* @verbose_flag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %0
  %19 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fputs(i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fputs(i8* %23, i32 %24)
  %26 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fputs(i8* %26, i32 %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fputs(i8* %29, i32 %30)
  %32 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i8* %32, i32 %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fputs(i8* %35, i32 %36)
  %38 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0))
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fputs(i8* %38, i32 %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.12, i64 0, i64 0))
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fputs(i8* %41, i32 %42)
  %44 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.13, i64 0, i64 0))
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fputs(i8* %44, i32 %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.14, i64 0, i64 0))
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fputs(i8* %47, i32 %48)
  %50 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i64 0, i64 0))
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fputs(i8* %50, i32 %51)
  %53 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i64 0, i64 0))
  %54 = load i32, i32* @stdout, align 4
  %55 = call i32 @fputs(i8* %53, i32 %54)
  %56 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fputs(i8* %56, i32 %57)
  %59 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i64 0, i64 0))
  %60 = load i32, i32* @stdout, align 4
  %61 = call i32 @fputs(i8* %59, i32 %60)
  %62 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0))
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fputs(i8* %62, i32 %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fputs(i8* %65, i32 %66)
  %68 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fputs(i8* %68, i32 %69)
  %71 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0))
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32 @fputs(i8* %71, i32 %72)
  %74 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i64 0, i64 0))
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fputs(i8* %74, i32 %75)
  %77 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.24, i64 0, i64 0))
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @fputs(i8* %77, i32 %78)
  %80 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0))
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fputs(i8* %80, i32 %81)
  %83 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.26, i64 0, i64 0))
  %84 = load i32, i32* @stdout, align 4
  %85 = call i32 @fputs(i8* %83, i32 %84)
  %86 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.27, i64 0, i64 0))
  %87 = load i32, i32* @stdout, align 4
  %88 = call i32 @fputs(i8* %86, i32 %87)
  %89 = call i8* @_(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.28, i64 0, i64 0))
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fputs(i8* %89, i32 %90)
  %92 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0))
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fputs(i8* %92, i32 %93)
  %95 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.30, i64 0, i64 0))
  %96 = load i32, i32* @stdout, align 4
  %97 = call i32 @fputs(i8* %95, i32 %96)
  %98 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0))
  %99 = load i32, i32* @stdout, align 4
  %100 = call i32 @fputs(i8* %98, i32 %99)
  %101 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.32, i64 0, i64 0))
  %102 = load i32, i32* @stdout, align 4
  %103 = call i32 @fputs(i8* %101, i32 %102)
  %104 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.33, i64 0, i64 0))
  %105 = load i32, i32* @stdout, align 4
  %106 = call i32 @fputs(i8* %104, i32 %105)
  %107 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.34, i64 0, i64 0))
  %108 = load i32, i32* @stdout, align 4
  %109 = call i32 @fputs(i8* %107, i32 %108)
  %110 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.35, i64 0, i64 0))
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @fputs(i8* %110, i32 %111)
  %113 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.36, i64 0, i64 0))
  %114 = load i32, i32* @stdout, align 4
  %115 = call i32 @fputs(i8* %113, i32 %114)
  %116 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i64 0, i64 0))
  %117 = load i32, i32* @stdout, align 4
  %118 = call i32 @fputs(i8* %116, i32 %117)
  %119 = call i8* @_(i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.38, i64 0, i64 0))
  %120 = load i32, i32* @stdout, align 4
  %121 = call i32 @fputs(i8* %119, i32 %120)
  %122 = call i8* @_(i8* getelementptr inbounds ([220 x i8], [220 x i8]* @.str.39, i64 0, i64 0))
  %123 = load i8*, i8** @programname, align 8
  %124 = call i32 @printf(i8* %122, i8* %123)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
