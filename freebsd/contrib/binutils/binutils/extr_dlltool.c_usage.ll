; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Usage %s <option(s)> <object-file(s)>\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"   -m --machine <machine>    Create as DLL for <machine>.  [default: %s]\0A\00", align 1
@mname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [85 x i8] c"        possible <machine>: arm[_interwork], i386, mcore[-elf]{-le|-be}, ppc, thumb\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"   -e --output-exp <outname> Generate an export file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"   -l --output-lib <outname> Generate an interface library.\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"   -a --add-indirect         Add dll indirects to export file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"   -D --dllname <name>       Name of input dll to put into interface lib.\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"   -d --input-def <deffile>  Name of .def file to be read in.\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"   -z --output-def <deffile> Name of .def file to be created.\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"      --export-all-symbols   Export all symbols to .def\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"      --no-export-all-symbols  Only export listed symbols\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"      --exclude-symbols <list> Don't export <list>\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"      --no-default-excludes  Clear default exclude symbols\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"   -b --base-file <basefile> Read linker generated base file.\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"   -x --no-idata4            Don't generate idata$4 section.\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"   -c --no-idata5            Don't generate idata$5 section.\0A\00", align 1
@.str.16 = private unnamed_addr constant [83 x i8] c"   -U --add-underscore       Add underscores to all symbols in interface library.\0A\00", align 1
@.str.17 = private unnamed_addr constant [89 x i8] c"      --add-stdcall-underscore Add underscores to stdcall symbols in interface library.\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"   -k --kill-at              Kill @<n> from exported names.\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"   -A --add-stdcall-alias    Add aliases without @<n>.\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"   -p --ext-prefix-alias <prefix> Add aliases with <prefix>.\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"   -S --as <name>            Use <name> for assembler.\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"   -f --as-flags <flags>     Pass <flags> to the assembler.\0A\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"   -C --compat-implib        Create backward compatible import library.\0A\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"   -n --no-delete            Keep temp files (repeat for extra preservation).\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"   -t --temp-prefix <prefix> Use <prefix> to construct temp file names.\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"   -v --verbose              Be verbose.\0A\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"   -V --version              Display the program version.\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"   -h --help                 Display this information.\0A\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"   @<file>                   Read options from <file>.\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @program_name, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* %6, i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i8*, i8** @mname, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10, i8* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0))
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0))
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0))
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.16, i64 0, i64 0))
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i8* @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.17, i64 0, i64 0))
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0))
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0))
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i64 0, i64 0))
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0))
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0))
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0))
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0))
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* %95)
  %97 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %2
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32*, i32** %3, align 8
  %107 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %108 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %105, %102, %2
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @exit(i32 %111) #3
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
