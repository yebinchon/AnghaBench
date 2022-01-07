; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_type = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@INTEGER_CST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ansi = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"[ERROR]\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @gen_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_type(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @TYPE_NAME(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TYPE_NAME(i64 %15)
  %17 = call i32 @TREE_CODE(i64 %16)
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TYPE_NAME(i64 %20)
  %22 = call i64 @DECL_NAME(i64 %21)
  %23 = call i8* @IDENTIFIER_POINTER(i64 %22)
  store i8* %23, i8** @data_type, align 8
  br label %247

24:                                               ; preds = %14, %3
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @TREE_CODE(i64 %25)
  switch i32 %26, label %244 [
    i32 133, label %27
    i32 139, label %63
    i32 136, label %110
    i32 135, label %120
    i32 131, label %123
    i32 129, label %153
    i32 138, label %183
    i32 130, label %217
    i32 134, label %221
    i32 132, label %237
    i32 128, label %242
    i32 137, label %243
  ]

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @TYPE_READONLY(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %32, i8* null)
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TYPE_VOLATILE(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* null)
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* null)
  store i8* %43, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  %46 = call i32 @TREE_CODE(i64 %45)
  %47 = icmp eq i32 %46, 139
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = call i32 @TREE_CODE(i64 %50)
  %52 = icmp eq i32 %51, 136
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %41
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* null)
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @gen_type(i8* %57, i64 %59, i32 %60)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** %4, align 8
  br label %270

63:                                               ; preds = %24
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @COMPLETE_TYPE_P(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @TYPE_SIZE(i64 %68)
  %70 = call i32 @TREE_CODE(i64 %69)
  %71 = load i32, i32* @INTEGER_CST, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67, %63
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @TREE_TYPE(i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @gen_type(i8* %75, i64 %77, i32 %78)
  store i8* %79, i8** %5, align 8
  br label %109

80:                                               ; preds = %67
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @int_size_in_bytes(i64 %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @TREE_TYPE(i64 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i8* @gen_type(i8* %86, i64 %88, i32 %89)
  store i8* %90, i8** %5, align 8
  br label %108

91:                                               ; preds = %80
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @int_size_in_bytes(i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @TREE_TYPE(i64 %94)
  %96 = call i32 @int_size_in_bytes(i64 %95)
  %97 = sdiv i32 %93, %96
  store i32 %97, i32* %9, align 4
  %98 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %103 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %101, i8* %102, i8* null)
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @TREE_TYPE(i64 %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i8* @gen_type(i8* %103, i64 %105, i32 %106)
  store i8* %107, i8** %5, align 8
  br label %108

108:                                              ; preds = %91, %84
  br label %109

109:                                              ; preds = %108, %73
  br label %246

110:                                              ; preds = %24
  %111 = load i8*, i8** %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i8* @gen_formal_list_for_type(i64 %112, i32 %113)
  %115 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %111, i8* %114, i8* null)
  %116 = load i64, i64* %6, align 8
  %117 = call i64 @TREE_TYPE(i64 %116)
  %118 = load i32, i32* %7, align 4
  %119 = call i8* @gen_type(i8* %115, i64 %117, i32 %118)
  store i8* %119, i8** %5, align 8
  br label %246

120:                                              ; preds = %24
  %121 = load i64, i64* %6, align 8
  %122 = call i8* @IDENTIFIER_POINTER(i64 %121)
  store i8* %122, i8** @data_type, align 8
  br label %246

123:                                              ; preds = %24
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @TYPE_NAME(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @TYPE_NAME(i64 %128)
  %130 = call i8* @IDENTIFIER_POINTER(i64 %129)
  store i8* %130, i8** @data_type, align 8
  br label %150

131:                                              ; preds = %123
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @data_type, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i64 @TYPE_FIELDS(i64 %132)
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %137, %131
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i8*, i8** @data_type, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i32, i32* @ansi, align 4
  %141 = call i8* @gen_decl(i64 %139, i32 0, i32 %140)
  %142 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %138, i8* %141, i8* null)
  store i8* %142, i8** @data_type, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @TREE_CHAIN(i64 %143)
  store i64 %144, i64* %8, align 8
  %145 = load i8*, i8** @data_type, align 8
  %146 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* null)
  store i8* %146, i8** @data_type, align 8
  br label %134

147:                                              ; preds = %134
  %148 = load i8*, i8** @data_type, align 8
  %149 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* null)
  store i8* %149, i8** @data_type, align 8
  br label %150

150:                                              ; preds = %147, %127
  %151 = load i8*, i8** @data_type, align 8
  %152 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %151, i8* null)
  store i8* %152, i8** @data_type, align 8
  br label %246

153:                                              ; preds = %24
  %154 = load i64, i64* %6, align 8
  %155 = call i64 @TYPE_NAME(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64, i64* %6, align 8
  %159 = call i64 @TYPE_NAME(i64 %158)
  %160 = call i8* @IDENTIFIER_POINTER(i64 %159)
  store i8* %160, i8** @data_type, align 8
  br label %180

161:                                              ; preds = %153
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @data_type, align 8
  %162 = load i64, i64* %6, align 8
  %163 = call i64 @TYPE_FIELDS(i64 %162)
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %167, %161
  %165 = load i64, i64* %8, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i8*, i8** @data_type, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i32, i32* @ansi, align 4
  %171 = call i8* @gen_decl(i64 %169, i32 0, i32 %170)
  %172 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %168, i8* %171, i8* null)
  store i8* %172, i8** @data_type, align 8
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @TREE_CHAIN(i64 %173)
  store i64 %174, i64* %8, align 8
  %175 = load i8*, i8** @data_type, align 8
  %176 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* null)
  store i8* %176, i8** @data_type, align 8
  br label %164

177:                                              ; preds = %164
  %178 = load i8*, i8** @data_type, align 8
  %179 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* null)
  store i8* %179, i8** @data_type, align 8
  br label %180

180:                                              ; preds = %177, %157
  %181 = load i8*, i8** @data_type, align 8
  %182 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %181, i8* null)
  store i8* %182, i8** @data_type, align 8
  br label %246

183:                                              ; preds = %24
  %184 = load i64, i64* %6, align 8
  %185 = call i64 @TYPE_NAME(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i64, i64* %6, align 8
  %189 = call i64 @TYPE_NAME(i64 %188)
  %190 = call i8* @IDENTIFIER_POINTER(i64 %189)
  store i8* %190, i8** @data_type, align 8
  br label %214

191:                                              ; preds = %183
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @data_type, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i64 @TYPE_VALUES(i64 %192)
  store i64 %193, i64* %8, align 8
  br label %194

194:                                              ; preds = %210, %191
  %195 = load i64, i64* %8, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %194
  %198 = load i8*, i8** @data_type, align 8
  %199 = load i64, i64* %8, align 8
  %200 = call i64 @TREE_PURPOSE(i64 %199)
  %201 = call i8* @IDENTIFIER_POINTER(i64 %200)
  %202 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %198, i8* %201, i8* null)
  store i8* %202, i8** @data_type, align 8
  %203 = load i64, i64* %8, align 8
  %204 = call i64 @TREE_CHAIN(i64 %203)
  store i64 %204, i64* %8, align 8
  %205 = load i64, i64* %8, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load i8*, i8** @data_type, align 8
  %209 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* null)
  store i8* %209, i8** @data_type, align 8
  br label %210

210:                                              ; preds = %207, %197
  br label %194

211:                                              ; preds = %194
  %212 = load i8*, i8** @data_type, align 8
  %213 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* null)
  store i8* %213, i8** @data_type, align 8
  br label %214

214:                                              ; preds = %211, %187
  %215 = load i8*, i8** @data_type, align 8
  %216 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %215, i8* null)
  store i8* %216, i8** @data_type, align 8
  br label %246

217:                                              ; preds = %24
  %218 = load i64, i64* %6, align 8
  %219 = call i64 @DECL_NAME(i64 %218)
  %220 = call i8* @IDENTIFIER_POINTER(i64 %219)
  store i8* %220, i8** @data_type, align 8
  br label %246

221:                                              ; preds = %24
  %222 = load i64, i64* %6, align 8
  %223 = call i64 @TYPE_NAME(i64 %222)
  %224 = call i64 @DECL_NAME(i64 %223)
  %225 = call i8* @IDENTIFIER_POINTER(i64 %224)
  store i8* %225, i8** @data_type, align 8
  %226 = load i64, i64* %6, align 8
  %227 = call i32 @TYPE_UNSIGNED(i64 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %221
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @TYPE_QUALS(i64 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i8*, i8** @data_type, align 8
  %235 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %234, i8* null)
  store i8* %235, i8** @data_type, align 8
  br label %236

236:                                              ; preds = %233, %229, %221
  br label %246

237:                                              ; preds = %24
  %238 = load i64, i64* %6, align 8
  %239 = call i64 @TYPE_NAME(i64 %238)
  %240 = call i64 @DECL_NAME(i64 %239)
  %241 = call i8* @IDENTIFIER_POINTER(i64 %240)
  store i8* %241, i8** @data_type, align 8
  br label %246

242:                                              ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** @data_type, align 8
  br label %246

243:                                              ; preds = %24
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** @data_type, align 8
  br label %246

244:                                              ; preds = %24
  %245 = call i32 (...) @gcc_unreachable()
  br label %246

246:                                              ; preds = %244, %243, %242, %237, %236, %217, %214, %180, %150, %120, %110, %109
  br label %247

247:                                              ; preds = %246, %19
  %248 = load i64, i64* %6, align 8
  %249 = call i64 @TYPE_READONLY(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i8*, i8** %5, align 8
  %253 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %252, i8* null)
  store i8* %253, i8** %5, align 8
  br label %254

254:                                              ; preds = %251, %247
  %255 = load i64, i64* %6, align 8
  %256 = call i64 @TYPE_VOLATILE(i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i8*, i8** %5, align 8
  %260 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %259, i8* null)
  store i8* %260, i8** %5, align 8
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i64, i64* %6, align 8
  %263 = call i64 @TYPE_RESTRICT(i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i8*, i8** %5, align 8
  %267 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %266, i8* null)
  store i8* %267, i8** %5, align 8
  br label %268

268:                                              ; preds = %265, %261
  %269 = load i8*, i8** %5, align 8
  store i8* %269, i8** %4, align 8
  br label %270

270:                                              ; preds = %268, %56
  %271 = load i8*, i8** %4, align 8
  ret i8* %271
}

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TYPE_READONLY(i64) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i64 @TYPE_VOLATILE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @gen_formal_list_for_type(i64, i32) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i8* @gen_decl(i64, i32, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_VALUES(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @TYPE_QUALS(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @TYPE_RESTRICT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
