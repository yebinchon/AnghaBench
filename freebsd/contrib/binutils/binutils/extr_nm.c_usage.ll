; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [option(s)] [file(s)]\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c" List symbols in [file(s)] (a.out by default).\0A\00", align 1
@.str.2 = private unnamed_addr constant [1951 x i8] c" The options are:\0A  -a, --debug-syms       Display debugger-only symbols\0A  -A, --print-file-name  Print name of the input file before every symbol\0A  -B                     Same as --format=bsd\0A  -C, --demangle[=STYLE] Decode low-level symbol names into user-level names\0A                          The STYLE, if specified, can be `auto' (the default),\0A                          `gnu', `lucid', `arm', `hp', `edg', `gnu-v3', `java'\0A                          or `gnat'\0A      --no-demangle      Do not demangle low-level symbol names\0A  -D, --dynamic          Display dynamic symbols instead of normal symbols\0A      --defined-only     Display only defined symbols\0A  -e                     (ignored)\0A  -f, --format=FORMAT    Use the output format FORMAT.  FORMAT can be `bsd',\0A                           `sysv' or `posix'.  The default is `bsd'\0A  -g, --extern-only      Display only external symbols\0A  -l, --line-numbers     Use debugging information to find a filename and\0A                           line number for each symbol\0A  -n, --numeric-sort     Sort symbols numerically by address\0A  -o                     Same as -A\0A  -p, --no-sort          Do not sort the symbols\0A  -P, --portability      Same as --format=posix\0A  -r, --reverse-sort     Reverse the sense of the sort\0A  -S, --print-size       Print size of defined symbols\0A  -s, --print-armap      Include index for symbols from archive members\0A      --size-sort        Sort symbols by size\0A      --special-syms     Include special symbols in the output\0A      --synthetic        Display synthetic symbols as well\0A  -t, --radix=RADIX      Use RADIX for printing symbol values\0A      --target=BFDNAME   Specify the target object format as BFDNAME\0A  -u, --undefined-only   Display only undefined symbols\0A  -X 32_64               (ignored)\0A  @FILE                  Read options from FILE\0A  -h, --help             Display this information\0A  -V, --version          Display this program's version number\0A\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Report bugs to %s.\0A\00", align 1
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
  %10 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([1951 x i8], [1951 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* %13)
  %15 = load i8*, i8** @program_name, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @list_supported_targets(i8* %15, i32* %16)
  %18 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %26, %23, %2
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @exit(i32 %32) #3
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
