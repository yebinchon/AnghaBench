; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Usage: %s <option(s)> <file(s)>\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c" Display information from object <file(s)>.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c" At least one of the following switches must be given:\0A\00", align 1
@.str.3 = private unnamed_addr constant [1454 x i8] c"  -a, --archive-headers    Display archive header information\0A  -f, --file-headers       Display the contents of the overall file header\0A  -p, --private-headers    Display object format specific file header contents\0A  -h, --[section-]headers  Display the contents of the section headers\0A  -x, --all-headers        Display the contents of all headers\0A  -d, --disassemble        Display assembler contents of executable sections\0A  -D, --disassemble-all    Display assembler contents of all sections\0A  -S, --source             Intermix source code with disassembly\0A  -s, --full-contents      Display the full contents of all sections requested\0A  -g, --debugging          Display debug information in object file\0A  -e, --debugging-tags     Display debug information using ctags style\0A  -G, --stabs              Display (in raw form) any STABS info in the file\0A  -W, --dwarf              Display DWARF info in the file\0A  -t, --syms               Display the contents of the symbol table(s)\0A  -T, --dynamic-syms       Display the contents of the dynamic symbol table\0A  -r, --reloc              Display the relocation entries in the file\0A  -R, --dynamic-reloc      Display the dynamic relocation entries in the file\0A  @<file>                  Read options from <file>\0A  -v, --version            Display this program's version number\0A  -i, --info               List object formats and architectures supported\0A  -H, --help               Display this information\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\0A The following switches are optional:\0A\00", align 1
@.str.5 = private unnamed_addr constant [1573 x i8] c"  -b, --target=BFDNAME           Specify the target object format as BFDNAME\0A  -m, --architecture=MACHINE     Specify the target architecture as MACHINE\0A  -j, --section=NAME             Only display information for section NAME\0A  -M, --disassembler-options=OPT Pass text OPT on to the disassembler\0A  -EB --endian=big               Assume big endian format when disassembling\0A  -EL --endian=little            Assume little endian format when disassembling\0A      --file-start-context       Include context from start of file (with -S)\0A  -I, --include=DIR              Add DIR to search list for source files\0A  -l, --line-numbers             Include line numbers and filenames in output\0A  -C, --demangle[=STYLE]         Decode mangled/processed symbol names\0A                                  The STYLE, if specified, can be `auto', `gnu',\0A                                  `lucid', `arm', `hp', `edg', `gnu-v3', `java'\0A                                  or `gnat'\0A  -w, --wide                     Format output for more than 80 columns\0A  -z, --disassemble-zeroes       Do not skip blocks of zeroes when disassembling\0A      --start-address=ADDR       Only process data whose address is >= ADDR\0A      --stop-address=ADDR        Only process data whose address is <= ADDR\0A      --prefix-addresses         Print complete address alongside disassembly\0A      --[no-]show-raw-insn       Display hex alongside symbolic disassembly\0A      --adjust-vma=OFFSET        Add OFFSET to all displayed section addresses\0A      --special-syms             Include special symbols in symbol dumps\0A\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Report bugs to %s.\0A\00", align 1
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
  %10 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @_(i8* getelementptr inbounds ([1454 x i8], [1454 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @_(i8* getelementptr inbounds ([1573 x i8], [1573 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* %25)
  %27 = load i8*, i8** @program_name, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @list_supported_targets(i8* %27, i32* %28)
  %30 = load i8*, i8** @program_name, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @list_supported_architectures(i8* %30, i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @disassembler_usage(i32* %33)
  br label %35

35:                                               ; preds = %20, %2
  %36 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %41, %35
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @list_supported_targets(i8*, i32*) #1

declare dso_local i32 @list_supported_architectures(i8*, i32*) #1

declare dso_local i32 @disassembler_usage(i32*) #1

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
