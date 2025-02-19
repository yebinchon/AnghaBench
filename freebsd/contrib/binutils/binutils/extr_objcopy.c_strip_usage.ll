; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_strip_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_strip_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Usage: %s <option(s)> in-file(s)\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c" Removes symbols and sections from files\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" The options are:\0A\00", align 1
@.str.3 = private unnamed_addr constant [1442 x i8] c"  -I --input-target=<bfdname>      Assume input file is in format <bfdname>\0A  -O --output-target=<bfdname>     Create an output file in format <bfdname>\0A  -F --target=<bfdname>            Set both input and output format to <bfdname>\0A  -p --preserve-dates              Copy modified/access timestamps to the output\0A  -R --remove-section=<name>       Remove section <name> from the output\0A  -s --strip-all                   Remove all symbol and relocation information\0A  -g -S -d --strip-debug           Remove all debugging symbols & sections\0A     --strip-unneeded              Remove all symbols not needed by relocations\0A     --only-keep-debug             Strip everything but the debug information\0A  -N --strip-symbol=<name>         Do not copy symbol <name>\0A  -K --keep-symbol=<name>          Do not strip symbol <name>\0A     --keep-file-symbols           Do not strip file symbol(s)\0A  -w --wildcard                    Permit wildcard in symbol comparison\0A  -x --discard-all                 Remove all non-global symbols\0A  -X --discard-locals              Remove any compiler-generated symbols\0A  -v --verbose                     List all object files modified\0A  -V --version                     Display this program's version number\0A  -h --help                        Display this output\0A     --info                        List object formats & architectures supported\0A  -o <file>                        Place stripped output into <file>\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @strip_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_usage(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @program_name, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* %6, i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @_(i8* getelementptr inbounds ([1442 x i8], [1442 x i8]* @.str.3, i64 0, i64 0))
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
