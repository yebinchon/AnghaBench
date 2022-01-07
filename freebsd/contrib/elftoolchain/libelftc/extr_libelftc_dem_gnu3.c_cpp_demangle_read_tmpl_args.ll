; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, i32, i32, %struct.vector_str }
%struct.vector_str = type { i64, i32* }

@READ_TMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_tmpl_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  br label %145

20:                                               ; preds = %12
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %22 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 2
  %27 = load i32, i32* @READ_TMPL, align 4
  %28 = call i32 @vector_read_cmd_push(i32* %26, i32 %27, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %145

31:                                               ; preds = %20
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %33 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %145

36:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  %37 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %38 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %37, i32 0, i32 4
  store %struct.vector_str* %38, %struct.vector_str** %4, align 8
  br label %39

39:                                               ; preds = %140, %36
  %40 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %41 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %44 = call i32 @cpp_demangle_read_tmpl_arg(%struct.cpp_demangle_data* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %145

47:                                               ; preds = %39
  %48 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %51 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i8* @vector_str_substr(%struct.vector_str* %48, i64 %49, i32 %54, i64* %5)
  store i8* %55, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %145

58:                                               ; preds = %47
  %59 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %60 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %59, i32 0, i32 3
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @vector_str_find(i32* %60, i8* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %67 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %66, i32 0, i32 3
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @vector_str_push(i32* %67, i8* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @free(i8* %73)
  store i32 0, i32* %2, align 4
  br label %145

75:                                               ; preds = %65, %58
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %79 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 69
  br i1 %83, label %84, label %120

84:                                               ; preds = %75
  %85 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %86 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %90 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ugt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %97 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strncmp(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %84
  %106 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %107 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %145

110:                                              ; preds = %105
  br label %117

111:                                              ; preds = %84
  %112 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %113 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %145

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %110
  %118 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %119 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %118, i32 0, i32 1
  store i32 1, i32* %119, align 8
  br label %141

120:                                              ; preds = %75
  %121 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %122 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 73
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %129 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %145

132:                                              ; preds = %127, %120
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %7, align 8
  %136 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp ugt i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %145

140:                                              ; preds = %133
  br label %39

141:                                              ; preds = %117
  %142 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %143 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %142, i32 0, i32 2
  %144 = call i32 @vector_read_cmd_pop(i32* %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %139, %131, %115, %109, %72, %57, %46, %35, %30, %19
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @vector_read_cmd_push(i32*, i32, i32*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_arg(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_find(i32*, i8*, i64) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @vector_read_cmd_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
