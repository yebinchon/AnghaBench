; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_finish_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_finish_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outfile = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@errno = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@EXIT_TROUBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"subsidiary program `%s' could not be invoked\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"subsidiary program `%s' not found\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"subsidiary program `%s' failed\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"subsidiary program `%s' failed (exit status %d)\00", align 1
@pr_program = common dso_local global i32 0, align 4
@pr_pid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_output() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @outfile, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %0
  %7 = load i64, i64* @outfile, align 8
  %8 = load i64, i64* @stdout, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  %11 = load i64, i64* @outfile, align 8
  %12 = call i64 @ferror(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i64, i64* @outfile, align 8
  %18 = call i32 @pclose(i64 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @WIFEXITED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @WEXITSTATUS(i32 %31)
  br label %35

33:                                               ; preds = %26, %23
  %34 = load i32, i32* @INT_MAX, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %32, %30 ], [ %34, %33 ]
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load i32, i32* @EXIT_TROUBLE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %42, 126
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %57

45:                                               ; preds = %39
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, 127
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @INT_MAX, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0)
  br label %55

55:                                               ; preds = %49, %48
  %56 = phi i8* [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %48 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %44
  %58 = phi i8* [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %44 ], [ %56, %55 ]
  %59 = call i8* @_(i8* %58)
  %60 = load i32, i32* @pr_program, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @error(i32 %40, i32 %41, i8* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %35
  br label %64

64:                                               ; preds = %63, %6, %0
  store i64 0, i64* @outfile, align 8
  ret void
}

declare dso_local i64 @ferror(i64) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @pclose(i64) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @error(i32, i32, i8*, i32, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
