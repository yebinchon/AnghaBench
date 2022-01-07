; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-exp.c_f_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-exp.c_f_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.symbol* }
%struct.symbol = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i64 }

@lexptr = common dso_local global i8* null, align 8
@prev_lexptr = common dso_local global i8* null, align 8
@boolean_values = common dso_local global %struct.TYPE_12__* null, align 8
@yylval = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BOOLEAN_LITERAL = common dso_local global i32 0, align 4
@dot_ops = common dso_local global %struct.TYPE_18__* null, align 8
@paren_depth = common dso_local global i32 0, align 4
@comma_terminates = common dso_local global i32 0, align 4
@input_radix = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid number \22%s\22.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid character '%c' in expression.\00", align 1
@f77_keywords = common dso_local global %struct.TYPE_17__* null, align 8
@VARIABLE = common dso_local global i32 0, align 4
@expression_context_block = common dso_local global i32 0, align 4
@VAR_DOMAIN = common dso_local global i32 0, align 4
@current_language = common dso_local global %struct.TYPE_19__* null, align 8
@language_cplus = common dso_local global i64 0, align 8
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@TYPENAME = common dso_local global i32 0, align 4
@INT = common dso_local global i32 0, align 4
@NAME_OR_INT = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @yylex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.symbol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__, align 8
  br label %19

19:                                               ; preds = %133, %0
  %20 = load i8*, i8** @lexptr, align 8
  store i8* %20, i8** @prev_lexptr, align 8
  %21 = load i8*, i8** @lexptr, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** @lexptr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %75

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %71, %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boolean_values, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boolean_values, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boolean_values, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strlen(i32* %48)
  %50 = call i64 @strncmp(i8* %36, i32* %42, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %35
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boolean_values, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @strlen(i32* %58)
  %60 = load i8*, i8** @lexptr, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** @lexptr, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boolean_values, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 4), align 4
  %69 = load i32, i32* @BOOLEAN_LITERAL, align 4
  store i32 %69, i32* %1, align 4
  br label %640

70:                                               ; preds = %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %27

74:                                               ; preds = %27
  br label %75

75:                                               ; preds = %74, %19
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %125, %75
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dot_ops, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %128

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dot_ops, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dot_ops, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @strlen(i32* %97)
  %99 = call i64 @strncmp(i8* %85, i32* %91, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %84
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dot_ops, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @strlen(i32* %107)
  %109 = load i8*, i8** @lexptr, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** @lexptr, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dot_ops, align 8
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 3), align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dot_ops, align 8
  %119 = load i32, i32* %4, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %1, align 4
  br label %640

124:                                              ; preds = %84
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %76

128:                                              ; preds = %76
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %2, align 4
  switch i32 %131, label %417 [
    i32 0, label %132
    i32 32, label %133
    i32 9, label %133
    i32 10, label %133
    i32 39, label %136
    i32 40, label %143
    i32 41, label %149
    i32 44, label %159
    i32 46, label %170
    i32 48, label %184
    i32 49, label %184
    i32 50, label %184
    i32 51, label %184
    i32 52, label %184
    i32 53, label %184
    i32 54, label %184
    i32 55, label %184
    i32 56, label %184
    i32 57, label %184
    i32 43, label %412
    i32 45, label %412
    i32 42, label %412
    i32 47, label %412
    i32 37, label %412
    i32 124, label %412
    i32 38, label %412
    i32 94, label %412
    i32 126, label %412
    i32 33, label %412
    i32 64, label %412
    i32 60, label %412
    i32 62, label %412
    i32 91, label %412
    i32 93, label %412
    i32 63, label %412
    i32 58, label %412
    i32 61, label %412
    i32 123, label %412
    i32 125, label %412
  ]

132:                                              ; preds = %128
  store i32 0, i32* %1, align 4
  br label %640

133:                                              ; preds = %128, %128, %128
  %134 = load i8*, i8** @lexptr, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** @lexptr, align 8
  br label %19

136:                                              ; preds = %128
  %137 = call i32 (...) @match_string_literal()
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %1, align 4
  br label %640

142:                                              ; preds = %136
  br label %417

143:                                              ; preds = %128
  %144 = load i32, i32* @paren_depth, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @paren_depth, align 4
  %146 = load i8*, i8** @lexptr, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** @lexptr, align 8
  %148 = load i32, i32* %2, align 4
  store i32 %148, i32* %1, align 4
  br label %640

149:                                              ; preds = %128
  %150 = load i32, i32* @paren_depth, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 0, i32* %1, align 4
  br label %640

153:                                              ; preds = %149
  %154 = load i32, i32* @paren_depth, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* @paren_depth, align 4
  %156 = load i8*, i8** @lexptr, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** @lexptr, align 8
  %158 = load i32, i32* %2, align 4
  store i32 %158, i32* %1, align 4
  br label %640

159:                                              ; preds = %128
  %160 = load i32, i32* @comma_terminates, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @paren_depth, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %1, align 4
  br label %640

166:                                              ; preds = %162, %159
  %167 = load i8*, i8** @lexptr, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** @lexptr, align 8
  %169 = load i32, i32* %2, align 4
  store i32 %169, i32* %1, align 4
  br label %640

170:                                              ; preds = %128
  %171 = load i8*, i8** @lexptr, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp slt i32 %174, 48
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load i8*, i8** @lexptr, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp sgt i32 %180, 57
  br i1 %181, label %182, label %183

182:                                              ; preds = %176, %170
  br label %413

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %183
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %185 = load i8*, i8** %6, align 8
  store i8* %185, i8** %11, align 8
  %186 = load i32, i32* @input_radix, align 4
  %187 = icmp sgt i32 %186, 10
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %2, align 4
  %190 = icmp eq i32 %189, 48
  br i1 %190, label %191, label %206

191:                                              ; preds = %184
  %192 = load i8*, i8** %11, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 120
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %11, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 88
  br i1 %202, label %203, label %206

203:                                              ; preds = %197, %191
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 2
  store i8* %205, i8** %11, align 8
  store i32 1, i32* %12, align 4
  br label %237

206:                                              ; preds = %197, %184
  %207 = load i32, i32* %2, align 4
  %208 = icmp eq i32 %207, 48
  br i1 %208, label %209, label %236

209:                                              ; preds = %206
  %210 = load i8*, i8** %11, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 116
  br i1 %214, label %233, label %215

215:                                              ; preds = %209
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 84
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = load i8*, i8** %11, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 100
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 68
  br i1 %232, label %233, label %236

233:                                              ; preds = %227, %221, %215, %209
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  store i8* %235, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %233, %227, %206
  br label %237

237:                                              ; preds = %236, %203
  br label %238

238:                                              ; preds = %361, %237
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %241
  %245 = load i8*, i8** %11, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 101
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load i8*, i8** %11, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 69
  br i1 %253, label %254, label %255

254:                                              ; preds = %249, %244
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %360

255:                                              ; preds = %249, %241, %238
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %272, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %258
  %262 = load i8*, i8** %11, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 100
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = load i8*, i8** %11, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 68
  br i1 %270, label %271, label %272

271:                                              ; preds = %266, %261
  store i32 1, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %359

272:                                              ; preds = %266, %258, %255
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %275
  %279 = load i8*, i8** %11, align 8
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 46
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  store i32 1, i32* %7, align 4
  br label %358

284:                                              ; preds = %278, %275, %272
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  %288 = load i8*, i8** %11, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 -1
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 101
  br i1 %292, label %314, label %293

293:                                              ; preds = %287
  %294 = load i8*, i8** %11, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 -1
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 69
  br i1 %298, label %314, label %299

299:                                              ; preds = %293, %284
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %325

302:                                              ; preds = %299
  %303 = load i8*, i8** %11, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 -1
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 100
  br i1 %307, label %314, label %308

308:                                              ; preds = %302
  %309 = load i8*, i8** %11, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 -1
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 68
  br i1 %313, label %314, label %325

314:                                              ; preds = %308, %302, %293, %287
  %315 = load i8*, i8** %11, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 45
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load i8*, i8** %11, align 8
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 43
  br i1 %323, label %324, label %325

324:                                              ; preds = %319, %314
  br label %361

325:                                              ; preds = %319, %308, %299
  %326 = load i8*, i8** %11, align 8
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp slt i32 %328, 48
  br i1 %329, label %335, label %330

330:                                              ; preds = %325
  %331 = load i8*, i8** %11, align 8
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp sgt i32 %333, 57
  br i1 %334, label %335, label %356

335:                                              ; preds = %330, %325
  %336 = load i8*, i8** %11, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp slt i32 %338, 97
  br i1 %339, label %345, label %340

340:                                              ; preds = %335
  %341 = load i8*, i8** %11, align 8
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp sgt i32 %343, 122
  br i1 %344, label %345, label %356

345:                                              ; preds = %340, %335
  %346 = load i8*, i8** %11, align 8
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp slt i32 %348, 65
  br i1 %349, label %355, label %350

350:                                              ; preds = %345
  %351 = load i8*, i8** %11, align 8
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp sgt i32 %353, 90
  br i1 %354, label %355, label %356

355:                                              ; preds = %350, %345
  br label %364

356:                                              ; preds = %350, %340, %330
  br label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357, %283
  br label %359

359:                                              ; preds = %358, %271
  br label %360

360:                                              ; preds = %359, %254
  br label %361

361:                                              ; preds = %360, %324
  %362 = load i8*, i8** %11, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %11, align 8
  br label %238

364:                                              ; preds = %355
  %365 = load i8*, i8** %6, align 8
  %366 = load i8*, i8** %11, align 8
  %367 = load i8*, i8** %6, align 8
  %368 = ptrtoint i8* %366 to i64
  %369 = ptrtoint i8* %367 to i64
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = load i32, i32* %7, align 4
  %373 = load i32, i32* %8, align 4
  %374 = or i32 %372, %373
  %375 = load i32, i32* %9, align 4
  %376 = or i32 %374, %375
  %377 = call i32 @parse_number(i8* %365, i32 %371, i32 %376, %struct.TYPE_15__* @yylval)
  store i32 %377, i32* %10, align 4
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* @ERROR, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %409

381:                                              ; preds = %364
  %382 = load i8*, i8** %11, align 8
  %383 = load i8*, i8** %6, align 8
  %384 = ptrtoint i8* %382 to i64
  %385 = ptrtoint i8* %383 to i64
  %386 = sub i64 %384, %385
  %387 = add nsw i64 %386, 1
  %388 = trunc i64 %387 to i32
  %389 = call i64 @alloca(i32 %388)
  %390 = inttoptr i64 %389 to i8*
  store i8* %390, i8** %13, align 8
  %391 = load i8*, i8** %13, align 8
  %392 = load i8*, i8** %6, align 8
  %393 = load i8*, i8** %11, align 8
  %394 = load i8*, i8** %6, align 8
  %395 = ptrtoint i8* %393 to i64
  %396 = ptrtoint i8* %394 to i64
  %397 = sub i64 %395, %396
  %398 = trunc i64 %397 to i32
  %399 = call i32 @memcpy(i8* %391, i8* %392, i32 %398)
  %400 = load i8*, i8** %13, align 8
  %401 = load i8*, i8** %11, align 8
  %402 = load i8*, i8** %6, align 8
  %403 = ptrtoint i8* %401 to i64
  %404 = ptrtoint i8* %402 to i64
  %405 = sub i64 %403, %404
  %406 = getelementptr inbounds i8, i8* %400, i64 %405
  store i8 0, i8* %406, align 1
  %407 = load i8*, i8** %13, align 8
  %408 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %407)
  br label %409

409:                                              ; preds = %381, %364
  %410 = load i8*, i8** %11, align 8
  store i8* %410, i8** @lexptr, align 8
  %411 = load i32, i32* %10, align 4
  store i32 %411, i32* %1, align 4
  br label %640

412:                                              ; preds = %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128, %128
  br label %413

413:                                              ; preds = %412, %182
  %414 = load i8*, i8** @lexptr, align 8
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** @lexptr, align 8
  %416 = load i32, i32* %2, align 4
  store i32 %416, i32* %1, align 4
  br label %640

417:                                              ; preds = %128, %142
  %418 = load i32, i32* %2, align 4
  %419 = icmp eq i32 %418, 95
  br i1 %419, label %438, label %420

420:                                              ; preds = %417
  %421 = load i32, i32* %2, align 4
  %422 = icmp eq i32 %421, 36
  br i1 %422, label %438, label %423

423:                                              ; preds = %420
  %424 = load i32, i32* %2, align 4
  %425 = icmp sge i32 %424, 97
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = load i32, i32* %2, align 4
  %428 = icmp sle i32 %427, 122
  br i1 %428, label %438, label %429

429:                                              ; preds = %426, %423
  %430 = load i32, i32* %2, align 4
  %431 = icmp sge i32 %430, 65
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load i32, i32* %2, align 4
  %434 = icmp sle i32 %433, 90
  br i1 %434, label %438, label %435

435:                                              ; preds = %432, %429
  %436 = load i32, i32* %2, align 4
  %437 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %436)
  br label %438

438:                                              ; preds = %435, %432, %426, %420, %417
  store i32 0, i32* %3, align 4
  %439 = load i8*, i8** %6, align 8
  %440 = load i32, i32* %3, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  store i32 %444, i32* %2, align 4
  br label %445

445:                                              ; preds = %474, %438
  %446 = load i32, i32* %2, align 4
  %447 = icmp eq i32 %446, 95
  br i1 %447, label %471, label %448

448:                                              ; preds = %445
  %449 = load i32, i32* %2, align 4
  %450 = icmp eq i32 %449, 36
  br i1 %450, label %471, label %451

451:                                              ; preds = %448
  %452 = load i32, i32* %2, align 4
  %453 = icmp sge i32 %452, 48
  br i1 %453, label %454, label %457

454:                                              ; preds = %451
  %455 = load i32, i32* %2, align 4
  %456 = icmp sle i32 %455, 57
  br i1 %456, label %471, label %457

457:                                              ; preds = %454, %451
  %458 = load i32, i32* %2, align 4
  %459 = icmp sge i32 %458, 97
  br i1 %459, label %460, label %463

460:                                              ; preds = %457
  %461 = load i32, i32* %2, align 4
  %462 = icmp sle i32 %461, 122
  br i1 %462, label %471, label %463

463:                                              ; preds = %460, %457
  %464 = load i32, i32* %2, align 4
  %465 = icmp sge i32 %464, 65
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = load i32, i32* %2, align 4
  %468 = icmp sle i32 %467, 90
  br label %469

469:                                              ; preds = %466, %463
  %470 = phi i1 [ false, %463 ], [ %468, %466 ]
  br label %471

471:                                              ; preds = %469, %460, %454, %448, %445
  %472 = phi i1 [ true, %460 ], [ true, %454 ], [ true, %448 ], [ true, %445 ], [ %470, %469 ]
  br i1 %472, label %473, label %482

473:                                              ; preds = %471
  br label %474

474:                                              ; preds = %473
  %475 = load i8*, i8** %6, align 8
  %476 = load i32, i32* %3, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %3, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %475, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i32
  store i32 %481, i32* %2, align 4
  br label %445

482:                                              ; preds = %471
  %483 = load i32, i32* %3, align 4
  %484 = icmp eq i32 %483, 2
  br i1 %484, label %485, label %498

485:                                              ; preds = %482
  %486 = load i8*, i8** %6, align 8
  %487 = getelementptr inbounds i8, i8* %486, i64 0
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp eq i32 %489, 105
  br i1 %490, label %491, label %498

491:                                              ; preds = %485
  %492 = load i8*, i8** %6, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 1
  %494 = load i8, i8* %493, align 1
  %495 = sext i8 %494 to i32
  %496 = icmp eq i32 %495, 102
  br i1 %496, label %497, label %498

497:                                              ; preds = %491
  store i32 0, i32* %1, align 4
  br label %640

498:                                              ; preds = %491, %485, %482
  %499 = load i32, i32* %3, align 4
  %500 = load i8*, i8** @lexptr, align 8
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i8, i8* %500, i64 %501
  store i8* %502, i8** @lexptr, align 8
  store i32 0, i32* %4, align 4
  br label %503

503:                                              ; preds = %542, %498
  %504 = load %struct.TYPE_17__*, %struct.TYPE_17__** @f77_keywords, align 8
  %505 = load i32, i32* %4, align 4
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 2
  %509 = load i32*, i32** %508, align 8
  %510 = icmp ne i32* %509, null
  br i1 %510, label %511, label %545

511:                                              ; preds = %503
  %512 = load i8*, i8** %6, align 8
  %513 = load %struct.TYPE_17__*, %struct.TYPE_17__** @f77_keywords, align 8
  %514 = load i32, i32* %4, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %516, i32 0, i32 2
  %518 = load i32*, i32** %517, align 8
  %519 = load %struct.TYPE_17__*, %struct.TYPE_17__** @f77_keywords, align 8
  %520 = load i32, i32* %4, align 4
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %519, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %522, i32 0, i32 2
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @strlen(i32* %524)
  %526 = call i64 @strncmp(i8* %512, i32* %518, i32 %525)
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %541

528:                                              ; preds = %511
  %529 = load %struct.TYPE_17__*, %struct.TYPE_17__** @f77_keywords, align 8
  %530 = load i32, i32* %4, align 4
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  store i32 %534, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 3), align 8
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** @f77_keywords, align 8
  %536 = load i32, i32* %4, align 4
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %535, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  store i32 %540, i32* %1, align 4
  br label %640

541:                                              ; preds = %511
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %4, align 4
  %544 = add i32 %543, 1
  store i32 %544, i32* %4, align 4
  br label %503

545:                                              ; preds = %503
  %546 = load i8*, i8** %6, align 8
  store i8* %546, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 2, i32 0), align 8
  %547 = load i32, i32* %3, align 4
  store i32 %547, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 2, i32 1), align 8
  %548 = load i8*, i8** %6, align 8
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %550, 36
  br i1 %551, label %552, label %557

552:                                              ; preds = %545
  %553 = load i8*, i8** getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 2) to { i8*, i32 }*), i32 0, i32 0), align 8
  %554 = load i32, i32* getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 2) to { i8*, i32 }*), i32 0, i32 1), align 8
  %555 = call i32 @write_dollar_variable(i8* %553, i32 %554)
  %556 = load i32, i32* @VARIABLE, align 4
  store i32 %556, i32* %1, align 4
  br label %640

557:                                              ; preds = %545
  %558 = load i8*, i8** getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 2) to { i8*, i32 }*), i32 0, i32 0), align 8
  %559 = load i32, i32* getelementptr inbounds ({ i8*, i32 }, { i8*, i32 }* bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 2) to { i8*, i32 }*), i32 0, i32 1), align 8
  %560 = call i8* @copy_name(i8* %558, i32 %559)
  store i8* %560, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %561 = load i8*, i8** %14, align 8
  %562 = load i32, i32* @expression_context_block, align 4
  %563 = load i32, i32* @VAR_DOMAIN, align 4
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** @current_language, align 8
  %565 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @language_cplus, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %570

569:                                              ; preds = %557
  br label %571

570:                                              ; preds = %557
  br label %571

571:                                              ; preds = %570, %569
  %572 = phi i32* [ %16, %569 ], [ null, %570 ]
  %573 = call %struct.symbol* @lookup_symbol(i8* %561, i32 %562, i32 %563, i32* %572, i32* null)
  store %struct.symbol* %573, %struct.symbol** %15, align 8
  %574 = load %struct.symbol*, %struct.symbol** %15, align 8
  %575 = icmp ne %struct.symbol* %574, null
  br i1 %575, label %576, label %585

576:                                              ; preds = %571
  %577 = load %struct.symbol*, %struct.symbol** %15, align 8
  %578 = call i64 @SYMBOL_CLASS(%struct.symbol* %577)
  %579 = load i64, i64* @LOC_TYPEDEF, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %585

581:                                              ; preds = %576
  %582 = load %struct.symbol*, %struct.symbol** %15, align 8
  %583 = call i32 @SYMBOL_TYPE(%struct.symbol* %582)
  store i32 %583, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 1, i32 0), align 8
  %584 = load i32, i32* @TYPENAME, align 4
  store i32 %584, i32* %1, align 4
  br label %640

585:                                              ; preds = %576, %571
  %586 = load i8*, i8** %14, align 8
  %587 = call i32 @lookup_primitive_typename(i8* %586)
  store i32 %587, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 1, i32 0), align 8
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %591

589:                                              ; preds = %585
  %590 = load i32, i32* @TYPENAME, align 4
  store i32 %590, i32* %1, align 4
  br label %640

591:                                              ; preds = %585
  %592 = load %struct.symbol*, %struct.symbol** %15, align 8
  %593 = icmp ne %struct.symbol* %592, null
  br i1 %593, label %636, label %594

594:                                              ; preds = %591
  %595 = load i8*, i8** %6, align 8
  %596 = getelementptr inbounds i8, i8* %595, i64 0
  %597 = load i8, i8* %596, align 1
  %598 = sext i8 %597 to i32
  %599 = icmp sge i32 %598, 97
  br i1 %599, label %600, label %609

600:                                              ; preds = %594
  %601 = load i8*, i8** %6, align 8
  %602 = getelementptr inbounds i8, i8* %601, i64 0
  %603 = load i8, i8* %602, align 1
  %604 = sext i8 %603 to i32
  %605 = load i32, i32* @input_radix, align 4
  %606 = add nsw i32 97, %605
  %607 = sub nsw i32 %606, 10
  %608 = icmp slt i32 %604, %607
  br i1 %608, label %624, label %609

609:                                              ; preds = %600, %594
  %610 = load i8*, i8** %6, align 8
  %611 = getelementptr inbounds i8, i8* %610, i64 0
  %612 = load i8, i8* %611, align 1
  %613 = sext i8 %612 to i32
  %614 = icmp sge i32 %613, 65
  br i1 %614, label %615, label %636

615:                                              ; preds = %609
  %616 = load i8*, i8** %6, align 8
  %617 = getelementptr inbounds i8, i8* %616, i64 0
  %618 = load i8, i8* %617, align 1
  %619 = sext i8 %618 to i32
  %620 = load i32, i32* @input_radix, align 4
  %621 = add nsw i32 65, %620
  %622 = sub nsw i32 %621, 10
  %623 = icmp slt i32 %619, %622
  br i1 %623, label %624, label %636

624:                                              ; preds = %615, %600
  %625 = load i8*, i8** %6, align 8
  %626 = load i32, i32* %3, align 4
  %627 = call i32 @parse_number(i8* %625, i32 %626, i32 0, %struct.TYPE_15__* %18)
  store i32 %627, i32* %17, align 4
  %628 = load i32, i32* %17, align 4
  %629 = load i32, i32* @INT, align 4
  %630 = icmp eq i32 %628, %629
  br i1 %630, label %631, label %635

631:                                              ; preds = %624
  %632 = load %struct.symbol*, %struct.symbol** %15, align 8
  store %struct.symbol* %632, %struct.symbol** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 0, i32 1), align 8
  %633 = load i32, i32* %16, align 4
  store i32 %633, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 0, i32 0), align 8
  %634 = load i32, i32* @NAME_OR_INT, align 4
  store i32 %634, i32* %1, align 4
  br label %640

635:                                              ; preds = %624
  br label %636

636:                                              ; preds = %635, %615, %609, %591
  %637 = load %struct.symbol*, %struct.symbol** %15, align 8
  store %struct.symbol* %637, %struct.symbol** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 0, i32 1), align 8
  %638 = load i32, i32* %16, align 4
  store i32 %638, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @yylval, i32 0, i32 0, i32 0), align 8
  %639 = load i32, i32* @NAME, align 4
  store i32 %639, i32* %1, align 4
  br label %640

640:                                              ; preds = %636, %631, %589, %581, %552, %528, %497, %413, %409, %166, %165, %153, %152, %143, %140, %132, %101, %52
  %641 = load i32, i32* %1, align 4
  ret i32 %641
}

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @match_string_literal(...) #1

declare dso_local i32 @parse_number(i8*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @write_dollar_variable(i8*, i32) #1

declare dso_local i8* @copy_name(i8*, i32) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @lookup_primitive_typename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
