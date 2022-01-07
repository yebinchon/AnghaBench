; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_type_flat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_type_flat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { %struct.vector_str* }
%struct.vector_str = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8**)* @cpp_demangle_read_type_flat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_type_flat(%struct.cpp_demangle_data* %0, i8** %1) #0 {
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
  %14 = load %struct.vector_str*, %struct.vector_str** %13, align 8
  store %struct.vector_str* %14, %struct.vector_str** %6, align 8
  %15 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %16 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %19 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %26 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @vector_str_substr(%struct.vector_str* %23, i64 %24, i32 %29, i64* %10)
  store i8* %30, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %35 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %50, %33
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %44 = call i32 @vector_str_pop(%struct.vector_str* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @free(i8* %47)
  store i32 0, i32* %3, align 4
  br label %56

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %38

53:                                               ; preds = %38
  %54 = load i8*, i8** %11, align 8
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %46, %32, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.vector_str*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
