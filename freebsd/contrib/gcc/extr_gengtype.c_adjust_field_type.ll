; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_adjust_field_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_adjust_field_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i8*, %struct.TYPE_31__, %struct.TYPE_33__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_34__ = type { i8*, i8*, %struct.TYPE_34__* }

@TYPE_POINTER = common dso_local global i64 0, align 8
@NUM_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"param_is\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"_is\00", align 1
@lexer_line = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"option `%s' may only be applied to structures or structure pointers\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"duplicate `%s' option\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tree_exp\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rtx_def\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"unknown special `%s'\00", align 1
@TYPE_SCALAR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@string_type = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@TYPE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @adjust_field_type(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_POINTER, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @NUM_PARAM, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca %struct.TYPE_33__*, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %34, %2
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @NUM_PARAM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %25, i64 %32
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %33, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %26

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %186, %37
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %40 = icmp ne %struct.TYPE_34__* %39, null
  br i1 %40, label %41, label %190

41:                                               ; preds = %38
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %185

48:                                               ; preds = %41
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %153

60:                                               ; preds = %54
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @ISDIGIT(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %153

68:                                               ; preds = %60
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 6
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %153

75:                                               ; preds = %68, %48
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @ISDIGIT(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 5
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 48
  br label %92

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %83
  %93 = phi i32 [ %90, %83 ], [ 0, %91 ]
  store i32 %93, i32* %12, align 4
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %95 = call i32 @UNION_OR_STRUCT_P(%struct.TYPE_33__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TYPE_POINTER, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %106, align 8
  %108 = call i32 @UNION_OR_STRUCT_P(%struct.TYPE_33__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %103, %97
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @error_at_line(i32* @lexer_line, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_33__* %115, %struct.TYPE_33__** %3, align 8
  store i32 1, i32* %13, align 4
  br label %315

116:                                              ; preds = %103, %92
  store i32 1, i32* %10, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %25, i64 %118
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %119, align 8
  %121 = icmp ne %struct.TYPE_33__* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @error_at_line(i32* @lexer_line, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 5
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @ISDIGIT(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %127
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast i8* %138 to %struct.TYPE_33__*
  %140 = call %struct.TYPE_33__* @create_pointer(%struct.TYPE_33__* %139)
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %25, i64 %142
  store %struct.TYPE_33__* %140, %struct.TYPE_33__** %143, align 8
  br label %152

144:                                              ; preds = %127
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = bitcast i8* %147 to %struct.TYPE_33__*
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %25, i64 %150
  store %struct.TYPE_33__* %148, %struct.TYPE_33__** %151, align 8
  br label %152

152:                                              ; preds = %144, %135
  br label %184

153:                                              ; preds = %68, %60, %54
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %153
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %14, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %169 = call %struct.TYPE_33__* @adjust_field_tree_exp(%struct.TYPE_33__* %167, %struct.TYPE_34__* %168)
  store %struct.TYPE_33__* %169, %struct.TYPE_33__** %4, align 8
  br label %182

170:                                              ; preds = %159
  %171 = load i8*, i8** %14, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %176 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %177 = call %struct.TYPE_33__* @adjust_field_rtx_def(%struct.TYPE_33__* %175, %struct.TYPE_34__* %176)
  store %struct.TYPE_33__* %177, %struct.TYPE_33__** %4, align 8
  br label %181

178:                                              ; preds = %170
  %179 = load i8*, i8** %14, align 8
  %180 = call i32 @error_at_line(i32* @lexer_line, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %178, %174
  br label %182

182:                                              ; preds = %181, %166
  br label %183

183:                                              ; preds = %182, %153
  br label %184

184:                                              ; preds = %183, %152
  br label %185

185:                                              ; preds = %184, %47
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %188, align 8
  store %struct.TYPE_34__* %189, %struct.TYPE_34__** %5, align 8
  br label %38

190:                                              ; preds = %38
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %199, align 8
  store %struct.TYPE_33__* %200, %struct.TYPE_33__** %4, align 8
  br label %201

201:                                              ; preds = %196, %193
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %203 = call %struct.TYPE_33__* @find_param_structure(%struct.TYPE_33__* %202, %struct.TYPE_33__** %25)
  store %struct.TYPE_33__* %203, %struct.TYPE_33__** %15, align 8
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %208 = call %struct.TYPE_33__* @create_pointer(%struct.TYPE_33__* %207)
  br label %211

209:                                              ; preds = %201
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi %struct.TYPE_33__* [ %208, %206 ], [ %210, %209 ]
  store %struct.TYPE_33__* %212, %struct.TYPE_33__** %4, align 8
  br label %213

213:                                              ; preds = %211, %190
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %249, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %216
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @TYPE_SCALAR, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %249

228:                                              ; preds = %219
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i64 @strcmp(i8* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %228
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %238, %228
  store %struct.TYPE_33__* @string_type, %struct.TYPE_33__** %3, align 8
  store i32 1, i32* %13, align 4
  br label %315

249:                                              ; preds = %238, %219, %216, %213
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @TYPE_ARRAY, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %313

255:                                              ; preds = %249
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @TYPE_POINTER, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %313

265:                                              ; preds = %255
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @TYPE_SCALAR, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %313

278:                                              ; preds = %265
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i64 @strcmp(i8* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %306, label %292

292:                                              ; preds = %278
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = call i64 @strcmp(i8* %303, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %292, %278
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call %struct.TYPE_33__* @create_array(%struct.TYPE_33__* @string_type, i32 %311)
  store %struct.TYPE_33__* %312, %struct.TYPE_33__** %3, align 8
  store i32 1, i32* %13, align 4
  br label %315

313:                                              ; preds = %292, %265, %255, %249
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_33__* %314, %struct.TYPE_33__** %3, align 8
  store i32 1, i32* %13, align 4
  br label %315

315:                                              ; preds = %313, %306, %248, %110
  %316 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %316)
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  ret %struct.TYPE_33__* %317
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @ISDIGIT(i8 signext) #2

declare dso_local i32 @UNION_OR_STRUCT_P(%struct.TYPE_33__*) #2

declare dso_local i32 @error_at_line(i32*, i8*, i8*) #2

declare dso_local %struct.TYPE_33__* @create_pointer(%struct.TYPE_33__*) #2

declare dso_local %struct.TYPE_33__* @adjust_field_tree_exp(%struct.TYPE_33__*, %struct.TYPE_34__*) #2

declare dso_local %struct.TYPE_33__* @adjust_field_rtx_def(%struct.TYPE_33__*, %struct.TYPE_34__*) #2

declare dso_local %struct.TYPE_33__* @find_param_structure(%struct.TYPE_33__*, %struct.TYPE_33__**) #2

declare dso_local %struct.TYPE_33__* @create_array(%struct.TYPE_33__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
