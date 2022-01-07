; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_local_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, %struct.vector_str, %struct.vector_str* }
%struct.vector_str = type { i32 }
%struct.type_delimit = type { i32, i32 }

@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_local_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_local_name(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str, align 4
  %5 = alloca %struct.type_delimit, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %8 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %9 = icmp eq %struct.cpp_demangle_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %163

11:                                               ; preds = %1
  %12 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %13 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %13, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %163

20:                                               ; preds = %11
  %21 = call i32 @vector_str_init(%struct.vector_str* %4)
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %23 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %22, i32 0, i32 3
  store %struct.vector_str* %4, %struct.vector_str** %23, align 8
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = call i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @vector_str_dest(%struct.vector_str* %4)
  store i32 0, i32* %2, align 4
  br label %163

29:                                               ; preds = %20
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 2
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 3
  store %struct.vector_str* %31, %struct.vector_str** %33, align 8
  %34 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %5, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %5, i32 0, i32 1
  store i32 1, i32* %35, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  %36 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %37 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %42 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %44 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %43, %struct.type_delimit* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 @vector_str_dest(%struct.vector_str* %4)
  store i32 0, i32* %2, align 4
  br label %163

48:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 2
  %52 = call i32 @vector_str_push_vector(%struct.vector_str* %51, %struct.vector_str* %4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 @vector_str_dest(%struct.vector_str* %4)
  store i32 0, i32* %2, align 4
  br label %163

56:                                               ; preds = %49
  %57 = call i32 @vector_str_dest(%struct.vector_str* %4)
  br label %58

58:                                               ; preds = %89, %56
  %59 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %60 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %67 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %66, %struct.type_delimit* %5)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %163

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %76 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 69
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %74
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  %85 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %163

89:                                               ; preds = %82
  br label %58

90:                                               ; preds = %81, %58
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %163

94:                                               ; preds = %90
  %95 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %96 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %163

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %109 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %163

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %5, i32 0, i32 0
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %112, %103
  %115 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %116 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 115
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %123 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %123, align 8
  br label %137

126:                                              ; preds = %114
  %127 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %128 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %163

131:                                              ; preds = %126
  %132 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %133 = call i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %163

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %139 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 95
  br i1 %143, label %144, label %162

144:                                              ; preds = %137
  %145 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %146 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %146, align 8
  br label %149

149:                                              ; preds = %156, %144
  %150 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %151 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @ELFTC_ISDIGIT(i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %158 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %158, align 8
  br label %149

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161, %137
  store i32 1, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %135, %130, %111, %102, %93, %88, %69, %54, %46, %27, %19, %10
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, %struct.type_delimit*) #1

declare dso_local i32 @vector_str_push_vector(%struct.vector_str*, %struct.vector_str*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @cpp_demangle_read_name(%struct.cpp_demangle_data*) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
