; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_open_input_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_open_input_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@istream_type = common dso_local global i64 0, align 8
@ISTREAM_FILE = common dso_local global i64 0, align 8
@cpp_temp_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.irc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't execute `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@FOPEN_RT = common dso_local global i32 0, align 4
@cpp_pipe = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"can't open temporary file `%s': %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Using temporary file `%s' to read preprocessor output\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"can't popen `%s': %s\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Using popen to read preprocessor output\0A\00", align 1
@close_input_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @open_input_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_input_stream(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @istream_type, align 8
  %5 = load i64, i64* @ISTREAM_FILE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = call i8* (...) @choose_temp_base()
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 5
  %12 = call i64 @xmalloc(i64 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @cpp_temp_file, align 8
  %14 = load i8*, i8** @cpp_temp_file, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** @cpp_temp_file, align 8
  %21 = call i64 @run_cmd(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @fatal(i8* %24, i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %7
  %30 = load i8*, i8** @cpp_temp_file, align 8
  %31 = load i32, i32* @FOPEN_RT, align 4
  %32 = call i32* @fopen(i8* %30, i32 %31)
  store i32* %32, i32** @cpp_pipe, align 8
  %33 = load i32*, i32** @cpp_pipe, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** @cpp_temp_file, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @fatal(i8* %36, i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i8*, i8** @cpp_temp_file, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %41
  br label %70

50:                                               ; preds = %1
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* @FOPEN_RT, align 4
  %53 = call i32* @popen(i8* %51, i32 %52)
  store i32* %53, i32** @cpp_pipe, align 8
  %54 = load i32*, i32** @cpp_pipe, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i8*, i8** %2, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @fatal(i8* %57, i8* %58, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i64, i64* @verbose, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i32, i32* @close_input_stream, align 4
  %72 = call i32 @xatexit(i32 %71)
  %73 = load i32*, i32** @cpp_pipe, align 8
  ret i32* %73
}

declare dso_local i8* @choose_temp_base(...) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @run_cmd(i8*, i8*) #1

declare dso_local i32 @fatal(i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @popen(i8*, i32) #1

declare dso_local i32 @xatexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
