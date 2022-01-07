; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@SUCCESS_EXIT_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Usage: gcov [OPTION]... SOURCEFILE\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Print code coverage information.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"  -h, --help                      Print this help, then exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"  -v, --version                   Print version number, then exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"  -a, --all-blocks                Show information for every basic block\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"  -b, --branch-probabilities      Include branch probabilities in output\0A\00", align 1
@.str.6 = private unnamed_addr constant [126 x i8] c"  -c, --branch-counts             Given counts of branches taken\0A                                    rather than percentages\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -n, --no-output                 Do not create an output file\0A\00", align 1
@.str.8 = private unnamed_addr constant [124 x i8] c"  -l, --long-file-names           Use long output file names for included\0A                                    source files\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"  -f, --function-summaries        Output summaries for each function\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"  -o, --object-directory DIR|FILE Search for object files in DIR or called FILE\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"  -p, --preserve-paths            Preserve all pathname components\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"  -u, --unconditional-branches    Show unconditional branch counts too\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\0AFor bug reporting instructions, please see:\0A%s.\0A\00", align 1
@bug_report_url = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** @stderr, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @stdout, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32* [ %8, %7 ], [ %10, %9 ]
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @FATAL_EXIT_CODE, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @SUCCESS_EXIT_CODE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %4, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @fnotice(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @fnotice(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (i32*, i8*, ...) @fnotice(i32* %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @fnotice(i32* %27, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @fnotice(i32* %29, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (i32*, i8*, ...) @fnotice(i32* %31, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fnotice(i32* %33, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (i32*, i8*, ...) @fnotice(i32* %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 (i32*, i8*, ...) @fnotice(i32* %37, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 (i32*, i8*, ...) @fnotice(i32* %39, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 (i32*, i8*, ...) @fnotice(i32* %41, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @fnotice(i32* %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @fnotice(i32* %45, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @bug_report_url, align 4
  %49 = call i32 (i32*, i8*, ...) @fnotice(i32* %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable
}

declare dso_local i32 @fnotice(i32*, i8*, ...) #1

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
