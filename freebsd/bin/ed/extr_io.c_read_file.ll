; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot open input file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"error reading input file\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot close input file\00", align 1
@scripted = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@current_addr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_file(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 33
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i32* @popen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strip_escapes(i8* %18)
  %20 = call i32* @fopen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32* [ %16, %13 ], [ %20, %17 ]
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %29)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** @errmsg, align 8
  %31 = load i64, i64* @ERR, align 8
  store i64 %31, i64* %3, align 8
  br label %82

32:                                               ; preds = %21
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @read_stream(i32* %33, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @strerror(i32 %40)
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %41)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** @errmsg, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 33
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @pclose(i32* %49)
  br label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fclose(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  store i32 %55, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = call i8* @strerror(i32 %60)
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %61)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** @errmsg, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63
  %70 = load i64, i64* @ERR, align 8
  store i64 %70, i64* %3, align 8
  br label %82

71:                                               ; preds = %66
  %72 = load i32, i32* @scripted, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @stdout, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i64, i64* @current_addr, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %78, %69, %25
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @strip_escapes(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @read_stream(i32*, i64) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
