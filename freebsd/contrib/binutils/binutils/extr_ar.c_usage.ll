; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@is_ranlib = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Usage: %s [emulation options] [-]{dmpqrstx}[abcfilNoPsSuvV] [member-name] [count] archive-file file...\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"       %s -M [<mri-script]\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" commands:\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"  d            - delete file(s) from the archive\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"  m[ab]        - move file(s) in the archive\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"  p            - print file(s) found in the archive\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"  q[f]         - quick append file(s) to the archive\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"  r[ab][f][u]  - replace existing or insert new file(s) into the archive\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"  t            - display contents of archive\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"  x[o]         - extract file(s) from the archive\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" command specific modifiers:\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"  [a]          - put file(s) after [member-name]\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"  [b]          - put file(s) before [member-name] (same as [i])\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"  [N]          - use instance [count] of name\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"  [f]          - truncate inserted file names\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"  [P]          - use full path names when matching\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"  [o]          - preserve original dates\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"  [u]          - only replace files that are newer than current archive contents\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c" generic modifiers:\0A\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"  [c]          - do not warn if the library had to be created\0A\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"  [s]          - create an archive index (cf. ranlib)\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"  [S]          - do not build a symbol table\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"  [v]          - be verbose\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"  [V]          - display the version number\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"  @<file>      - read options from <file>\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Usage: %s [options] archive\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c" Generate an index to speed access to archives\0A\00", align 1
@.str.27 = private unnamed_addr constant [187 x i8] c" The options are:\0A  @<file>                      Read options from <file>\0A  -h --help                    Print this help message\0A  -V --version                 Print version information\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32*, i32** @stdout, align 8
  br label %10

8:                                                ; preds = %1
  %9 = load i32*, i32** @stderr, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32* [ %7, %6 ], [ %9, %8 ]
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* @is_ranlib, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %94, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** @program_name, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* %16, i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @program_name, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* %20, i8* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i64 0, i64 0))
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i64 0, i64 0))
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i64 0, i64 0))
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0))
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0))
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0))
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @ar_emul_usage(i32* %92)
  br label %105

94:                                               ; preds = %10
  %95 = load i32*, i32** %3, align 8
  %96 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %97 = load i8*, i8** @program_name, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* %96, i8* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i64 0, i64 0))
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %99, i8* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i8* @_(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.27, i64 0, i64 0))
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* %103)
  br label %105

105:                                              ; preds = %94, %14
  %106 = load i8*, i8** @program_name, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @list_supported_targets(i8* %106, i32* %107)
  %109 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load i32, i32* %2, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32*, i32** %3, align 8
  %119 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %120 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %117, %114, %105
  %123 = load i32, i32* %2, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 0, i32 1
  %127 = call i32 @xexit(i32 %126)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ar_emul_usage(i32*) #1

declare dso_local i32 @list_supported_targets(i8*, i32*) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
