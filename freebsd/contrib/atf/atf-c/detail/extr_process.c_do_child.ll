; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_do_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_do_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@UNREACHABLE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unhandled error: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (i8*)*, i8*, i32*, i32*)* @do_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_child(void (i8*)* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  store void (i8*)* %0, void (i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @STDOUT_FILENO, align 4
  %13 = call i32 @child_connect(i32* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @atf_is_error(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %30

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @STDERR_FILENO, align 4
  %21 = call i32 @child_connect(i32* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @atf_is_error(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  %27 = load void (i8*)*, void (i8*)** %5, align 8
  %28 = load i8*, i8** %6, align 8
  call void %27(i8* %28)
  %29 = load i32, i32* @UNREACHABLE, align 4
  br label %30

30:                                               ; preds = %26, %25, %17
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @atf_is_error(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %37 = call i32 @atf_error_format(i32 %35, i8* %36, i32 1024)
  %38 = load i32, i32* @stderr, align 4
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @atf_error_free(i32 %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %30
  %46 = load i32, i32* @EXIT_SUCCESS, align 4
  %47 = call i32 @exit(i32 %46) #3
  unreachable
}

declare dso_local i32 @child_connect(i32*, i32) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_error_format(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @atf_error_free(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
