; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_addr2line.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_addr2line.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [option(s)] [addr(s)]\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c" Convert addresses into line number/file name pairs.\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c" If no addresses are specified on the command line, they will be read from stdin\0A\00", align 1
@.str.3 = private unnamed_addr constant [562 x i8] c" The options are:\0A  @<file>                Read options from <file>\0A  -b --target=<bfdname>  Set the binary file format\0A  -e --exe=<executable>  Set the input file name (default is a.out)\0A  -i --inlines           Unwind inlined functions\0A  -j --section=<name>    Read section-relative offsets instead of addresses\0A  -s --basenames         Strip directory names\0A  -f --functions         Show function names\0A  -C --demangle[=style]  Demangle function names\0A  -h --help              Display this information\0A  -v --version           Display the program's version\0A\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @program_name, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* %6, i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @_(i8* getelementptr inbounds ([562 x i8], [562 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* %16)
  %18 = load i8*, i8** @program_name, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @list_supported_targets(i8* %18, i32* %19)
  %21 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %29, %26, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @list_supported_targets(i8*, i32*) #1

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
