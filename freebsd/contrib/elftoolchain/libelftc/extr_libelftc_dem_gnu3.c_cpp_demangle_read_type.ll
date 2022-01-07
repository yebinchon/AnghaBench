; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, %struct.vector_str, i8*, i32, %struct.TYPE_2__, %struct.vector_str* }
%struct.vector_str = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.type_delimit = type { i32, i32 }
%struct.vector_type_qualifier = type { %struct.vector_str }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@TYPE_CMX = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"decltype(auto)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"decimal64\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"decimal128\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"decimal32\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"char32_t\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"decltype(nullptr)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"char16_t\00", align 1
@TYPE_VEC = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@TYPE_IMG = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@TYPE_CST = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@TYPE_RREF = common dso_local global i8* null, align 8
@TYPE_PTR = common dso_local global i8* null, align 8
@TYPE_RST = common dso_local global i8* null, align 8
@TYPE_REF = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@TYPE_EXT = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@TYPE_VAT = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, %struct.type_delimit*)* @cpp_demangle_read_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %0, %struct.type_delimit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca %struct.type_delimit*, align 8
  %6 = alloca %struct.vector_type_qualifier, align 8
  %7 = alloca %struct.vector_str*, align 8
  %8 = alloca %struct.vector_str, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store %struct.type_delimit* %1, %struct.type_delimit** %5, align 8
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %23 = icmp eq %struct.cpp_demangle_data* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %882

25:                                               ; preds = %2
  %26 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %27 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %26, i32 0, i32 6
  %28 = load %struct.vector_str*, %struct.vector_str** %27, align 8
  store %struct.vector_str* %28, %struct.vector_str** %7, align 8
  %29 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %30 = icmp ne %struct.type_delimit* %29, null
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %33 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %38 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %882

41:                                               ; preds = %36
  %42 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %43 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %882

48:                                               ; preds = %41
  %49 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %50 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %31
  %52 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %53 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %58 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 73
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %65 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %882

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %25
  %72 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %73 = icmp ne %struct.vector_str* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = call i32 @vector_type_qualifier_init(%struct.vector_type_qualifier* %6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %882

79:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %80 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %81 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %20, align 4
  br label %83

83:                                               ; preds = %777, %708, %627, %600, %584, %568, %495, %405, %337, %154, %79
  %84 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %85 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 82
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %92 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 79
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %99 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 69
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %106 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %105, i32 0, i32 1
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %97, %90, %83
  %108 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %109 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  switch i32 %112, label %818 [
    i32 97, label %113
    i32 65, label %123
    i32 98, label %129
    i32 67, label %139
    i32 99, label %155
    i32 100, label %165
    i32 68, label %175
    i32 101, label %340
    i32 69, label %350
    i32 102, label %364
    i32 70, label %374
    i32 103, label %380
    i32 71, label %390
    i32 104, label %406
    i32 105, label %416
    i32 73, label %426
    i32 106, label %470
    i32 75, label %480
    i32 108, label %496
    i32 109, label %506
    i32 77, label %516
    i32 110, label %522
    i32 111, label %532
    i32 79, label %542
    i32 80, label %569
    i32 114, label %585
    i32 82, label %601
    i32 115, label %628
    i32 83, label %638
    i32 116, label %644
    i32 84, label %654
    i32 117, label %660
    i32 85, label %670
    i32 118, label %709
    i32 86, label %762
    i32 119, label %778
    i32 120, label %788
    i32 121, label %798
    i32 122, label %808
  ]

113:                                              ; preds = %107
  %114 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %115 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %874

118:                                              ; preds = %113
  %119 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %120 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %120, align 8
  br label %824

123:                                              ; preds = %107
  %124 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %125 = call i32 @cpp_demangle_read_array(%struct.cpp_demangle_data* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %874

128:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  br label %824

129:                                              ; preds = %107
  %130 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %131 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  br label %874

134:                                              ; preds = %129
  %135 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %136 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %136, align 8
  br label %824

139:                                              ; preds = %107
  %140 = load i8*, i8** @TYPE_CMX, align 8
  %141 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %874

144:                                              ; preds = %139
  %145 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %146 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %146, align 8
  %149 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %150 = icmp ne %struct.type_delimit* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %153 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %144
  br label %83

155:                                              ; preds = %107
  %156 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %157 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  br label %874

160:                                              ; preds = %155
  %161 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %162 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  br label %824

165:                                              ; preds = %107
  %166 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %167 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  br label %874

170:                                              ; preds = %165
  %171 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %172 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %172, align 8
  br label %824

175:                                              ; preds = %107
  %176 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %177 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %177, align 8
  %180 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %181 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  switch i32 %184, label %338 [
    i32 97, label %185
    i32 99, label %195
    i32 100, label %205
    i32 101, label %215
    i32 102, label %225
    i32 104, label %235
    i32 105, label %245
    i32 110, label %255
    i32 115, label %265
    i32 118, label %275
  ]

185:                                              ; preds = %175
  %186 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %187 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  br label %874

190:                                              ; preds = %185
  %191 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %192 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %192, align 8
  br label %339

195:                                              ; preds = %175
  %196 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %197 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  br label %874

200:                                              ; preds = %195
  %201 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %202 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %202, align 8
  br label %339

205:                                              ; preds = %175
  %206 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %207 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  br label %874

210:                                              ; preds = %205
  %211 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %212 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %212, align 8
  br label %339

215:                                              ; preds = %175
  %216 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %217 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  br label %874

220:                                              ; preds = %215
  %221 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %222 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %222, align 8
  br label %339

225:                                              ; preds = %175
  %226 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %227 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  br label %874

230:                                              ; preds = %225
  %231 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %232 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %232, align 8
  br label %339

235:                                              ; preds = %175
  %236 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %237 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  br label %874

240:                                              ; preds = %235
  %241 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %242 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %242, align 8
  br label %339

245:                                              ; preds = %175
  %246 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %247 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  br label %874

250:                                              ; preds = %245
  %251 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %252 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %252, align 8
  br label %339

255:                                              ; preds = %175
  %256 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %257 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  br label %874

260:                                              ; preds = %255
  %261 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %262 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %262, align 8
  br label %339

265:                                              ; preds = %175
  %266 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %267 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %265
  br label %874

270:                                              ; preds = %265
  %271 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %272 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %272, align 8
  br label %339

275:                                              ; preds = %175
  %276 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %277 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %277, align 8
  %280 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %281 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 95
  br i1 %285, label %286, label %302

286:                                              ; preds = %275
  %287 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %288 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %288, align 8
  %291 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %292 = call i32 @cpp_demangle_read_expression_flat(%struct.cpp_demangle_data* %291, i8** %17)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %286
  br label %874

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %6, i32 0, i32 0
  %297 = load i8*, i8** %17, align 8
  %298 = call i32 @VEC_PUSH_STR(%struct.vector_str* %296, i8* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %295
  br label %874

301:                                              ; preds = %295
  br label %314

302:                                              ; preds = %275
  %303 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %304 = call i32 @cpp_demangle_read_number_as_string(%struct.cpp_demangle_data* %303, i8** %18)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %302
  br label %874

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %6, i32 0, i32 0
  %309 = load i8*, i8** %18, align 8
  %310 = call i32 @VEC_PUSH_STR(%struct.vector_str* %308, i8* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %307
  br label %874

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313, %301
  %315 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %316 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 95
  br i1 %320, label %321, label %322

321:                                              ; preds = %314
  br label %874

322:                                              ; preds = %314
  %323 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %324 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %324, align 8
  %327 = load i8*, i8** @TYPE_VEC, align 8
  %328 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %322
  br label %874

331:                                              ; preds = %322
  %332 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %333 = icmp ne %struct.type_delimit* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %336 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %335, i32 0, i32 1
  store i32 0, i32* %336, align 4
  br label %337

337:                                              ; preds = %334, %331
  br label %83

338:                                              ; preds = %175
  br label %874

339:                                              ; preds = %270, %260, %250, %240, %230, %220, %210, %200, %190
  br label %824

340:                                              ; preds = %107
  %341 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %342 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %341, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %340
  br label %874

345:                                              ; preds = %340
  %346 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %347 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %347, align 8
  br label %824

350:                                              ; preds = %107
  %351 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %352 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %350
  %356 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %357 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  store i32 1, i32* %20, align 4
  %361 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %362 = call i32 @cpp_demangle_pop_str(%struct.cpp_demangle_data* %361)
  br label %824

363:                                              ; preds = %355, %350
  br label %874

364:                                              ; preds = %107
  %365 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %366 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %364
  br label %874

369:                                              ; preds = %364
  %370 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %371 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %371, align 8
  br label %824

374:                                              ; preds = %107
  %375 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %376 = call i32 @cpp_demangle_read_function(%struct.cpp_demangle_data* %375, i32* %12, %struct.vector_type_qualifier* %6)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  br label %874

379:                                              ; preds = %374
  store i32 0, i32* %13, align 4
  br label %824

380:                                              ; preds = %107
  %381 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %382 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %381, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  br label %874

385:                                              ; preds = %380
  %386 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %387 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %387, align 8
  br label %824

390:                                              ; preds = %107
  %391 = load i8*, i8** @TYPE_IMG, align 8
  %392 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %390
  br label %874

395:                                              ; preds = %390
  %396 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %397 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %397, align 8
  %400 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %401 = icmp ne %struct.type_delimit* %400, null
  br i1 %401, label %402, label %405

402:                                              ; preds = %395
  %403 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %404 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %403, i32 0, i32 1
  store i32 0, i32* %404, align 4
  br label %405

405:                                              ; preds = %402, %395
  br label %83

406:                                              ; preds = %107
  %407 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %408 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %407, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %411, label %410

410:                                              ; preds = %406
  br label %874

411:                                              ; preds = %406
  %412 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %413 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %412, i32 0, i32 0
  %414 = load i8*, i8** %413, align 8
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** %413, align 8
  br label %824

416:                                              ; preds = %107
  %417 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %418 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %417, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %421, label %420

420:                                              ; preds = %416
  br label %874

421:                                              ; preds = %416
  %422 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %423 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %422, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8
  %425 = getelementptr inbounds i8, i8* %424, i32 1
  store i8* %425, i8** %423, align 8
  br label %824

426:                                              ; preds = %107
  %427 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %428 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %9, align 8
  %430 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %431 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %430)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %426
  br label %874

434:                                              ; preds = %426
  %435 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %436 = load i64, i64* %9, align 8
  %437 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %438 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = sub i64 %439, 1
  %441 = trunc i64 %440 to i32
  %442 = call i8* @vector_str_substr(%struct.vector_str* %435, i64 %436, i32 %441, i64* %11)
  store i8* %442, i8** %19, align 8
  %443 = icmp eq i8* %442, null
  br i1 %443, label %444, label %445

444:                                              ; preds = %434
  br label %874

445:                                              ; preds = %434
  %446 = call i32 @vector_str_init(%struct.vector_str* %8)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %451, label %448

448:                                              ; preds = %445
  %449 = load i8*, i8** %19, align 8
  %450 = call i32 @free(i8* %449)
  br label %874

451:                                              ; preds = %445
  %452 = load i8*, i8** %19, align 8
  %453 = load i64, i64* %11, align 8
  %454 = call i32 @vector_str_push(%struct.vector_str* %8, i8* %452, i64 %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %460, label %456

456:                                              ; preds = %451
  %457 = load i8*, i8** %19, align 8
  %458 = call i32 @free(i8* %457)
  %459 = call i32 @vector_str_dest(%struct.vector_str* %8)
  br label %874

460:                                              ; preds = %451
  %461 = load i8*, i8** %19, align 8
  %462 = call i32 @free(i8* %461)
  %463 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %464 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %463, %struct.vector_str* %8)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %460
  %467 = call i32 @vector_str_dest(%struct.vector_str* %8)
  br label %874

468:                                              ; preds = %460
  %469 = call i32 @vector_str_dest(%struct.vector_str* %8)
  br label %824

470:                                              ; preds = %107
  %471 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %472 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %471, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %475, label %474

474:                                              ; preds = %470
  br label %874

475:                                              ; preds = %470
  %476 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %477 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %476, i32 0, i32 0
  %478 = load i8*, i8** %477, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %477, align 8
  br label %824

480:                                              ; preds = %107
  %481 = load i8*, i8** @TYPE_CST, align 8
  %482 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %480
  br label %874

485:                                              ; preds = %480
  %486 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %487 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %486, i32 0, i32 0
  %488 = load i8*, i8** %487, align 8
  %489 = getelementptr inbounds i8, i8* %488, i32 1
  store i8* %489, i8** %487, align 8
  %490 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %491 = icmp ne %struct.type_delimit* %490, null
  br i1 %491, label %492, label %495

492:                                              ; preds = %485
  %493 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %494 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %493, i32 0, i32 1
  store i32 0, i32* %494, align 4
  br label %495

495:                                              ; preds = %492, %485
  br label %83

496:                                              ; preds = %107
  %497 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %498 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %497, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %496
  br label %874

501:                                              ; preds = %496
  %502 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %503 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %502, i32 0, i32 0
  %504 = load i8*, i8** %503, align 8
  %505 = getelementptr inbounds i8, i8* %504, i32 1
  store i8* %505, i8** %503, align 8
  br label %824

506:                                              ; preds = %107
  %507 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %508 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %507, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %506
  br label %874

511:                                              ; preds = %506
  %512 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %513 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %512, i32 0, i32 0
  %514 = load i8*, i8** %513, align 8
  %515 = getelementptr inbounds i8, i8* %514, i32 1
  store i8* %515, i8** %513, align 8
  br label %824

516:                                              ; preds = %107
  %517 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %518 = call i32 @cpp_demangle_read_pointer_to_member(%struct.cpp_demangle_data* %517, %struct.vector_type_qualifier* %6)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %521, label %520

520:                                              ; preds = %516
  br label %874

521:                                              ; preds = %516
  store i32 0, i32* %13, align 4
  br label %824

522:                                              ; preds = %107
  %523 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %524 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %523, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %522
  br label %874

527:                                              ; preds = %522
  %528 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %529 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %528, i32 0, i32 0
  %530 = load i8*, i8** %529, align 8
  %531 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %531, i8** %529, align 8
  br label %824

532:                                              ; preds = %107
  %533 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %534 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %533, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %537, label %536

536:                                              ; preds = %532
  br label %874

537:                                              ; preds = %532
  %538 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %539 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %538, i32 0, i32 0
  %540 = load i8*, i8** %539, align 8
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %539, align 8
  br label %824

542:                                              ; preds = %107
  %543 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %544 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 8
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %548

547:                                              ; preds = %542
  br label %874

548:                                              ; preds = %542
  %549 = load i8*, i8** @TYPE_RREF, align 8
  %550 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %549)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %553, label %552

552:                                              ; preds = %548
  br label %874

553:                                              ; preds = %548
  %554 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %555 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %554, i32 0, i32 1
  store i32 1, i32* %555, align 8
  %556 = load i8*, i8** @TYPE_RREF, align 8
  %557 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %558 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %557, i32 0, i32 3
  store i8* %556, i8** %558, align 8
  %559 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %560 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %559, i32 0, i32 0
  %561 = load i8*, i8** %560, align 8
  %562 = getelementptr inbounds i8, i8* %561, i32 1
  store i8* %562, i8** %560, align 8
  %563 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %564 = icmp ne %struct.type_delimit* %563, null
  br i1 %564, label %565, label %568

565:                                              ; preds = %553
  %566 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %567 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %566, i32 0, i32 1
  store i32 0, i32* %567, align 4
  br label %568

568:                                              ; preds = %565, %553
  br label %83

569:                                              ; preds = %107
  %570 = load i8*, i8** @TYPE_PTR, align 8
  %571 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %574, label %573

573:                                              ; preds = %569
  br label %874

574:                                              ; preds = %569
  %575 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %576 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %575, i32 0, i32 0
  %577 = load i8*, i8** %576, align 8
  %578 = getelementptr inbounds i8, i8* %577, i32 1
  store i8* %578, i8** %576, align 8
  %579 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %580 = icmp ne %struct.type_delimit* %579, null
  br i1 %580, label %581, label %584

581:                                              ; preds = %574
  %582 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %583 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %582, i32 0, i32 1
  store i32 0, i32* %583, align 4
  br label %584

584:                                              ; preds = %581, %574
  br label %83

585:                                              ; preds = %107
  %586 = load i8*, i8** @TYPE_RST, align 8
  %587 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %586)
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %590, label %589

589:                                              ; preds = %585
  br label %874

590:                                              ; preds = %585
  %591 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %592 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %591, i32 0, i32 0
  %593 = load i8*, i8** %592, align 8
  %594 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %594, i8** %592, align 8
  %595 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %596 = icmp ne %struct.type_delimit* %595, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %590
  %598 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %599 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %598, i32 0, i32 1
  store i32 0, i32* %599, align 4
  br label %600

600:                                              ; preds = %597, %590
  br label %83

601:                                              ; preds = %107
  %602 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %603 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 8
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %601
  br label %874

607:                                              ; preds = %601
  %608 = load i8*, i8** @TYPE_REF, align 8
  %609 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %608)
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %612, label %611

611:                                              ; preds = %607
  br label %874

612:                                              ; preds = %607
  %613 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %614 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %613, i32 0, i32 1
  store i32 1, i32* %614, align 8
  %615 = load i8*, i8** @TYPE_REF, align 8
  %616 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %617 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %616, i32 0, i32 3
  store i8* %615, i8** %617, align 8
  %618 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %619 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %618, i32 0, i32 0
  %620 = load i8*, i8** %619, align 8
  %621 = getelementptr inbounds i8, i8* %620, i32 1
  store i8* %621, i8** %619, align 8
  %622 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %623 = icmp ne %struct.type_delimit* %622, null
  br i1 %623, label %624, label %627

624:                                              ; preds = %612
  %625 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %626 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %625, i32 0, i32 1
  store i32 0, i32* %626, align 4
  br label %627

627:                                              ; preds = %624, %612
  br label %83

628:                                              ; preds = %107
  %629 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %630 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %629, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %628
  br label %874

633:                                              ; preds = %628
  %634 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %635 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %634, i32 0, i32 0
  %636 = load i8*, i8** %635, align 8
  %637 = getelementptr inbounds i8, i8* %636, i32 1
  store i8* %637, i8** %635, align 8
  br label %824

638:                                              ; preds = %107
  %639 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %640 = call i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data* %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %643, label %642

642:                                              ; preds = %638
  br label %874

643:                                              ; preds = %638
  store i32 0, i32* %13, align 4
  br label %824

644:                                              ; preds = %107
  %645 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %646 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %645, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %649, label %648

648:                                              ; preds = %644
  br label %874

649:                                              ; preds = %644
  %650 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %651 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %650, i32 0, i32 0
  %652 = load i8*, i8** %651, align 8
  %653 = getelementptr inbounds i8, i8* %652, i32 1
  store i8* %653, i8** %651, align 8
  br label %824

654:                                              ; preds = %107
  %655 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %656 = call i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data* %655)
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %659, label %658

658:                                              ; preds = %654
  br label %874

659:                                              ; preds = %654
  store i32 0, i32* %13, align 4
  br label %824

660:                                              ; preds = %107
  %661 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %662 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %661, i32 0, i32 0
  %663 = load i8*, i8** %662, align 8
  %664 = getelementptr inbounds i8, i8* %663, i32 1
  store i8* %664, i8** %662, align 8
  %665 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %666 = call i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data* %665)
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %669, label %668

668:                                              ; preds = %660
  br label %874

669:                                              ; preds = %660
  store i32 0, i32* %13, align 4
  br label %824

670:                                              ; preds = %107
  %671 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %672 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %671, i32 0, i32 0
  %673 = load i8*, i8** %672, align 8
  %674 = getelementptr inbounds i8, i8* %673, i32 1
  store i8* %674, i8** %672, align 8
  %675 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %676 = call i32 @cpp_demangle_read_number(%struct.cpp_demangle_data* %675, i64* %14)
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %679, label %678

678:                                              ; preds = %670
  br label %874

679:                                              ; preds = %670
  %680 = load i64, i64* %14, align 8
  %681 = icmp sle i64 %680, 0
  br i1 %681, label %682, label %683

682:                                              ; preds = %679
  br label %874

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %6, i32 0, i32 0
  %685 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %686 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %685, i32 0, i32 0
  %687 = load i8*, i8** %686, align 8
  %688 = load i64, i64* %14, align 8
  %689 = call i32 @vector_str_push(%struct.vector_str* %684, i8* %687, i64 %688)
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %692, label %691

691:                                              ; preds = %683
  store i32 0, i32* %3, align 4
  br label %882

692:                                              ; preds = %683
  %693 = load i64, i64* %14, align 8
  %694 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %695 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %694, i32 0, i32 0
  %696 = load i8*, i8** %695, align 8
  %697 = getelementptr inbounds i8, i8* %696, i64 %693
  store i8* %697, i8** %695, align 8
  %698 = load i8*, i8** @TYPE_EXT, align 8
  %699 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %698)
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %702, label %701

701:                                              ; preds = %692
  br label %874

702:                                              ; preds = %692
  %703 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %704 = icmp ne %struct.type_delimit* %703, null
  br i1 %704, label %705, label %708

705:                                              ; preds = %702
  %706 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %707 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %706, i32 0, i32 1
  store i32 0, i32* %707, align 4
  br label %708

708:                                              ; preds = %705, %702
  br label %83

709:                                              ; preds = %107
  store i32 0, i32* %21, align 4
  %710 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %711 = icmp ne %struct.type_delimit* %710, null
  br i1 %711, label %712, label %749

712:                                              ; preds = %709
  %713 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %714 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %749

717:                                              ; preds = %712
  store i32 1, i32* %21, align 4
  %718 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %719 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %718, i32 0, i32 0
  %720 = load i8*, i8** %719, align 8
  %721 = getelementptr inbounds i8, i8* %720, i64 1
  store i8* %721, i8** %15, align 8
  br label %722

722:                                              ; preds = %745, %717
  %723 = load i8*, i8** %15, align 8
  %724 = load i8, i8* %723, align 1
  %725 = sext i8 %724 to i32
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %748

727:                                              ; preds = %722
  %728 = load i8*, i8** %15, align 8
  %729 = load i8, i8* %728, align 1
  %730 = sext i8 %729 to i32
  %731 = icmp eq i32 %730, 69
  br i1 %731, label %732, label %733

732:                                              ; preds = %727
  br label %748

733:                                              ; preds = %727
  %734 = load i8*, i8** %15, align 8
  %735 = load i8, i8* %734, align 1
  %736 = sext i8 %735 to i32
  %737 = icmp ne i32 %736, 82
  br i1 %737, label %738, label %744

738:                                              ; preds = %733
  %739 = load i8*, i8** %15, align 8
  %740 = load i8, i8* %739, align 1
  %741 = sext i8 %740 to i32
  %742 = icmp ne i32 %741, 79
  br i1 %742, label %743, label %744

743:                                              ; preds = %738
  store i32 0, i32* %21, align 4
  br label %748

744:                                              ; preds = %738, %733
  br label %745

745:                                              ; preds = %744
  %746 = load i8*, i8** %15, align 8
  %747 = getelementptr inbounds i8, i8* %746, i32 1
  store i8* %747, i8** %15, align 8
  br label %722

748:                                              ; preds = %743, %732, %722
  br label %749

749:                                              ; preds = %748, %712, %709
  %750 = load i32, i32* %21, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %757, label %752

752:                                              ; preds = %749
  %753 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %754 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %753, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %757, label %756

756:                                              ; preds = %752
  br label %874

757:                                              ; preds = %752, %749
  %758 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %759 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %758, i32 0, i32 0
  %760 = load i8*, i8** %759, align 8
  %761 = getelementptr inbounds i8, i8* %760, i32 1
  store i8* %761, i8** %759, align 8
  br label %824

762:                                              ; preds = %107
  %763 = load i8*, i8** @TYPE_VAT, align 8
  %764 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i8* %763)
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %767, label %766

766:                                              ; preds = %762
  br label %874

767:                                              ; preds = %762
  %768 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %769 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %768, i32 0, i32 0
  %770 = load i8*, i8** %769, align 8
  %771 = getelementptr inbounds i8, i8* %770, i32 1
  store i8* %771, i8** %769, align 8
  %772 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %773 = icmp ne %struct.type_delimit* %772, null
  br i1 %773, label %774, label %777

774:                                              ; preds = %767
  %775 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %776 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %775, i32 0, i32 1
  store i32 0, i32* %776, align 4
  br label %777

777:                                              ; preds = %774, %767
  br label %83

778:                                              ; preds = %107
  %779 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %780 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %779, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %781 = icmp ne i32 %780, 0
  br i1 %781, label %783, label %782

782:                                              ; preds = %778
  br label %874

783:                                              ; preds = %778
  %784 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %785 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %784, i32 0, i32 0
  %786 = load i8*, i8** %785, align 8
  %787 = getelementptr inbounds i8, i8* %786, i32 1
  store i8* %787, i8** %785, align 8
  br label %824

788:                                              ; preds = %107
  %789 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %790 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %789, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %793, label %792

792:                                              ; preds = %788
  br label %874

793:                                              ; preds = %788
  %794 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %795 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %794, i32 0, i32 0
  %796 = load i8*, i8** %795, align 8
  %797 = getelementptr inbounds i8, i8* %796, i32 1
  store i8* %797, i8** %795, align 8
  br label %824

798:                                              ; preds = %107
  %799 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %800 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %799, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %803, label %802

802:                                              ; preds = %798
  br label %874

803:                                              ; preds = %798
  %804 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %805 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %804, i32 0, i32 0
  %806 = load i8*, i8** %805, align 8
  %807 = getelementptr inbounds i8, i8* %806, i32 1
  store i8* %807, i8** %805, align 8
  br label %824

808:                                              ; preds = %107
  %809 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %810 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %809, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %813, label %812

812:                                              ; preds = %808
  br label %874

813:                                              ; preds = %808
  %814 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %815 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %814, i32 0, i32 0
  %816 = load i8*, i8** %815, align 8
  %817 = getelementptr inbounds i8, i8* %816, i32 1
  store i8* %817, i8** %815, align 8
  br label %824

818:                                              ; preds = %107
  %819 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %820 = call i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %819)
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %823, label %822

822:                                              ; preds = %818
  br label %874

823:                                              ; preds = %818
  store i32 0, i32* %13, align 4
  br label %824

824:                                              ; preds = %823, %813, %803, %793, %783, %757, %669, %659, %649, %643, %633, %537, %527, %521, %511, %501, %475, %468, %421, %411, %385, %379, %369, %360, %345, %339, %170, %160, %134, %128, %118
  %825 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %826 = load i64, i64* %9, align 8
  %827 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %828 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %827, i32 0, i32 0
  %829 = load i64, i64* %828, align 8
  %830 = sub i64 %829, 1
  %831 = trunc i64 %830 to i32
  %832 = call i8* @vector_str_substr(%struct.vector_str* %825, i64 %826, i32 %831, i64* %10)
  store i8* %832, i8** %16, align 8
  %833 = load i32, i32* %13, align 4
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %851

835:                                              ; preds = %824
  %836 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %837 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %836, i32 0, i32 2
  %838 = load i8*, i8** %16, align 8
  %839 = load i64, i64* %10, align 8
  %840 = call i32 @vector_str_find(%struct.vector_str* %837, i8* %838, i64 %839)
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %850, label %842

842:                                              ; preds = %835
  %843 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %844 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %843, i32 0, i32 2
  %845 = load i8*, i8** %16, align 8
  %846 = load i64, i64* %10, align 8
  %847 = call i32 @vector_str_push(%struct.vector_str* %844, i8* %845, i64 %846)
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %850, label %849

849:                                              ; preds = %842
  br label %874

850:                                              ; preds = %842, %835
  br label %851

851:                                              ; preds = %850, %824
  %852 = load i32, i32* %20, align 4
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %860, label %854

854:                                              ; preds = %851
  %855 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %856 = load i8*, i8** %16, align 8
  %857 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %855, %struct.vector_type_qualifier* %6, i8* %856)
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %860, label %859

859:                                              ; preds = %854
  br label %874

860:                                              ; preds = %854, %851
  %861 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %862 = icmp ne %struct.type_delimit* %861, null
  br i1 %862, label %863, label %866

863:                                              ; preds = %860
  %864 = load %struct.type_delimit*, %struct.type_delimit** %5, align 8
  %865 = getelementptr inbounds %struct.type_delimit, %struct.type_delimit* %864, i32 0, i32 1
  store i32 0, i32* %865, align 4
  br label %866

866:                                              ; preds = %863, %860
  %867 = load i8*, i8** %16, align 8
  %868 = call i32 @free(i8* %867)
  %869 = load i8*, i8** %17, align 8
  %870 = call i32 @free(i8* %869)
  %871 = load i8*, i8** %18, align 8
  %872 = call i32 @free(i8* %871)
  %873 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %6)
  store i32 1, i32* %3, align 4
  br label %882

874:                                              ; preds = %859, %849, %822, %812, %802, %792, %782, %766, %756, %701, %682, %678, %668, %658, %648, %642, %632, %611, %606, %589, %573, %552, %547, %536, %526, %520, %510, %500, %484, %474, %466, %456, %448, %444, %433, %420, %410, %394, %384, %378, %368, %363, %344, %338, %330, %321, %312, %306, %300, %294, %269, %259, %249, %239, %229, %219, %209, %199, %189, %169, %159, %143, %133, %127, %117
  %875 = load i8*, i8** %16, align 8
  %876 = call i32 @free(i8* %875)
  %877 = load i8*, i8** %17, align 8
  %878 = call i32 @free(i8* %877)
  %879 = load i8*, i8** %18, align 8
  %880 = call i32 @free(i8* %879)
  %881 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %6)
  store i32 0, i32* %3, align 4
  br label %882

882:                                              ; preds = %874, %866, %691, %78, %67, %47, %40, %24
  %883 = load i32, i32* %3, align 4
  ret i32 %883
}

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vector_type_qualifier_init(%struct.vector_type_qualifier*) #1

declare dso_local i32 @cpp_demangle_read_array(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_type_qualifier_push(%struct.vector_type_qualifier*, i8*) #1

declare dso_local i32 @cpp_demangle_read_expression_flat(%struct.cpp_demangle_data*, i8**) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.vector_str*, i8*) #1

declare dso_local i32 @cpp_demangle_read_number_as_string(%struct.cpp_demangle_data*, i8**) #1

declare dso_local i32 @cpp_demangle_pop_str(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_function(%struct.cpp_demangle_data*, i32*, %struct.vector_type_qualifier*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i64) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_pointer_to_member(%struct.cpp_demangle_data*, %struct.vector_type_qualifier*) #1

declare dso_local i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_number(%struct.cpp_demangle_data*, i64*) #1

declare dso_local i32 @cpp_demangle_read_name(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_find(%struct.vector_str*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data*, %struct.vector_type_qualifier*, i8*) #1

declare dso_local i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
