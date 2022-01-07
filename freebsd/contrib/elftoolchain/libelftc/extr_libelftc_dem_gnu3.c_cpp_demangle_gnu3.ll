; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_gnu3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_gnu3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, %struct.vector_str, i64, i64, i64, i64, i64, %struct.vector_str*, %struct.TYPE_2__ }
%struct.vector_str = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.type_delimit = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"_GLOBAL__I_\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"global constructors keyed to %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" &&\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpp_demangle_gnu3(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpp_demangle_data, align 8
  %5 = alloca %struct.vector_str, align 8
  %6 = alloca %struct.type_delimit, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  store i8* null, i8** %2, align 8
  br label %230

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 11
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 19
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %230

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 19
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 11
  %38 = call i32 @snprintf(i8* %33, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %2, align 8
  br label %230

40:                                               ; preds = %22, %19
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 95
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 90
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  store i8* null, i8** %2, align 8
  br label %230

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i32 @cpp_demangle_data_init(%struct.cpp_demangle_data* %4, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i8* null, i8** %2, align 8
  br label %230

59:                                               ; preds = %53
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %60 = call i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data* %4)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %222

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 9
  %76 = call i32 @vector_str_pop(%struct.TYPE_2__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %222

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %69, %63
  %81 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %6, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %6, i32 0, i32 1
  store i32 1, i32* %82, align 4
  store i32 0, i32* %8, align 4
  %83 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  store i32 0, i32* %87, align 8
  %88 = call i32 @vector_str_init(%struct.vector_str* %5)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %222

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 8
  store %struct.vector_str* %5, %struct.vector_str** %92, align 8
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %80
  br label %94

94:                                               ; preds = %154, %93
  %95 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %155

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 64
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %155

114:                                              ; preds = %106, %100
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %4, %struct.type_delimit* null)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  br label %222

121:                                              ; preds = %117
  br label %127

122:                                              ; preds = %114
  %123 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %4, %struct.type_delimit* %6)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %222

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %121
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = call i32 @VEC_PUSH_STR(%struct.vector_str* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  br label %222

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %136 = call i32 @vector_str_push_vector_head(%struct.vector_str* %135, %struct.vector_str* %5)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  br label %222

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %141 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 8
  store %struct.vector_str* %140, %struct.vector_str** %141, align 8
  %142 = call i32 @vector_str_dest(%struct.vector_str* %5)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %148

143:                                              ; preds = %127
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %146, %143
  br label %148

148:                                              ; preds = %147, %139
  %149 = load i32, i32* %8, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %152 = icmp ugt i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %222

154:                                              ; preds = %148
  br label %94

155:                                              ; preds = %113, %94
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %222

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %161 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %222

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %6, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %171 = call i32 @VEC_PUSH_STR(%struct.vector_str* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  br label %222

174:                                              ; preds = %169, %165
  %175 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %180 = call i32 @VEC_PUSH_STR(%struct.vector_str* %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  br label %222

183:                                              ; preds = %178, %174
  %184 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %189 = call i32 @VEC_PUSH_STR(%struct.vector_str* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  br label %222

192:                                              ; preds = %187, %183
  %193 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %198 = call i32 @VEC_PUSH_STR(%struct.vector_str* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  br label %222

201:                                              ; preds = %196, %192
  %202 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %207 = call i32 @VEC_PUSH_STR(%struct.vector_str* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  br label %222

210:                                              ; preds = %205, %201
  %211 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %216 = call i32 @VEC_PUSH_STR(%struct.vector_str* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  br label %222

219:                                              ; preds = %214, %210
  %220 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %221 = call i8* @vector_str_get_flat(%struct.vector_str* %220, i64* null)
  store i8* %221, i8** %9, align 8
  br label %222

222:                                              ; preds = %219, %218, %209, %200, %191, %182, %173, %164, %158, %153, %138, %133, %125, %120, %90, %78, %62
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 @vector_str_dest(%struct.vector_str* %5)
  br label %227

227:                                              ; preds = %225, %222
  %228 = call i32 @cpp_demangle_data_dest(%struct.cpp_demangle_data* %4)
  %229 = load i8*, i8** %9, align 8
  store i8* %229, i8** %2, align 8
  br label %230

230:                                              ; preds = %227, %58, %52, %32, %31, %18
  %231 = load i8*, i8** %2, align 8
  ret i8* %231
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @cpp_demangle_data_init(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_2__*) #1

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, %struct.type_delimit*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.vector_str*, i8*) #1

declare dso_local i32 @vector_str_push_vector_head(%struct.vector_str*, %struct.vector_str*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

declare dso_local i8* @vector_str_get_flat(%struct.vector_str*, i64*) #1

declare dso_local i32 @cpp_demangle_data_dest(%struct.cpp_demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
