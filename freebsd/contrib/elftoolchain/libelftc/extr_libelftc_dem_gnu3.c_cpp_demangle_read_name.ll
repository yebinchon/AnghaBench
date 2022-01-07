; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, %struct.vector_str* }
%struct.vector_str = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %0) #0 {
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
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %14 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %126

20:                                               ; preds = %12
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %22 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %21, i32 0, i32 1
  %23 = load %struct.vector_str*, %struct.vector_str** %22, align 8
  store %struct.vector_str* %23, %struct.vector_str** %4, align 8
  store i8* null, i8** %9, align 8
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %38 [
    i32 83, label %29
    i32 78, label %32
    i32 90, label %35
  ]

29:                                               ; preds = %20
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = call i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data* %30)
  store i32 %31, i32* %2, align 4
  br label %126

32:                                               ; preds = %20
  %33 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %34 = call i32 @cpp_demangle_read_nested_name(%struct.cpp_demangle_data* %33)
  store i32 %34, i32* %2, align 4
  br label %126

35:                                               ; preds = %20
  %36 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %37 = call i32 @cpp_demangle_read_local_name(%struct.cpp_demangle_data* %36)
  store i32 %37, i32* %2, align 4
  br label %126

38:                                               ; preds = %20
  %39 = call i32 @vector_str_init(%struct.vector_str* %5)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %126

42:                                               ; preds = %38
  %43 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %44 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %46 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %47 = call i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %121

50:                                               ; preds = %42
  %51 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %54 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = call i8* @vector_str_substr(%struct.vector_str* %51, i64 %52, i32 %57, i64* %7)
  store i8* %58, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %121

61:                                               ; preds = %50
  %62 = load i64, i64* %7, align 8
  %63 = icmp ugt i64 %62, 8
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = call i32* @strstr(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  br label %121

69:                                               ; preds = %64, %61
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %121

75:                                               ; preds = %69
  %76 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %77 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %76, %struct.vector_str* %5)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %121

80:                                               ; preds = %75
  %81 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %82 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 73
  br i1 %86, label %87, label %120

87:                                               ; preds = %80
  %88 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %89 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %6, align 8
  %91 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %92 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %121

95:                                               ; preds = %87
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %101 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i8* @vector_str_substr(%struct.vector_str* %98, i64 %99, i32 %104, i64* %7)
  store i8* %105, i8** %9, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %121

108:                                              ; preds = %95
  %109 = load i8*, i8** %9, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %109, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %121

114:                                              ; preds = %108
  %115 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %116 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %115, %struct.vector_str* %5)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %121

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %80
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %118, %113, %107, %94, %79, %74, %68, %60, %49
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @free(i8* %122)
  %124 = call i32 @vector_str_dest(%struct.vector_str* %5)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %41, %35, %32, %29, %19
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_nested_name(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_local_name(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

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
