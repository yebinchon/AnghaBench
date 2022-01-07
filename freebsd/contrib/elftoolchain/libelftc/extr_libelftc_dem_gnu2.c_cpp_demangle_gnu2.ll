; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_cpp_demangle_gnu2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_cpp_demangle_gnu2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::~\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(void)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@CPP_DEMANGLE_GNU2_TRY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpp_demangle_gnu2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.demangle_data, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %234

15:                                               ; preds = %1
  %16 = call i32 @init_demangle_data(%struct.demangle_data* %4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %234

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = call i32 @read_func_name(%struct.demangle_data* %4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %231

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %47 [
    i32 135, label %28
    i32 134, label %28
    i32 133, label %29
    i32 132, label %35
    i32 129, label %46
    i32 131, label %46
    i32 130, label %46
    i32 128, label %46
  ]

28:                                               ; preds = %25, %25
  br label %47

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %31 = call i32 @push_CTDT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, %struct.TYPE_7__* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %231

34:                                               ; preds = %29
  br label %47

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %37 = call i32 @push_CTDT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3, %struct.TYPE_7__* %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %231

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %42 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %231

45:                                               ; preds = %40
  br label %219

46:                                               ; preds = %25, %25, %25, %25
  br label %219

47:                                               ; preds = %25, %34, %28
  %48 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 70
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  br label %75

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %69 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %231

72:                                               ; preds = %67
  br label %219

73:                                               ; preds = %63
  br label %231

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %53
  %76 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %77 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %231

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %212, %114, %97, %80
  %82 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 84
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = call i32 @read_subst(%struct.demangle_data* %4)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %231

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %213

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  br label %81

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 78
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = call i32 @read_subst_iter(%struct.demangle_data* %4)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %231

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %213

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  br label %81

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %5, align 8
  %119 = call i32 @read_type(%struct.demangle_data* %4)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %231

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %128 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %231

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 3
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %131, %122
  %134 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %139 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %231

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %142, %133
  %145 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %150 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %231

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 5
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %153, %144
  %156 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %161 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @vector_str_push(%struct.TYPE_7__* %160, i8* %163, i64 %166)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %231

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 10
  %172 = call i32 @dest_cstring(%struct.TYPE_8__* %171)
  %173 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %155
  %175 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %213

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = sub i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = call i8* @vector_str_substr(%struct.TYPE_7__* %182, i64 %183, i32 %188, i64* %6)
  store i8* %189, i8** %9, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %231

192:                                              ; preds = %181
  %193 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 9
  %194 = load i8*, i8** %9, align 8
  %195 = load i64, i64* %6, align 8
  %196 = call i32 @vector_str_push(%struct.TYPE_7__* %193, i8* %194, i64 %195)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %231

199:                                              ; preds = %192
  %200 = load i8*, i8** %9, align 8
  %201 = call i32 @free(i8* %200)
  %202 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %203 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %231

206:                                              ; preds = %199
  %207 = load i32, i32* %7, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* @CPP_DEMANGLE_GNU2_TRY, align 4
  %210 = icmp ugt i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %231

212:                                              ; preds = %206
  br label %81

213:                                              ; preds = %180, %112, %95
  %214 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %215 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  br label %231

218:                                              ; preds = %213
  br label %219

219:                                              ; preds = %218, %72, %46, %45
  %220 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %225 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %231

228:                                              ; preds = %223, %219
  %229 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %230 = call i8* @vector_str_get_flat(%struct.TYPE_7__* %229, i32* null)
  store i8* %230, i8** %8, align 8
  br label %231

231:                                              ; preds = %228, %227, %217, %211, %205, %198, %191, %169, %152, %141, %130, %121, %108, %91, %79, %73, %71, %44, %39, %33, %24
  %232 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  %233 = load i8*, i8** %8, align 8
  store i8* %233, i8** %2, align 8
  br label %234

234:                                              ; preds = %231, %18, %14
  %235 = load i8*, i8** %2, align 8
  ret i8* %235
}

declare dso_local i32 @init_demangle_data(%struct.demangle_data*) #1

declare dso_local i32 @read_func_name(%struct.demangle_data*) #1

declare dso_local i32 @push_CTDT(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @read_subst(%struct.demangle_data*) #1

declare dso_local i32 @read_subst_iter(%struct.demangle_data*) #1

declare dso_local i32 @read_type(%struct.demangle_data*) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @dest_cstring(%struct.TYPE_8__*) #1

declare dso_local i8* @vector_str_substr(%struct.TYPE_7__*, i64, i32, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vector_str_get_flat(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dest_demangle_data(%struct.demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
