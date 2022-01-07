; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { float*, i32, i32, i32, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i8** }
%struct.vector_type_qualifier = type { i64, i64* }
%struct.type_delimit = type { i32, i32 }
%struct.read_cmd_item = type { %struct.vector_type_qualifier* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@TYPE_RST = common dso_local global i64 0, align 8
@TYPE_VAT = common dso_local global i64 0, align 8
@TYPE_CST = common dso_local global i64 0, align 8
@READ_PTRMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PUSH_NON_CV_QUALIFIER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@PUSH_ALL_QUALIFIER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@PUSH_CV_QUALIFIER = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" &&\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i32*, %struct.vector_type_qualifier*)* @cpp_demangle_read_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_function(%struct.cpp_demangle_data* %0, i32* %1, %struct.vector_type_qualifier* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_demangle_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vector_type_qualifier*, align 8
  %8 = alloca %struct.type_delimit, align 4
  %9 = alloca %struct.read_cmd_item*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vector_type_qualifier* %2, %struct.vector_type_qualifier** %7, align 8
  %17 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %18 = icmp eq %struct.cpp_demangle_data* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %21 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = load float, float* %22, align 4
  %24 = fcmp une float %23, 7.000000e+01
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %27 = icmp eq %struct.vector_type_qualifier* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %19, %3
  store i32 0, i32* %4, align 4
  br label %299

29:                                               ; preds = %25
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i32 1
  store float* %33, float** %31, align 8
  %34 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %35 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = load float, float* %36, align 4
  %38 = fcmp oeq float %37, 8.900000e+01
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %46 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %45, i32 0, i32 0
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %46, align 8
  br label %49

49:                                               ; preds = %44, %29
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %51 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %50, %struct.type_delimit* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %299

54:                                               ; preds = %49
  %55 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %56 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %55, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  %58 = load float, float* %57, align 4
  %59 = fcmp une float %58, 6.900000e+01
  br i1 %59, label %60, label %294

60:                                               ; preds = %54
  %61 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %62 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %299

65:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  %66 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %67 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %110, %70
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %75 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %71
  %79 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %80 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TYPE_RST, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %78
  %89 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %90 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TYPE_VAT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %88
  %99 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %100 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TYPE_CST, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 1, i32* %16, align 4
  br label %113

109:                                              ; preds = %98, %88, %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %71

113:                                              ; preds = %108, %71
  br label %114

114:                                              ; preds = %113, %65
  store i32 0, i32* %15, align 4
  %115 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %116 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %115, i32 0, i32 7
  %117 = load i32, i32* @READ_PTRMEM, align 4
  %118 = call %struct.read_cmd_item* @vector_read_cmd_find(i32* %116, i32 %117)
  store %struct.read_cmd_item* %118, %struct.read_cmd_item** %9, align 8
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load %struct.read_cmd_item*, %struct.read_cmd_item** %9, align 8
  %123 = icmp ne %struct.read_cmd_item* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %114
  %125 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %126 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %299

129:                                              ; preds = %124
  store i32 1, i32* %15, align 4
  br label %130

130:                                              ; preds = %129, %121
  %131 = load i8*, i8** @PUSH_NON_CV_QUALIFIER, align 8
  %132 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %133 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %135 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %136 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %134, %struct.vector_type_qualifier* %135, i32* null)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %299

139:                                              ; preds = %130
  %140 = load %struct.read_cmd_item*, %struct.read_cmd_item** %9, align 8
  %141 = icmp ne %struct.read_cmd_item* %140, null
  br i1 %141, label %142, label %202

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %147 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %299

150:                                              ; preds = %145, %142
  %151 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %152 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %10, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %299

157:                                              ; preds = %150
  %158 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %159 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = sub i64 %162, 1
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %13, align 8
  %166 = load i8*, i8** %13, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %299

169:                                              ; preds = %157
  %170 = load i8*, i8** %13, align 8
  %171 = call i64 @strlen(i8* %170)
  store i64 %171, i64* %11, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %299

174:                                              ; preds = %169
  %175 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %175, i8* %176, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %299

181:                                              ; preds = %174
  %182 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %183 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %299

186:                                              ; preds = %181
  %187 = load i8*, i8** @PUSH_ALL_QUALIFIER, align 8
  %188 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %189 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %191 = load %struct.read_cmd_item*, %struct.read_cmd_item** %9, align 8
  %192 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %191, i32 0, i32 0
  %193 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %192, align 8
  %194 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %190, %struct.vector_type_qualifier* %193, i32* null)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %299

197:                                              ; preds = %186
  %198 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %199 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %197, %139
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %207 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  store i32 0, i32* %4, align 4
  br label %299

210:                                              ; preds = %205
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %210, %202
  %212 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %8, i32 0, i32 0
  store i32 0, i32* %212, align 4
  %213 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %8, i32 0, i32 1
  store i32 1, i32* %213, align 4
  store i64 0, i64* %12, align 8
  %214 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %215 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %214, i32 0, i32 1
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %235, %211
  %217 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %218 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %217, %struct.type_delimit* %8)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %299

221:                                              ; preds = %216
  %222 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %223 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %222, i32 0, i32 0
  %224 = load float*, float** %223, align 8
  %225 = load float, float* %224, align 4
  %226 = fcmp oeq float %225, 6.900000e+01
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %236

228:                                              ; preds = %221
  %229 = load i64, i64* %12, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %12, align 8
  %231 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %232 = sext i32 %231 to i64
  %233 = icmp ugt i64 %229, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %299

235:                                              ; preds = %228
  br label %216

236:                                              ; preds = %227
  %237 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %238 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %237, i32 0, i32 1
  store i32 0, i32* %238, align 8
  %239 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %8, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %244 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  store i32 0, i32* %4, align 4
  br label %299

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %8, i32 0, i32 0
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %247, %236
  %250 = load i8*, i8** @PUSH_CV_QUALIFIER, align 8
  %251 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %252 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %254 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %255 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %253, %struct.vector_type_qualifier* %254, i32* null)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %249
  store i32 0, i32* %4, align 4
  br label %299

258:                                              ; preds = %249
  %259 = load i8*, i8** @PUSH_ALL_QUALIFIER, align 8
  %260 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %261 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %260, i32 0, i32 4
  store i8* %259, i8** %261, align 8
  %262 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %263 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %262)
  %264 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %265 = call i32 @vector_type_qualifier_init(%struct.vector_type_qualifier* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %258
  store i32 0, i32* %4, align 4
  br label %299

268:                                              ; preds = %258
  %269 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %270 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %268
  %274 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %275 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  switch i32 %276, label %289 [
    i32 129, label %277
    i32 128, label %283
  ]

277:                                              ; preds = %273
  %278 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %279 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %277
  store i32 0, i32* %4, align 4
  br label %299

282:                                              ; preds = %277
  br label %290

283:                                              ; preds = %273
  %284 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %285 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %299

288:                                              ; preds = %283
  br label %290

289:                                              ; preds = %273
  store i32 0, i32* %4, align 4
  br label %299

290:                                              ; preds = %288, %282
  %291 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %292 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %291, i32 0, i32 2
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %290, %268
  br label %294

294:                                              ; preds = %293, %54
  %295 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %296 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %295, i32 0, i32 0
  %297 = load float*, float** %296, align 8
  %298 = getelementptr inbounds float, float* %297, i32 1
  store float* %298, float** %296, align 8
  store i32 1, i32* %4, align 4
  br label %299

299:                                              ; preds = %294, %289, %287, %281, %267, %257, %246, %234, %220, %209, %196, %185, %180, %173, %168, %156, %149, %138, %128, %64, %53, %28
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, %struct.type_delimit*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local %struct.read_cmd_item* @vector_read_cmd_find(i32*, i32) #1

declare dso_local i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data*, %struct.vector_type_qualifier*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier*) #1

declare dso_local i32 @vector_type_qualifier_init(%struct.vector_type_qualifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
