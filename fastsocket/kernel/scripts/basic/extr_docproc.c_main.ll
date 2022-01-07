; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"SRCTREE\00", align 1
@srctree = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"KBUILD_SRC\00", align 1
@kernsrctree = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"docproc: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@noaction = common dso_local global i8* null, align 8
@defaultline = common dso_local global i8* null, align 8
@find_export_symbols = common dso_local global i8* null, align 8
@internalfunctions = common dso_local global i8* null, align 8
@externalfunctions = common dso_local global i8* null, align 8
@symbolsonly = common dso_local global i8* null, align 8
@noaction2 = common dso_local global i8* null, align 8
@singlefunctions = common dso_local global i8* null, align 8
@docsection = common dso_local global i8* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@printline = common dso_local global i8* null, align 8
@intfunc = common dso_local global i8* null, align 8
@extfunc = common dso_local global i8* null, align 8
@singfunc = common dso_local global i8* null, align 8
@docsect = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"depend\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@adddep = common dso_local global i8* null, align 8
@adddep2 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@exitstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @srctree, align 8
  %9 = load i32*, i32** @srctree, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32* @getcwd(i32* null, i32 0)
  store i32* %12, i32** @srctree, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @kernsrctree, align 8
  %16 = load i32*, i32** @kernsrctree, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** @kernsrctree, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %13
  %23 = load i32*, i32** @srctree, align 8
  store i32* %23, i32** @kernsrctree, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 (...) @usage()
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @perror(i8* %42)
  %44 = call i32 @exit(i32 2) #3
  unreachable

45:                                               ; preds = %30
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load i8*, i8** @noaction, align 8
  store i8* %52, i8** @defaultline, align 8
  %53 = load i8*, i8** @find_export_symbols, align 8
  store i8* %53, i8** @internalfunctions, align 8
  %54 = load i8*, i8** @find_export_symbols, align 8
  store i8* %54, i8** @externalfunctions, align 8
  %55 = load i8*, i8** @find_export_symbols, align 8
  store i8* %55, i8** @symbolsonly, align 8
  %56 = load i8*, i8** @noaction2, align 8
  store i8* %56, i8** @singlefunctions, align 8
  %57 = load i8*, i8** @noaction2, align 8
  store i8* %57, i8** @docsection, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @parse_file(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i32 @fseek(i32* %60, i32 0, i32 %61)
  %63 = load i8*, i8** @printline, align 8
  store i8* %63, i8** @defaultline, align 8
  %64 = load i8*, i8** @intfunc, align 8
  store i8* %64, i8** @internalfunctions, align 8
  %65 = load i8*, i8** @extfunc, align 8
  store i8* %65, i8** @externalfunctions, align 8
  %66 = load i8*, i8** @printline, align 8
  store i8* %66, i8** @symbolsonly, align 8
  %67 = load i8*, i8** @singfunc, align 8
  store i8* %67, i8** @singlefunctions, align 8
  %68 = load i8*, i8** @docsect, align 8
  store i8* %68, i8** @docsection, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @parse_file(i32* %69)
  br label %99

71:                                               ; preds = %45
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** @noaction, align 8
  store i8* %82, i8** @defaultline, align 8
  %83 = load i8*, i8** @adddep, align 8
  store i8* %83, i8** @internalfunctions, align 8
  %84 = load i8*, i8** @adddep, align 8
  store i8* %84, i8** @externalfunctions, align 8
  %85 = load i8*, i8** @adddep, align 8
  store i8* %85, i8** @symbolsonly, align 8
  %86 = load i8*, i8** @adddep2, align 8
  store i8* %86, i8** @singlefunctions, align 8
  %87 = load i8*, i8** @adddep2, align 8
  store i8* %87, i8** @docsection, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @parse_file(i32* %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %98

91:                                               ; preds = %71
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %51
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @fclose(i32* %100)
  %102 = load i32, i32* @stdout, align 4
  %103 = call i32 @fflush(i32 %102)
  %104 = load i32, i32* @exitstatus, align 4
  ret i32 %104
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @getcwd(i32*, i32) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_file(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
