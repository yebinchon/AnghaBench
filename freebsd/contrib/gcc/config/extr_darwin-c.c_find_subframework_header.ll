; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin-c.c_find_subframework_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin-c.c_find_subframework_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32**)* @find_subframework_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_subframework_header(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cpp_buffer*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.cpp_buffer* @cpp_get_buffer(i32* %12)
  store %struct.cpp_buffer* %13, %struct.cpp_buffer** %9, align 8
  br label %14

14:                                               ; preds = %43, %3
  %15 = load %struct.cpp_buffer*, %struct.cpp_buffer** %9, align 8
  %16 = icmp ne %struct.cpp_buffer* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.cpp_buffer*, %struct.cpp_buffer** %9, align 8
  %19 = call i64 @cpp_get_file(%struct.cpp_buffer* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.cpp_buffer*, %struct.cpp_buffer** %9, align 8
  %23 = call i64 @cpp_get_file(%struct.cpp_buffer* %22)
  %24 = call i64 @cpp_get_path(i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %17, %14
  %27 = phi i1 [ false, %17 ], [ false, %14 ], [ %25, %21 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.cpp_buffer*, %struct.cpp_buffer** %9, align 8
  %31 = call i64 @cpp_get_file(%struct.cpp_buffer* %30)
  %32 = call i64 @cpp_get_path(i64 %31)
  %33 = call i8* @find_subframework_file(i8* %29, i64 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.cpp_buffer*, %struct.cpp_buffer** %9, align 8
  %38 = call i64 @cpp_get_file(%struct.cpp_buffer* %37)
  %39 = call i32* @cpp_get_dir(i64 %38)
  %40 = load i32**, i32*** %7, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %4, align 8
  br label %47

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.cpp_buffer*, %struct.cpp_buffer** %9, align 8
  %45 = call %struct.cpp_buffer* @cpp_get_prev(%struct.cpp_buffer* %44)
  store %struct.cpp_buffer* %45, %struct.cpp_buffer** %9, align 8
  br label %14

46:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local %struct.cpp_buffer* @cpp_get_buffer(i32*) #1

declare dso_local i64 @cpp_get_file(%struct.cpp_buffer*) #1

declare dso_local i64 @cpp_get_path(i64) #1

declare dso_local i8* @find_subframework_file(i8*, i64) #1

declare dso_local i32* @cpp_get_dir(i64) #1

declare dso_local %struct.cpp_buffer* @cpp_get_prev(%struct.cpp_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
