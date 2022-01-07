; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, %struct.vector_str* }
%struct.vector_str = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"std::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_subst_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_subst_std(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca %struct.vector_str, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %10 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %11 = icmp eq %struct.cpp_demangle_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

13:                                               ; preds = %1
  %14 = call i32 @vector_str_init(%struct.vector_str* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %109

17:                                               ; preds = %13
  store i8* null, i8** %9, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %19 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %104

22:                                               ; preds = %17
  %23 = call i32 @VEC_PUSH_STR(%struct.vector_str* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %104

26:                                               ; preds = %22
  %27 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %28 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %28, align 8
  %31 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %32 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %31, i32 0, i32 1
  %33 = load %struct.vector_str*, %struct.vector_str** %32, align 8
  store %struct.vector_str* %33, %struct.vector_str** %4, align 8
  %34 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %35 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %38 = call i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  br label %104

41:                                               ; preds = %26
  %42 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %45 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i8* @vector_str_substr(%struct.vector_str* %42, i64 %43, i32 %48, i64* %7)
  store i8* %49, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %104

52:                                               ; preds = %41
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %104

58:                                               ; preds = %52
  %59 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %60 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %59, %struct.vector_str* %5)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %104

63:                                               ; preds = %58
  %64 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %65 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 73
  br i1 %69, label %70, label %103

70:                                               ; preds = %63
  %71 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %72 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %6, align 8
  %74 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %75 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %104

78:                                               ; preds = %70
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %84 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = call i8* @vector_str_substr(%struct.vector_str* %81, i64 %82, i32 %87, i64* %7)
  store i8* %88, i8** %9, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %104

91:                                               ; preds = %78
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %104

97:                                               ; preds = %91
  %98 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %99 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %98, %struct.vector_str* %5)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %104

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %63
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %101, %96, %90, %77, %62, %57, %51, %40, %25, %21
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  %107 = call i32 @vector_str_dest(%struct.vector_str* %5)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %16, %12
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.vector_str*, i8*) #1

declare dso_local i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
