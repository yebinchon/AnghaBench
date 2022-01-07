; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_pch.c_cpp_string_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_pch.c_cpp_string_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_string = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cpp_string_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_string_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpp_string*, align 8
  %6 = alloca %struct.cpp_string*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.cpp_string*
  store %struct.cpp_string* %8, %struct.cpp_string** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cpp_string*
  store %struct.cpp_string* %10, %struct.cpp_string** %6, align 8
  %11 = load %struct.cpp_string*, %struct.cpp_string** %5, align 8
  %12 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cpp_string*, %struct.cpp_string** %6, align 8
  %15 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.cpp_string*, %struct.cpp_string** %5, align 8
  %20 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cpp_string*, %struct.cpp_string** %6, align 8
  %23 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cpp_string*, %struct.cpp_string** %5, align 8
  %26 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @memcmp(i32 %21, i32 %24, i64 %27)
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %18, %2
  %31 = phi i1 [ false, %2 ], [ %29, %18 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
