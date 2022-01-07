; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_nested_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_nested_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, i32, i32, i32, i32, %struct.vector_str* }
%struct.vector_str = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_nested_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_nested_name(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca %struct.vector_str, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %11 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %12 = icmp eq %struct.cpp_demangle_data* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %15 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 78
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %199

21:                                               ; preds = %13
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %23 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %199

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %54, %30
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %52 [
    i32 114, label %37
    i32 86, label %40
    i32 75, label %43
    i32 82, label %46
    i32 79, label %49
  ]

37:                                               ; preds = %31
  %38 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %39 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %42 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  br label %53

43:                                               ; preds = %31
  %44 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %45 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %44, i32 0, i32 3
  store i32 1, i32* %45, align 8
  br label %53

46:                                               ; preds = %31
  %47 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %48 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %47, i32 0, i32 4
  store i32 1, i32* %48, align 4
  br label %53

49:                                               ; preds = %31
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 5
  store i32 1, i32* %51, align 8
  br label %53

52:                                               ; preds = %31
  br label %62

53:                                               ; preds = %49, %46, %43, %40, %37
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %56 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %31, label %61

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %52
  %63 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %64 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %63, i32 0, i32 6
  %65 = load %struct.vector_str*, %struct.vector_str** %64, align 8
  store %struct.vector_str* %65, %struct.vector_str** %4, align 8
  %66 = call i32 @vector_str_init(%struct.vector_str* %5)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %199

69:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %190, %69
  %71 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %72 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %7, align 8
  %74 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %75 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %97 [
    i32 73, label %79
    i32 83, label %85
    i32 84, label %91
  ]

79:                                               ; preds = %70
  %80 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %81 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %196

84:                                               ; preds = %79
  br label %103

85:                                               ; preds = %70
  %86 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %87 = call i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %196

90:                                               ; preds = %85
  br label %103

91:                                               ; preds = %70
  %92 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %93 = call i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %196

96:                                               ; preds = %91
  br label %103

97:                                               ; preds = %70
  %98 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %99 = call i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %196

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %96, %90, %84
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %106 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %137

110:                                              ; preds = %103
  %111 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %114 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = call i8* @vector_str_substr(%struct.vector_str* %111, i64 %112, i32 %117, i64* %8)
  store i8* %118, i8** %10, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %196

121:                                              ; preds = %110
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @free(i8* %127)
  br label %196

129:                                              ; preds = %121
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %133 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %132, %struct.vector_str* %5)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %196

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %139 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 69
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %191

145:                                              ; preds = %137
  %146 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %147 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 73
  br i1 %151, label %152, label %182

152:                                              ; preds = %145
  %153 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %154 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 67
  br i1 %158, label %159, label %182

159:                                              ; preds = %152
  %160 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %161 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 68
  br i1 %165, label %166, label %182

166:                                              ; preds = %159
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %169 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %174 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  br label %196

177:                                              ; preds = %172
  %178 = call i32 @VEC_PUSH_STR(%struct.vector_str* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  br label %196

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181, %166, %159, %152, %145
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  %186 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp ugt i64 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %196

190:                                              ; preds = %183
  br label %70

191:                                              ; preds = %144
  %192 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %193 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %193, align 8
  store i32 1, i32* %9, align 4
  br label %196

196:                                              ; preds = %191, %189, %180, %176, %135, %126, %120, %101, %95, %89, %83
  %197 = call i32 @vector_str_dest(%struct.vector_str* %5)
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %196, %68, %29, %20
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.vector_str*, i8*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
