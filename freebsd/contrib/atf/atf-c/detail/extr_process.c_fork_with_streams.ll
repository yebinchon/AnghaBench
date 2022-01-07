; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_fork_with_streams.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_fork_with_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Failed to fork\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, void (i8*)*, i32*, i32*, i8*)* @fork_with_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fork_with_streams(i32* %0, void (i8*)* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store void (i8*)* %1, void (i8*)** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @stream_prepare_init(i32* %12, i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @atf_is_error(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %58

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @stream_prepare_init(i32* %13, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @atf_is_error(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %56

28:                                               ; preds = %21
  %29 = call i32 (...) @fork()
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @atf_libc_error(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %11, align 4
  br label %54

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load void (i8*)*, void (i8*)** %7, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @do_child(void (i8*)* %39, i8* %40, i32* %12, i32* %13)
  %42 = load i32, i32* @UNREACHABLE, align 4
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %35
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @do_parent(i32* %45, i32 %46, i32* %12, i32* %13)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @atf_is_error(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %54

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  br label %58

54:                                               ; preds = %51, %32
  %55 = call i32 @stream_prepare_fini(i32* %13)
  br label %56

56:                                               ; preds = %54, %27
  %57 = call i32 @stream_prepare_fini(i32* %12)
  br label %58

58:                                               ; preds = %56, %53, %20
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @stream_prepare_init(i32*, i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @atf_libc_error(i32, i8*) #1

declare dso_local i32 @do_child(void (i8*)*, i8*, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @do_parent(i32*, i32, i32*, i32*) #1

declare dso_local i32 @stream_prepare_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
