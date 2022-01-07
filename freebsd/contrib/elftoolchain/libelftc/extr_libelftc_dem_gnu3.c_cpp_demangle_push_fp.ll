; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8* (i8*, i64)*)* @cpp_demangle_push_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_push_fp(%struct.cpp_demangle_data* %0, i8* (i8*, i64)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i8* (i8*, i64)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i8* (i8*, i64)* %1, i8* (i8*, i64)** %5, align 8
  %10 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %11 = icmp eq %struct.cpp_demangle_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8* (i8*, i64)*, i8* (i8*, i64)** %5, align 8
  %14 = icmp eq i8* (i8*, i64)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %62

16:                                               ; preds = %12
  %17 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %18 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %27, %16
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %22 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 69
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %29 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  br label %20

32:                                               ; preds = %20
  %33 = load i8* (i8*, i64)*, i8* (i8*, i64)** %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %36 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = call i8* %33(i8* %34, i64 %41)
  store i8* %42, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %62

45:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %6, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %50, i8* %51, i64 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %58 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %44, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
