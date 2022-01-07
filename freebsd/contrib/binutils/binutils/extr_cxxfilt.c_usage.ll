; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_cxxfilt.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_cxxfilt.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Usage: %s [options] [mangled names]\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"Options are:\0A  [-_|--strip-underscore]     Ignore first leading underscore%s\0A\00", align 1
@TARGET_PREPENDS_UNDERSCORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"  [-n|--no-strip-underscore]  Do not ignore a leading underscore%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [224 x i8] c"  [-p|--no-params]            Do not display function arguments\0A  [-i|--no-verbose]           Do not show implementation details (if any)\0A  [-t|--types]                Also attempt to demangle type encodings\0A  [-s|--format \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.7 = private unnamed_addr constant [337 x i8] c"  [@<file>]                   Read extra options from <file>\0A  [-h|--help]                 Display this information\0A  [-v|--version]              Show the version information\0ADemangled names are displayed to stdout.\0AIf a name cannot be demangled it is just echoed to stdout.\0AIf no names are provided on the command line, stdin is read.\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"Report bugs to %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i8*, i8** @program_name, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* @TARGET_PREPENDS_UNDERSCORE, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* @TARGET_PREPENDS_UNDERSCORE, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @print_demangler_list(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([337 x i8], [337 x i8]* @.str.7, i64 0, i64 0))
  %28 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %36, %33, %2
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @exit(i32 %42) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_demangler_list(i32*) #1

declare dso_local i8* @_(i8*) #1

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
