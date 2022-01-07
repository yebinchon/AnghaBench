; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"ab:Ce:fij:psHV\00", align 1
@longopts = common dso_local global i32 0, align 4
@print_addr = common dso_local global i32 0, align 4
@demangle = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@func = common dso_local global i32 0, align 4
@inlines = common dso_local global i32 0, align 4
@pretty_print = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"caph_rights_limit\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to limit stdio rights\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to enter capability mode\00", align 1
@DW_DLC_READ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"dwarf_init: %s\00", align 1
@DW_DLV_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"dwarf_get_elf: %s\00", align 1
@section_base = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %16

16:                                               ; preds = %41, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* @longopts, align 4
  %20 = call i32 @getopt_long(i32 %17, i8** %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null)
  store i32 %20, i32* %15, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load i32, i32* %15, align 4
  switch i32 %23, label %39 [
    i32 97, label %24
    i32 98, label %25
    i32 67, label %26
    i32 101, label %27
    i32 102, label %29
    i32 105, label %30
    i32 106, label %31
    i32 112, label %33
    i32 115, label %34
    i32 72, label %35
    i32 86, label %37
  ]

24:                                               ; preds = %22
  store i32 1, i32* @print_addr, align 4
  br label %41

25:                                               ; preds = %22
  br label %41

26:                                               ; preds = %22
  store i32 1, i32* @demangle, align 4
  br label %41

27:                                               ; preds = %22
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %10, align 8
  br label %41

29:                                               ; preds = %22
  store i32 1, i32* @func, align 4
  br label %41

30:                                               ; preds = %22
  store i32 1, i32* @inlines, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %11, align 8
  br label %41

33:                                               ; preds = %22
  store i32 1, i32* @pretty_print, align 4
  br label %41

34:                                               ; preds = %22
  store i32 1, i32* @base, align 4
  br label %41

35:                                               ; preds = %22
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %22, %35
  %38 = call i32 (...) @version()
  br label %39

39:                                               ; preds = %22, %37
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %34, %33, %31, %30, %29, %27, %26, %25, %24
  br label %16

42:                                               ; preds = %16
  %43 = load i64, i64* @optind, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43
  store i8** %45, i8*** %5, align 8
  %46 = load i64, i64* @optind, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @O_RDONLY, align 4
  %57 = call i32 @open(i8* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @err(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @CAP_FSTAT, align 4
  %66 = load i32, i32* @CAP_MMAP_R, align 4
  %67 = call i32 @cap_rights_init(i32* %6, i32 %65, i32 %66)
  %68 = call i64 @caph_rights_limit(i32 %64, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EXIT_FAILURE, align 4
  %72 = call i32 (i32, i8*, ...) @errx(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %63
  %74 = call i32 (...) @caph_cache_catpages()
  %75 = call i64 (...) @caph_limit_stdio()
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = call i32 (i32, i8*, ...) @errx(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  %81 = call i64 (...) @caph_enter()
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  %85 = call i32 (i32, i8*, ...) @errx(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @DW_DLC_READ, align 4
  %89 = call i64 @dwarf_init(i32 %87, i32 %88, i32* null, i32* null, i32* %8, i32* %9)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* @EXIT_FAILURE, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @dwarf_errmsg(i32 %93)
  %95 = call i32 (i32, i8*, ...) @errx(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @dwarf_get_elf(i32 %97, i32** %7, i32* %9)
  %99 = load i64, i64* @DW_DLV_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dwarf_errmsg(i32 %103)
  %105 = call i32 (i32, i8*, ...) @errx(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %10, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @find_section_base(i8* %110, i32* %111, i8* %112)
  br label %115

114:                                              ; preds = %106
  store i64 0, i64* @section_base, align 8
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i32, i32* %4, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @translate(i32 %124, i32* %125, i8* %130)
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %119

135:                                              ; preds = %119
  br label %151

136:                                              ; preds = %115
  %137 = load i32, i32* @stdout, align 4
  %138 = load i32, i32* @_IOLBF, align 4
  %139 = call i32 @setvbuf(i32 %137, i32* null, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %145, %136
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %142 = load i32, i32* @stdin, align 4
  %143 = call i32* @fgets(i8* %141, i32 1024, i32 %142)
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %149 = call i32 @translate(i32 %146, i32* %147, i8* %148)
  br label %140

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @dwarf_finish(i32 %152, i32* %9)
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @elf_end(i32* %154)
  %156 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @version(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @caph_rights_limit(i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i64 @dwarf_init(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i64 @dwarf_get_elf(i32, i32**, i32*) #1

declare dso_local i32 @find_section_base(i8*, i32*, i8*) #1

declare dso_local i32 @translate(i32, i32*, i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @dwarf_finish(i32, i32*) #1

declare dso_local i32 @elf_end(i32*) #1

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
