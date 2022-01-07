; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_pointer_to_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_pointer_to_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vector_type_qualifier = type { i32 }

@READ_PTRMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, %struct.vector_type_qualifier*)* @cpp_demangle_read_pointer_to_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_pointer_to_member(%struct.cpp_demangle_data* %0, %struct.vector_type_qualifier* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca %struct.vector_type_qualifier*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store %struct.vector_type_qualifier* %1, %struct.vector_type_qualifier** %5, align 8
  %13 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %14 = icmp eq %struct.cpp_demangle_data* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %17 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 77
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %24 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %15, %2
  store i32 0, i32* %3, align 4
  br label %147

31:                                               ; preds = %22
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %37 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %147

40:                                               ; preds = %31
  %41 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %42 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %41, i32 0, i32 4
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %45 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i8* @vector_str_substr(%struct.TYPE_4__* %42, i64 %43, i32 %49, i64* %6)
  store i8* %50, i8** %12, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %147

53:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  %54 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %55 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %70, %53
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %65 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %64, i32 0, i32 4
  %66 = call i32 @vector_str_pop(%struct.TYPE_4__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %136

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %59

73:                                               ; preds = %59
  %74 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %75 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %74, i32 0, i32 2
  %76 = load i32, i32* @READ_PTRMEM, align 4
  %77 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %5, align 8
  %78 = call i32 @vector_read_cmd_push(i32* %75, i32 %76, %struct.vector_type_qualifier* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %136

81:                                               ; preds = %73
  %82 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %83 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %82, i32 0, i32 3
  %84 = load i8*, i8** %12, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @vector_str_push(%struct.TYPE_4__* %83, i8* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %129

89:                                               ; preds = %81
  %90 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %91 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %10, align 4
  %93 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %94 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %93, i32* null)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %122

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %100 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %105 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %122

108:                                              ; preds = %103
  %109 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %109, i8* %110, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %122

115:                                              ; preds = %108
  %116 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %117 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  br label %122

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %97
  store i32 1, i32* %11, align 4
  br label %122

122:                                              ; preds = %121, %119, %114, %107, %96
  %123 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %124 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %123, i32 0, i32 3
  %125 = call i32 @vector_str_pop(%struct.TYPE_4__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %122
  br label %129

129:                                              ; preds = %128, %88
  %130 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %131 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %130, i32 0, i32 2
  %132 = call i32 @vector_read_cmd_pop(i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %129
  br label %136

136:                                              ; preds = %135, %80, %68
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %5, align 8
  %140 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %139)
  %141 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %5, align 8
  %142 = call i32 @vector_type_qualifier_init(%struct.vector_type_qualifier* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %147

145:                                              ; preds = %136
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %144, %52, %39, %30
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32*) #1

declare dso_local i8* @vector_str_substr(%struct.TYPE_4__*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_4__*) #1

declare dso_local i32 @vector_read_cmd_push(i32*, i32, %struct.vector_type_qualifier*) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @vector_read_cmd_pop(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier*) #1

declare dso_local i32 @vector_type_qualifier_init(%struct.vector_type_qualifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
