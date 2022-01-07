; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_expression_flat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_expression_flat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { %struct.vector_str }
%struct.vector_str = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8**)* @cpp_demangle_read_expression_flat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_expression_flat(%struct.cpp_demangle_data* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.vector_str*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %13 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %12, i32 0, i32 0
  store %struct.vector_str* %13, %struct.vector_str** %6, align 8
  %14 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %15 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %18 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %25 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = call i8* @vector_str_substr(%struct.vector_str* %22, i64 %23, i32 %28, i64* %10)
  store i8* %29, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %34 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %49, %32
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %43 = call i32 @vector_str_pop(%struct.vector_str* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @free(i8* %46)
  store i32 0, i32* %3, align 4
  br label %55

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load i8*, i8** %11, align 8
  %54 = load i8**, i8*** %5, align 8
  store i8* %53, i8** %54, align 8
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %45, %31, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.vector_str*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
