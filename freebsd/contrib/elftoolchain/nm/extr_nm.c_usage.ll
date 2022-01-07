; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [312 x i8] c"Usage: %s [options] file ...\0A  Display symbolic information in file.\0A\0A  Options: \0A  -A, --print-file-name     Write the full pathname or library name of an\0A                            object on each line.\0A  -a, --debug-syms          Display all symbols include debugger-only\0A                            symbols.\00", align 1
@nm_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [323 x i8] c"\0A  -B                        Equivalent to specifying \22--format=bsd\22.\0A  -C, --demangle[=style]    Decode low-level symbol names.\0A      --no-demangle         Do not demangle low-level symbol names.\0A  -D, --dynamic             Display only dynamic symbols.\0A  -e                        Display only global and static symbols.\00", align 1
@.str.2 = private unnamed_addr constant [500 x i8] c"\0A  -f                        Produce full output (default).\0A      --format=format       Display output in specific format.  Allowed\0A                            formats are: \22bsd\22, \22posix\22 and \22sysv\22.\0A  -g, --extern-only         Display only global symbol information.\0A  -h, --help                Show this help message.\0A  -l, --line-numbers        Display filename and linenumber using\0A                            debugging information.\0A  -n, --numeric-sort        Sort symbols numerically by value.\00", align 1
@.str.3 = private unnamed_addr constant [553 x i8] c"\0A  -o                        Write numeric values in octal. Equivalent to\0A                            specifying \22-t o\22.\0A  -p, --no-sort             Do not sort symbols.\0A  -P                        Write information in a portable output format.\0A                            Equivalent to specifying \22--format=posix\22.\0A  -r, --reverse-sort        Reverse the order of the sort.\0A  -S, --print-size          Print symbol sizes instead values.\0A  -s, --print-armap         Include an index of archive members.\0A      --size-sort           Sort symbols by size.\00", align 1
@.str.4 = private unnamed_addr constant [250 x i8] c"\0A  -t, --radix=format        Write each numeric value in the specified\0A                            format:\0A                               d   In decimal,\0A                               o   In octal,\0A                               x   In hexadecimal.\00", align 1
@.str.5 = private unnamed_addr constant [359 x i8] c"\0A  -u, --undefined-only      Display only undefined symbols.\0A      --defined-only        Display only defined symbols.\0A  -V, --version             Show the version identifier for %s.\0A  -v                        Sort output by value.\0A  -x                        Write numeric values in hexadecimal.\0A                            Equivalent to specifying \22-t x\22.\00", align 1
@.str.6 = private unnamed_addr constant [123 x i8] c"\0A\0A  The default options are: output in bsd format, use a hexadecimal radix,\0A  sort by symbol name, do not demangle names.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_info, i32 0, i32 0), align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([323 x i8], [323 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([553 x i8], [553 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.4, i64 0, i64 0))
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_info, i32 0, i32 0), align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([359 x i8], [359 x i8]* @.str.5, i64 0, i64 0), i8* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.6, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @exit(i32 %12) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

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
