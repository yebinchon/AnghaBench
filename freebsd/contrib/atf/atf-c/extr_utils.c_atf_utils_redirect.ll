; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDOUT_FILENO = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cannot create %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot redirect to fd %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atf_utils_redirect(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @STDOUT_FILENO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STDERR_FILENO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fflush(i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_TRUNC, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %21, i32 %26, i32 420)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i32, i8*, ...) @err(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @dup2(i32 %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @err(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
