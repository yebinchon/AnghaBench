; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_stdtmpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_stdtmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { %struct.vector_str* }
%struct.vector_str = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8*)* @cpp_demangle_read_subst_stdtmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_subst_stdtmpl(%struct.cpp_demangle_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vector_str*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %14 = icmp eq %struct.cpp_demangle_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %87

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %87

24:                                               ; preds = %19
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 0
  %27 = load %struct.vector_str*, %struct.vector_str** %26, align 8
  store %struct.vector_str* %27, %struct.vector_str** %6, align 8
  %28 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %29 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  %31 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %32 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %87

35:                                               ; preds = %24
  %36 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %39 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i8* @vector_str_substr(%struct.vector_str* %36, i64 %37, i32 %42, i64* %8)
  store i8* %43, i8** %12, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %87

46:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %47, %48
  %50 = add i64 %49, 1
  %51 = mul i64 1, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %81

56:                                               ; preds = %46
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @memcpy(i8* %63, i8* %64, i64 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %68, %69
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %74, %75
  %77 = call i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data* %72, i8* %73, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %56
  br label %81

80:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %79, %55
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %45, %34, %23, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
