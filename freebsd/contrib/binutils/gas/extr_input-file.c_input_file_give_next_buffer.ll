; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-file.c_input_file_give_next_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-file.c_input_file_give_next_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_in = common dso_local global i32* null, align 8
@preprocess = common dso_local global i64 0, align 8
@input_file_get = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't read from %s: %s\00", align 1
@file_name = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't close %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @input_file_give_next_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32*, i32** @f_in, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %52

9:                                                ; preds = %1
  %10 = load i64, i64* @preprocess, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @input_file_get, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @BUFFER_SIZE, align 4
  %16 = call i32 @do_scrub_chars(i32 %13, i8* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @BUFFER_SIZE, align 4
  %20 = load i32*, i32** @f_in, align 8
  %21 = call i32 @fread(i8* %18, i32 1, i32 %19, i32* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @file_name, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @xstrerror(i32 %28)
  %30 = call i32 @as_bad(i32 %26, i32 %27, i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %4, align 8
  br label %50

39:                                               ; preds = %31
  %40 = load i32*, i32** @f_in, align 8
  %41 = call i64 @fclose(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @file_name, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @xstrerror(i32 %46)
  %48 = call i32 @as_warn(i32 %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  store i32* null, i32** @f_in, align 8
  store i8* null, i8** %4, align 8
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %50, %8
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i32 @do_scrub_chars(i32, i8*, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @as_bad(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xstrerror(i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @as_warn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
