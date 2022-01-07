; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_atf_process_exec_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_atf_process_exec_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atf_process_stream_type_capture = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_process_exec_list(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, void ()* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca void ()*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store void ()* %5, void ()** %12, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = load i32*, i32** %10, align 8
  %19 = call i64 @atf_process_stream_type(i32* %18)
  %20 = load i64, i64* @atf_process_stream_type_capture, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %17, %6
  %23 = phi i1 [ true, %6 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @PRE(i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @atf_process_stream_type(i32* %29)
  %31 = load i64, i64* @atf_process_stream_type_capture, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ true, %22 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @PRE(i32 %35)
  store i8** null, i8*** %14, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @list_to_array(i32* %37, i8*** %14)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @atf_is_error(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %54

43:                                               ; preds = %33
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i8**, i8*** %14, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load void ()*, void ()** %12, align 8
  %50 = bitcast void ()* %49 to void (...)*
  %51 = call i32 @atf_process_exec_array(i32* %44, i32* %45, i8** %46, i32* %47, i32* %48, void (...)* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i8**, i8*** %14, align 8
  %53 = call i32 @free(i8** %52)
  br label %54

54:                                               ; preds = %43, %42
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local i32 @PRE(i32) #1

declare dso_local i64 @atf_process_stream_type(i32*) #1

declare dso_local i32 @list_to_array(i32*, i8***) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_process_exec_array(i32*, i32*, i8**, i32*, i32*, void (...)*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
