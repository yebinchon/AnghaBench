; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_type_qualifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_push_type_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32 }
%struct.vector_type_qualifier = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32 }
%struct.vector_str = type { i32 }

@PUSH_CV_QUALIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" complex\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" imaginary\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@PUSH_NON_CV_QUALIFIER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" __vector(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, %struct.vector_type_qualifier*, i8*)* @cpp_demangle_push_type_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %0, %struct.vector_type_qualifier* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_demangle_data*, align 8
  %6 = alloca %struct.vector_type_qualifier*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vector_str, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %5, align 8
  store %struct.vector_type_qualifier* %1, %struct.vector_type_qualifier** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %17 = icmp eq %struct.cpp_demangle_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %20 = icmp eq %struct.vector_type_qualifier* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %541

22:                                               ; preds = %18
  %23 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %24 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %541

28:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = call i32 @vector_str_init(%struct.vector_str* %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %541

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %534

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %28
  store i32 1, i32* %15, align 4
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %530, %41
  %43 = load i64, i64* %10, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %533

45:                                               ; preds = %42
  %46 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %47 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %530 [
    i32 133, label %53
    i32 132, label %79
    i32 131, label %105
    i32 137, label %131
    i32 134, label %157
    i32 135, label %183
    i32 130, label %265
    i32 129, label %326
    i32 136, label %387
    i32 128, label %448
  ]

53:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  %54 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %55 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %530

60:                                               ; preds = %53
  %61 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %62 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %534

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %534

72:                                               ; preds = %68
  %73 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %74 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %73, %struct.vector_str* %8)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %534

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %65
  br label %530

79:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  %80 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %81 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %530

86:                                               ; preds = %79
  %87 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %88 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %534

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %534

98:                                               ; preds = %94
  %99 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %100 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %99, %struct.vector_str* %8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %534

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %91
  br label %530

105:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  %106 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %107 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %530

112:                                              ; preds = %105
  %113 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %114 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %534

117:                                              ; preds = %112
  %118 = load i8*, i8** %7, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  br label %534

124:                                              ; preds = %120
  %125 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %126 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %125, %struct.vector_str* %8)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  br label %534

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %117
  br label %530

131:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  %132 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %133 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %530

138:                                              ; preds = %131
  %139 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %140 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  br label %534

143:                                              ; preds = %138
  %144 = load i8*, i8** %7, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %534

150:                                              ; preds = %146
  %151 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %152 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %151, %struct.vector_str* %8)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  br label %534

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %155, %143
  br label %530

157:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  %158 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %159 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %530

164:                                              ; preds = %157
  %165 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %166 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %534

169:                                              ; preds = %164
  %170 = load i8*, i8** %7, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  br label %534

176:                                              ; preds = %172
  %177 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %178 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %177, %struct.vector_str* %8)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  br label %534

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %181, %169
  br label %530

183:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  %184 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %185 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %530

190:                                              ; preds = %183
  %191 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %192 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %190
  %197 = load i64, i64* %11, align 8
  %198 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %199 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = icmp ugt i64 %197, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %196, %190
  br label %534

206:                                              ; preds = %196
  %207 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %208 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i8**, i8*** %209, align 8
  %211 = load i64, i64* %11, align 8
  %212 = getelementptr inbounds i8*, i8** %210, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @strlen(i8* %213)
  store i64 %214, i64* %12, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %206
  br label %534

217:                                              ; preds = %206
  %218 = load i64, i64* %12, align 8
  %219 = add i64 %218, 2
  %220 = call i8* @malloc(i64 %219)
  store i8* %220, i8** %13, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %534

223:                                              ; preds = %217
  %224 = load i8*, i8** %13, align 8
  %225 = load i64, i64* %12, align 8
  %226 = add i64 %225, 2
  %227 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %228 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i8**, i8*** %229, align 8
  %231 = load i64, i64* %11, align 8
  %232 = getelementptr inbounds i8*, i8** %230, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @snprintf(i8* %224, i64 %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %233)
  %235 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %235, i8* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %223
  %240 = load i8*, i8** %13, align 8
  %241 = call i32 @free(i8* %240)
  br label %534

242:                                              ; preds = %223
  %243 = load i8*, i8** %7, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %260

245:                                              ; preds = %242
  %246 = load i8*, i8** %13, align 8
  %247 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 @free(i8* %250)
  br label %534

252:                                              ; preds = %245
  %253 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %254 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %253, %struct.vector_str* %8)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load i8*, i8** %13, align 8
  %258 = call i32 @free(i8* %257)
  br label %534

259:                                              ; preds = %252
  br label %260

260:                                              ; preds = %259, %242
  %261 = load i8*, i8** %13, align 8
  %262 = call i32 @free(i8* %261)
  %263 = load i64, i64* %11, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %11, align 8
  br label %530

265:                                              ; preds = %45
  %266 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %267 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @PUSH_NON_CV_QUALIFIER, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i32, i32* %15, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %530

275:                                              ; preds = %271, %265
  %276 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %277 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load i32, i32* %15, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  br label %530

285:                                              ; preds = %281, %275
  %286 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %287 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %286, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %285
  br label %534

290:                                              ; preds = %285
  %291 = load i8*, i8** %7, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %325

293:                                              ; preds = %290
  %294 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  br label %534

297:                                              ; preds = %293
  %298 = load i64, i64* %10, align 8
  %299 = sub i64 %298, 1
  %300 = icmp ugt i64 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %297
  %302 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %303 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* %10, align 8
  %306 = sub i64 %305, 2
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* %9, align 4
  %310 = icmp eq i32 %309, 130
  br i1 %310, label %317, label %311

311:                                              ; preds = %301
  %312 = load i32, i32* %9, align 4
  %313 = icmp eq i32 %312, 129
  br i1 %313, label %317, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* %9, align 4
  %316 = icmp eq i32 %315, 136
  br i1 %316, label %317, label %318

317:                                              ; preds = %314, %311, %301
  br label %530

318:                                              ; preds = %314
  br label %319

319:                                              ; preds = %318, %297
  %320 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %321 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %320, %struct.vector_str* %8)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %319
  br label %534

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324, %290
  br label %530

326:                                              ; preds = %45
  %327 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %328 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @PUSH_NON_CV_QUALIFIER, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %326
  %333 = load i32, i32* %15, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  br label %530

336:                                              ; preds = %332, %326
  %337 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %338 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %336
  %343 = load i32, i32* %15, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %342
  br label %530

346:                                              ; preds = %342, %336
  %347 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %348 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %347, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %346
  br label %534

351:                                              ; preds = %346
  %352 = load i8*, i8** %7, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %354, label %386

354:                                              ; preds = %351
  %355 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %354
  br label %534

358:                                              ; preds = %354
  %359 = load i64, i64* %10, align 8
  %360 = sub i64 %359, 1
  %361 = icmp ugt i64 %360, 0
  br i1 %361, label %362, label %380

362:                                              ; preds = %358
  %363 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %364 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = load i64, i64* %10, align 8
  %367 = sub i64 %366, 2
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %9, align 4
  %370 = load i32, i32* %9, align 4
  %371 = icmp eq i32 %370, 130
  br i1 %371, label %378, label %372

372:                                              ; preds = %362
  %373 = load i32, i32* %9, align 4
  %374 = icmp eq i32 %373, 129
  br i1 %374, label %378, label %375

375:                                              ; preds = %372
  %376 = load i32, i32* %9, align 4
  %377 = icmp eq i32 %376, 136
  br i1 %377, label %378, label %379

378:                                              ; preds = %375, %372, %362
  br label %530

379:                                              ; preds = %375
  br label %380

380:                                              ; preds = %379, %358
  %381 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %382 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %381, %struct.vector_str* %8)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  br label %534

385:                                              ; preds = %380
  br label %386

386:                                              ; preds = %385, %351
  br label %530

387:                                              ; preds = %45
  %388 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %389 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @PUSH_NON_CV_QUALIFIER, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load i32, i32* %15, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  br label %530

397:                                              ; preds = %393, %387
  %398 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %399 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %407

403:                                              ; preds = %397
  %404 = load i32, i32* %15, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %403
  br label %530

407:                                              ; preds = %403, %397
  %408 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %409 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %407
  br label %534

412:                                              ; preds = %407
  %413 = load i8*, i8** %7, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %447

415:                                              ; preds = %412
  %416 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %415
  br label %534

419:                                              ; preds = %415
  %420 = load i64, i64* %10, align 8
  %421 = sub i64 %420, 1
  %422 = icmp ugt i64 %421, 0
  br i1 %422, label %423, label %441

423:                                              ; preds = %419
  %424 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %425 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = load i64, i64* %10, align 8
  %428 = sub i64 %427, 2
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  store i32 %430, i32* %9, align 4
  %431 = load i32, i32* %9, align 4
  %432 = icmp eq i32 %431, 130
  br i1 %432, label %439, label %433

433:                                              ; preds = %423
  %434 = load i32, i32* %9, align 4
  %435 = icmp eq i32 %434, 129
  br i1 %435, label %439, label %436

436:                                              ; preds = %433
  %437 = load i32, i32* %9, align 4
  %438 = icmp eq i32 %437, 136
  br i1 %438, label %439, label %440

439:                                              ; preds = %436, %433, %423
  br label %530

440:                                              ; preds = %436
  br label %441

441:                                              ; preds = %440, %419
  %442 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %443 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %442, %struct.vector_str* %8)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %441
  br label %534

446:                                              ; preds = %441
  br label %447

447:                                              ; preds = %446, %412
  br label %530

448:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  %449 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %450 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @PUSH_CV_QUALIFIER, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %448
  br label %530

455:                                              ; preds = %448
  %456 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %457 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %470, label %461

461:                                              ; preds = %455
  %462 = load i64, i64* %11, align 8
  %463 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %464 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = sub nsw i32 %466, 1
  %468 = sext i32 %467 to i64
  %469 = icmp ugt i64 %462, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %461, %455
  br label %534

471:                                              ; preds = %461
  %472 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %473 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %473, i32 0, i32 0
  %475 = load i8**, i8*** %474, align 8
  %476 = load i64, i64* %11, align 8
  %477 = getelementptr inbounds i8*, i8** %475, i64 %476
  %478 = load i8*, i8** %477, align 8
  %479 = call i64 @strlen(i8* %478)
  store i64 %479, i64* %12, align 8
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %471
  br label %534

482:                                              ; preds = %471
  %483 = load i64, i64* %12, align 8
  %484 = add i64 %483, 12
  %485 = call i8* @malloc(i64 %484)
  store i8* %485, i8** %13, align 8
  %486 = icmp eq i8* %485, null
  br i1 %486, label %487, label %488

487:                                              ; preds = %482
  br label %534

488:                                              ; preds = %482
  %489 = load i8*, i8** %13, align 8
  %490 = load i64, i64* %12, align 8
  %491 = add i64 %490, 12
  %492 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %493 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %493, i32 0, i32 0
  %495 = load i8**, i8*** %494, align 8
  %496 = load i64, i64* %11, align 8
  %497 = getelementptr inbounds i8*, i8** %495, i64 %496
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 @snprintf(i8* %489, i64 %491, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %498)
  %500 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %501 = load i8*, i8** %13, align 8
  %502 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %500, i8* %501)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %507, label %504

504:                                              ; preds = %488
  %505 = load i8*, i8** %13, align 8
  %506 = call i32 @free(i8* %505)
  br label %534

507:                                              ; preds = %488
  %508 = load i8*, i8** %7, align 8
  %509 = icmp ne i8* %508, null
  br i1 %509, label %510, label %525

510:                                              ; preds = %507
  %511 = load i8*, i8** %13, align 8
  %512 = call i32 @VEC_PUSH_STR(%struct.vector_str* %8, i8* %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %517, label %514

514:                                              ; preds = %510
  %515 = load i8*, i8** %13, align 8
  %516 = call i32 @free(i8* %515)
  br label %534

517:                                              ; preds = %510
  %518 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %519 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %518, %struct.vector_str* %8)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %517
  %522 = load i8*, i8** %13, align 8
  %523 = call i32 @free(i8* %522)
  br label %534

524:                                              ; preds = %517
  br label %525

525:                                              ; preds = %524, %507
  %526 = load i8*, i8** %13, align 8
  %527 = call i32 @free(i8* %526)
  %528 = load i64, i64* %11, align 8
  %529 = add i64 %528, 1
  store i64 %529, i64* %11, align 8
  br label %530

530:                                              ; preds = %45, %525, %454, %447, %439, %406, %396, %386, %378, %345, %335, %325, %317, %284, %274, %260, %189, %182, %163, %156, %137, %130, %111, %104, %85, %78, %59
  %531 = load i64, i64* %10, align 8
  %532 = add i64 %531, -1
  store i64 %532, i64* %10, align 8
  br label %42

533:                                              ; preds = %42
  store i32 1, i32* %14, align 4
  br label %534

534:                                              ; preds = %533, %521, %514, %504, %487, %481, %470, %445, %418, %411, %384, %357, %350, %323, %296, %289, %256, %249, %239, %222, %216, %205, %180, %175, %168, %154, %149, %142, %128, %123, %116, %102, %97, %90, %76, %71, %64, %39
  %535 = load i8*, i8** %7, align 8
  %536 = icmp ne i8* %535, null
  br i1 %536, label %537, label %539

537:                                              ; preds = %534
  %538 = call i32 @vector_str_dest(%struct.vector_str* %8)
  br label %539

539:                                              ; preds = %537, %534
  %540 = load i32, i32* %14, align 4
  store i32 %540, i32* %4, align 4
  br label %541

541:                                              ; preds = %539, %34, %27, %21
  %542 = load i32, i32* %4, align 4
  ret i32 %542
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.vector_str*, i8*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
