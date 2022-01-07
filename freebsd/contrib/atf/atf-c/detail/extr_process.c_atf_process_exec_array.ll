; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_atf_process_exec_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_atf_process_exec_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec_args = type { i8**, void (...)*, i32* }

@atf_process_stream_type_capture = common dso_local global i64 0, align 8
@do_exec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_process_exec_array(i32* %0, i32* %1, i8** %2, i32* %3, i32* %4, void ()* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca void ()*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.exec_args, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store void ()* %5, void ()** %12, align 8
  %16 = getelementptr inbounds %struct.exec_args, %struct.exec_args* %15, i32 0, i32 0
  %17 = load i32*, i32** %8, align 8
  %18 = bitcast i32* %17 to i8**
  store i8** %18, i8*** %16, align 8
  %19 = getelementptr inbounds %struct.exec_args, %struct.exec_args* %15, i32 0, i32 1
  %20 = load i8**, i8*** %9, align 8
  %21 = bitcast i8** %20 to void (...)*
  store void (...)* %21, void (...)** %19, align 8
  %22 = getelementptr inbounds %struct.exec_args, %struct.exec_args* %15, i32 0, i32 2
  %23 = load void ()*, void ()** %12, align 8
  %24 = bitcast void ()* %23 to i32*
  store i32* %24, i32** %22, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @atf_process_stream_type(i32* %28)
  %30 = load i64, i64* @atf_process_stream_type_capture, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %27, %6
  %33 = phi i1 [ true, %6 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @PRE(i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @atf_process_stream_type(i32* %39)
  %41 = load i64, i64* @atf_process_stream_type_capture, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i1 [ true, %32 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @PRE(i32 %45)
  %47 = load i32, i32* @do_exec, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @atf_process_fork(i32* %14, i32 %47, i32* %48, i32* %49, %struct.exec_args* %15)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @atf_is_error(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %78

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @atf_process_child_wait(i32* %14, i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i64 @atf_is_error(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @atf_error_is(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @atf_libc_error_code(i32 %67)
  %69 = load i64, i64* @EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i1 [ false, %62 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @INV(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @atf_error_free(i32 %75)
  br label %56

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %13, align 4
  ret i32 %79
}

declare dso_local i32 @PRE(i32) #1

declare dso_local i64 @atf_process_stream_type(i32*) #1

declare dso_local i32 @atf_process_fork(i32*, i32, i32*, i32*, %struct.exec_args*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_process_child_wait(i32*, i32*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i64 @atf_error_is(i32, i8*) #1

declare dso_local i64 @atf_libc_error_code(i32) #1

declare dso_local i32 @atf_error_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
