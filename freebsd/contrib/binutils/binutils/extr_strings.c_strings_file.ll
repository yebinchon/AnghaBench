; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_strings_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_strings_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"'%s': No such file\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Warning: could not locate '%s'.  reason: %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@datasection_only = common dso_local global i32 0, align 4
@FOPEN_RB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@program_name = common dso_local global i8* null, align 8
@EOF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @strings_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strings_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @file_stat(i8* %6, i32* %4)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i64, i64* @errno, align 8
  %11 = load i64, i64* @ENOENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i32, i8*, ...) @non_fatal(i32 %14, i8* %15)
  br label %23

17:                                               ; preds = %9
  %18 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @strerror(i64 %20)
  %22 = call i32 (i32, i8*, ...) @non_fatal(i32 %18, i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %1
  %26 = load i32, i32* @datasection_only, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strings_object_file(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @FOPEN_RB, align 4
  %35 = call i32* @file_open(i8* %33, i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** @program_name, align 8
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @perror(i8* %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %32
  %46 = load i8*, i8** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @print_strings(i8* %46, i32* %47, i32 0, i32 0, i32 0, i8* null)
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @fclose(i32* %49)
  %51 = load i64, i64* @EOF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @program_name, align 8
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @perror(i8* %57)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %53, %38, %23
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @file_stat(i8*, i32*) #1

declare dso_local i32 @non_fatal(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @strings_object_file(i8*) #1

declare dso_local i32* @file_open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @print_strings(i8*, i32*, i32, i32, i32, i8*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
