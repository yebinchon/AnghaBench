; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_atf_process_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_atf_process_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_process_fork(i32* %0, void (i8*)* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store void (i8*)* %1, void (i8*)** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @init_stream_w_default(i32* %16, i32* %12, i32** %14)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @atf_is_error(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %47

22:                                               ; preds = %5
  store i32* null, i32** %15, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @init_stream_w_default(i32* %23, i32* %13, i32** %15)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @atf_is_error(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %41

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load void (i8*)*, void (i8*)** %7, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @fork_with_streams(i32* %30, void (i8*)* %31, i32* %32, i32* %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @atf_process_stream_fini(i32* %13)
  br label %40

40:                                               ; preds = %38, %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32*, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @atf_process_stream_fini(i32* %12)
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @init_stream_w_default(i32*, i32*, i32**) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @fork_with_streams(i32*, void (i8*)*, i32*, i32*, i8*) #1

declare dso_local i32 @atf_process_stream_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
