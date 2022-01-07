; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pax.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pax.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@listf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@cwdfd = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't open current working directory.\00", align 1
@exit_val = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@tempfile = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Cannot allocate memory for temp file name.\00", align 1
@tempbase = common dso_local global i32* null, align 8
@act = common dso_local global i32 0, align 4
@gzip_program = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"can not gzip while appending\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_ALL, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  store i32 %10, i32* @listf, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i64 %14, i64* @cwdfd, align 8
  %15 = load i64, i64* @cwdfd, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @syswarn(i32 0, i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @exit_val, align 4
  store i32 %20, i32* %3, align 4
  br label %104

21:                                               ; preds = %2
  %22 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %21
  %30 = load i8*, i8** @_PATH_TMP, align 8
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %47, %31
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br label %45

45:                                               ; preds = %37, %34
  %46 = phi i1 [ false, %34 ], [ %44, %37 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %7, align 8
  br label %34

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  %53 = add i64 %52, 4
  %54 = call i32* @malloc(i64 %53)
  store i32* %54, i32** @tempfile, align 8
  %55 = load i32*, i32** @tempfile, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @exit_val, align 4
  store i32 %59, i32* %3, align 4
  br label %104

60:                                               ; preds = %50
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** @tempfile, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @memcpy(i32* %64, i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32*, i32** @tempfile, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** @tempbase, align 8
  %72 = load i32*, i32** @tempbase, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** @tempbase, align 8
  store i32 47, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = call i32 @options(i32 %74, i8** %75)
  %77 = call i64 (...) @gen_init()
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = call i64 (...) @tty_init()
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %68
  %83 = load i32, i32* @exit_val, align 4
  store i32 %83, i32* %3, align 4
  br label %104

84:                                               ; preds = %79
  %85 = load i32, i32* @act, align 4
  switch i32 %85, label %99 [
    i32 129, label %86
    i32 131, label %88
    i32 132, label %90
    i32 130, label %97
    i32 128, label %100
  ]

86:                                               ; preds = %84
  %87 = call i32 (...) @extract()
  br label %102

88:                                               ; preds = %84
  %89 = call i32 (...) @archive()
  br label %102

90:                                               ; preds = %84
  %91 = load i32*, i32** @gzip_program, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = call i32 (...) @append()
  br label %102

97:                                               ; preds = %84
  %98 = call i32 (...) @copy()
  br label %102

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %84, %99
  %101 = call i32 (...) @list()
  br label %102

102:                                              ; preds = %100, %97, %95, %88, %86
  %103 = load i32, i32* @exit_val, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %82, %57, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @options(i32, i8**) #1

declare dso_local i64 @gen_init(...) #1

declare dso_local i64 @tty_init(...) #1

declare dso_local i32 @extract(...) #1

declare dso_local i32 @archive(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @append(...) #1

declare dso_local i32 @copy(...) #1

declare dso_local i32 @list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
