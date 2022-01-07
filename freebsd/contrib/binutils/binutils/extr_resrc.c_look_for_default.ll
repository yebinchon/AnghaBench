; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_look_for_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_look_for_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DEFAULT_PREPROCESSOR = common dso_local global i8* null, align 8
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Tried `%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s %s %s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Using `%s'\0A\00", align 1
@cpp_pipe = common dso_local global i32* null, align 8
@EXECUTABLE_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i8*)* @look_for_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @look_for_default(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i64 @filename_need_quotes(i8* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %15, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcpy(i8* %21, i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8*, i8** @DEFAULT_PREPROCESSOR, align 8
  %29 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = call i8* @strchr(i8* %33, i8 signext 32)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i8*, i8** %12, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %5
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @stat(i8* %44, %struct.stat* %14)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* @verbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @fprintf(i32 %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %50
  store i32* null, i32** %6, align 8
  br label %85

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strcpy(i8* %61, i8* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8*, i8** @DEFAULT_PREPROCESSOR, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %68, i8* %69, i8* %70, i8* %71, i8* %72)
  %74 = load i64, i64* @verbose, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %60
  %77 = load i32, i32* @stderr, align 4
  %78 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @fprintf(i32 %77, i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %76, %60
  %82 = load i8*, i8** %7, align 8
  %83 = call i32* @open_input_stream(i8* %82)
  store i32* %83, i32** @cpp_pipe, align 8
  %84 = load i32*, i32** @cpp_pipe, align 8
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %81, %58
  %86 = load i32*, i32** %6, align 8
  ret i32* %86
}

declare dso_local i64 @filename_need_quotes(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @open_input_stream(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
