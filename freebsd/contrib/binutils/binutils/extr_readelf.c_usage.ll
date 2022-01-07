; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Usage: readelf <option(s)> elf-file(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c" Display information about the contents of ELF format files\0A\00", align 1
@.str.2 = private unnamed_addr constant [1319 x i8] c" Options are:\0A  -a --all               Equivalent to: -h -l -S -s -r -d -V -A -I\0A  -h --file-header       Display the ELF file header\0A  -l --program-headers   Display the program headers\0A     --segments          An alias for --program-headers\0A  -S --section-headers   Display the sections' header\0A     --sections          An alias for --section-headers\0A  -g --section-groups    Display the section groups\0A  -t --section-details   Display the section details\0A  -e --headers           Equivalent to: -h -l -S\0A  -s --syms              Display the symbol table\0A      --symbols          An alias for --syms\0A  -n --notes             Display the core notes (if present)\0A  -r --relocs            Display the relocations (if present)\0A  -u --unwind            Display the unwind info (if present)\0A  -d --dynamic           Display the dynamic section (if present)\0A  -V --version-info      Display the version sections (if present)\0A  -A --arch-specific     Display architecture specific information (if any).\0A  -D --use-dynamic       Use the dynamic section info when displaying symbols\0A  -x --hex-dump=<number> Dump the contents of section <number>\0A  -w[liaprmfFsoR] or\0A  --debug-dump[=line,=info,=abbrev,=pubnames,=aranges,=macro,=frames,=str,=loc,=Ranges]\0A                         Display the contents of DWARF2 debug sections\0A\00", align 1
@.str.3 = private unnamed_addr constant [298 x i8] c"  -I --histogram         Display histogram of bucket list lengths\0A  -W --wide              Allow output width to exceed 80 characters\0A  @<file>                Read options from <file>\0A  -H --help              Display this information\0A  -v --version           Display the version number of readelf\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([1319 x i8], [1319 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* %13)
  %15 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** @stdout, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** @stdout, align 8
  %26 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %20, %1
  %30 = load i32*, i32** %2, align 8
  %31 = load i32*, i32** @stdout, align 8
  %32 = icmp eq i32* %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = call i32 @exit(i32 %34) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

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
