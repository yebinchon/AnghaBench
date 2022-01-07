; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_get_stream_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_get_stream_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@sbuf = common dso_local global i8* null, align 8
@sbufsz = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@isbinary = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot read input file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@newline_added = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_stream_line(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @getc(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @feof(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ferror(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %6
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 10
  br label %22

22:                                               ; preds = %19, %15, %11
  %23 = phi i1 [ false, %15 ], [ false, %11 ], [ %21, %19 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load i8*, i8** @sbuf, align 8
  %26 = load i32, i32* @sbufsz, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @ERR, align 4
  %30 = call i32 @REALLOC(i8* %25, i32 %26, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** @sbuf, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 %32, i8* %37, align 1
  %38 = icmp ne i8 %32, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  store i32 1, i32* @isbinary, align 4
  br label %40

40:                                               ; preds = %39, %24
  br label %6

41:                                               ; preds = %22
  %42 = load i8*, i8** @sbuf, align 8
  %43 = load i32, i32* @sbufsz, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 2
  %46 = load i32, i32* @ERR, align 4
  %47 = call i32 @REALLOC(i8* %42, i32 %43, i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** @sbuf, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  br label %79

58:                                               ; preds = %41
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @ferror(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %65)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  %67 = load i32, i32* @ERR, align 4
  store i32 %67, i32* %2, align 4
  br label %99

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i8*, i8** @sbuf, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 10, i8* %76, align 1
  store i32 1, i32* @newline_added, align 4
  br label %77

77:                                               ; preds = %71, %68
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i8*, i8** @sbuf, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load i32, i32* @isbinary, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load i32, i32* @newline_added, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %5, align 4
  br label %97

95:                                               ; preds = %89, %86, %79
  %96 = load i32, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %94, %92 ], [ %96, %95 ]
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %62
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
