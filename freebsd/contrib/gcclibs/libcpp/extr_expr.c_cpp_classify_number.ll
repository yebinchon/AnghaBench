; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_cpp_classify_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_cpp_classify_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@CPP_N_INTEGER = common dso_local global i32 0, align 4
@CPP_N_SMALL = common dso_local global i32 0, align 4
@CPP_N_DECIMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"too many decimal points in number\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid digit \22%c\22 in binary constant\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid digit \22%c\22 in octal constant\00", align 1
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"invalid prefix \220b\22 for floating constant\00", align 1
@CPP_N_INVALID = common dso_local global i32 0, align 4
@c99 = common dso_local global i32 0, align 4
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"use of C99 hexadecimal floating constant\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"exponent has no digits\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"hexadecimal floating constants require an exponent\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"invalid suffix \22%.*s\22 on floating constant\00", align 1
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"traditional C rejects the \22%.*s\22 suffix\00", align 1
@CPP_N_MEDIUM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"suffix for double constant is a GCC extension\00", align 1
@CPP_N_DFLOAT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"invalid suffix \22%.*s\22 with hexadecimal floating constant\00", align 1
@CPP_N_FLOATING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"invalid suffix \22%.*s\22 on integer constant\00", align 1
@CPP_N_UNSIGNED = common dso_local global i32 0, align 4
@CPP_N_IMAGINARY = common dso_local global i32 0, align 4
@CPP_N_WIDTH = common dso_local global i32 0, align 4
@CPP_N_LARGE = common dso_local global i32 0, align 4
@warn_long_long = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"use of C99 long long integer constant\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"imaginary constants are a GCC extension\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"binary constants are a GCC extension\00", align 1
@CPP_N_HEX = common dso_local global i32 0, align 4
@CPP_N_BINARY = common dso_local global i32 0, align 4
@CPP_N_OCTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpp_classify_number(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @CPP_N_INTEGER, align 4
  %28 = load i32, i32* @CPP_N_SMALL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CPP_N_DECIMAL, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %475

32:                                               ; preds = %2
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %33, i64 %39
  store i8* %40, i8** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  store i32 10, i32* %10, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 48
  br i1 %44, label %45, label %99

45:                                               ; preds = %32
  store i32 8, i32* %10, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 120
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 88
  br i1 %56, label %57, label %72

57:                                               ; preds = %52, %45
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @ISXDIGIT(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63, %57
  store i32 16, i32* %10, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %98

72:                                               ; preds = %63, %52
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 98
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 66
  br i1 %81, label %82, label %97

82:                                               ; preds = %77, %72
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 48
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 49
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82
  store i32 2, i32* %10, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  br label %97

97:                                               ; preds = %94, %88, %77
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98, %32
  br label %100

100:                                              ; preds = %159, %99
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = trunc i32 %105 to i8
  %107 = call i64 @ISDIGIT(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %12, align 4
  %111 = trunc i32 %110 to i8
  %112 = call i64 @ISXDIGIT(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %126

117:                                              ; preds = %114, %100
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @hex_value(i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %123, %117
  br label %159

126:                                              ; preds = %114, %109
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 46
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* %11, align 4
  br label %135

133:                                              ; preds = %129
  %134 = call i32 @SYNTAX_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %132
  br label %158

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  %138 = icmp ule i32 %137, 10
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 101
  br i1 %141, label %154, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 69
  br i1 %144, label %154, label %145

145:                                              ; preds = %142, %136
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 16
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 112
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 80
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %148, %142, %139
  store i32 2, i32* %11, align 4
  br label %160

155:                                              ; preds = %151, %145
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 -1
  store i8* %157, i8** %6, align 8
  br label %160

158:                                              ; preds = %135
  br label %159

159:                                              ; preds = %158, %125
  br label %100

160:                                              ; preds = %155, %154
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 8
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 10, i32* %10, align 4
  br label %167

167:                                              ; preds = %166, %163, %160
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp uge i32 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = add i32 48, %175
  %177 = call i32 @SYNTAX_ERROR2(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  br label %182

178:                                              ; preds = %171
  %179 = load i32, i32* %8, align 4
  %180 = add i32 48, %179
  %181 = call i32 @SYNTAX_ERROR2(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %178, %174
  br label %183

183:                                              ; preds = %182, %167
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %331

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* @CPP_DL_ERROR, align 4
  %192 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %190, i32 %191, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32, i32* @CPP_N_INVALID, align 4
  store i32 %193, i32* %3, align 4
  br label %475

194:                                              ; preds = %186
  %195 = load i32, i32* %10, align 4
  %196 = icmp eq i32 %195, 16
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load i32*, i32** %4, align 8
  %199 = call i64 @CPP_PEDANTIC(i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* @c99, align 4
  %204 = call i64 @CPP_OPTION(i32* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %209 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %207, i32 %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %201, %197, %194
  %211 = load i32, i32* %11, align 4
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %243

213:                                              ; preds = %210
  %214 = load i8*, i8** %6, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 43
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load i8*, i8** %6, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 45
  br i1 %222, label %223, label %226

223:                                              ; preds = %218, %213
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %6, align 8
  br label %226

226:                                              ; preds = %223, %218
  %227 = load i8*, i8** %6, align 8
  %228 = load i8, i8* %227, align 1
  %229 = call i64 @ISDIGIT(i8 signext %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = call i32 @SYNTAX_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %226
  br label %234

234:                                              ; preds = %237, %233
  %235 = load i8*, i8** %6, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %6, align 8
  br label %237

237:                                              ; preds = %234
  %238 = load i8*, i8** %6, align 8
  %239 = load i8, i8* %238, align 1
  %240 = call i64 @ISDIGIT(i8 signext %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %234, label %242

242:                                              ; preds = %237
  br label %249

243:                                              ; preds = %210
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 16
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 @SYNTAX_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %243
  br label %249

249:                                              ; preds = %248, %242
  %250 = load i8*, i8** %6, align 8
  %251 = load i8*, i8** %7, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = ptrtoint i8* %251 to i64
  %254 = ptrtoint i8* %252 to i64
  %255 = sub i64 %253, %254
  %256 = trunc i64 %255 to i32
  %257 = call i32 @interpret_float_suffix(i8* %250, i32 %256)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %249
  %261 = load i32*, i32** %4, align 8
  %262 = load i32, i32* @CPP_DL_ERROR, align 4
  %263 = load i8*, i8** %7, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  %268 = trunc i64 %267 to i32
  %269 = load i8*, i8** %6, align 8
  %270 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %261, i32 %262, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %268, i8* %269)
  %271 = load i32, i32* @CPP_N_INVALID, align 4
  store i32 %271, i32* %3, align 4
  br label %475

272:                                              ; preds = %249
  %273 = load i8*, i8** %7, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = icmp ne i8* %273, %274
  br i1 %275, label %276, label %295

276:                                              ; preds = %272
  %277 = load i32*, i32** %4, align 8
  %278 = call i64 @CPP_WTRADITIONAL(i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %295

280:                                              ; preds = %276
  %281 = load i32*, i32** %4, align 8
  %282 = call i32 @cpp_sys_macro_p(i32* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %280
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* @CPP_DL_WARNING, align 4
  %287 = load i8*, i8** %7, align 8
  %288 = load i8*, i8** %6, align 8
  %289 = ptrtoint i8* %287 to i64
  %290 = ptrtoint i8* %288 to i64
  %291 = sub i64 %289, %290
  %292 = trunc i64 %291 to i32
  %293 = load i8*, i8** %6, align 8
  %294 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %285, i32 %286, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %292, i8* %293)
  br label %295

295:                                              ; preds = %284, %280, %276, %272
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @CPP_N_MEDIUM, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %295
  %300 = load i32*, i32** %4, align 8
  %301 = call i64 @CPP_PEDANTIC(i32* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load i32*, i32** %4, align 8
  %305 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %306 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %304, i32 %305, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %307

307:                                              ; preds = %303, %299, %295
  %308 = load i32, i32* %9, align 4
  %309 = load i32, i32* @CPP_N_DFLOAT, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %327

312:                                              ; preds = %307
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 10
  br i1 %314, label %315, label %327

315:                                              ; preds = %312
  %316 = load i32*, i32** %4, align 8
  %317 = load i32, i32* @CPP_DL_ERROR, align 4
  %318 = load i8*, i8** %7, align 8
  %319 = load i8*, i8** %6, align 8
  %320 = ptrtoint i8* %318 to i64
  %321 = ptrtoint i8* %319 to i64
  %322 = sub i64 %320, %321
  %323 = trunc i64 %322 to i32
  %324 = load i8*, i8** %6, align 8
  %325 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %316, i32 %317, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %323, i8* %324)
  %326 = load i32, i32* @CPP_N_INVALID, align 4
  store i32 %326, i32* %3, align 4
  br label %475

327:                                              ; preds = %312, %307
  %328 = load i32, i32* @CPP_N_FLOATING, align 4
  %329 = load i32, i32* %9, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %9, align 4
  br label %420

331:                                              ; preds = %183
  %332 = load i8*, i8** %6, align 8
  %333 = load i8*, i8** %7, align 8
  %334 = load i8*, i8** %6, align 8
  %335 = ptrtoint i8* %333 to i64
  %336 = ptrtoint i8* %334 to i64
  %337 = sub i64 %335, %336
  %338 = trunc i64 %337 to i32
  %339 = call i32 @interpret_int_suffix(i8* %332, i32 %338)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %331
  %343 = load i32*, i32** %4, align 8
  %344 = load i32, i32* @CPP_DL_ERROR, align 4
  %345 = load i8*, i8** %7, align 8
  %346 = load i8*, i8** %6, align 8
  %347 = ptrtoint i8* %345 to i64
  %348 = ptrtoint i8* %346 to i64
  %349 = sub i64 %347, %348
  %350 = trunc i64 %349 to i32
  %351 = load i8*, i8** %6, align 8
  %352 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %343, i32 %344, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %350, i8* %351)
  %353 = load i32, i32* @CPP_N_INVALID, align 4
  store i32 %353, i32* %3, align 4
  br label %475

354:                                              ; preds = %331
  %355 = load i32*, i32** %4, align 8
  %356 = call i64 @CPP_WTRADITIONAL(i32* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %396

358:                                              ; preds = %354
  %359 = load i32*, i32** %4, align 8
  %360 = call i32 @cpp_sys_macro_p(i32* %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %396, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* @CPP_N_UNSIGNED, align 4
  %365 = load i32, i32* @CPP_N_IMAGINARY, align 4
  %366 = or i32 %364, %365
  %367 = and i32 %363, %366
  store i32 %367, i32* %13, align 4
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* @CPP_N_WIDTH, align 4
  %370 = and i32 %368, %369
  %371 = load i32, i32* @CPP_N_LARGE, align 4
  %372 = icmp eq i32 %370, %371
  %373 = zext i1 %372 to i32
  store i32 %373, i32* %14, align 4
  %374 = load i32, i32* %13, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %384, label %376

376:                                              ; preds = %362
  %377 = load i32, i32* %14, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %395

379:                                              ; preds = %376
  %380 = load i32*, i32** %4, align 8
  %381 = load i32, i32* @warn_long_long, align 4
  %382 = call i64 @CPP_OPTION(i32* %380, i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %379, %362
  %385 = load i32*, i32** %4, align 8
  %386 = load i32, i32* @CPP_DL_WARNING, align 4
  %387 = load i8*, i8** %7, align 8
  %388 = load i8*, i8** %6, align 8
  %389 = ptrtoint i8* %387 to i64
  %390 = ptrtoint i8* %388 to i64
  %391 = sub i64 %389, %390
  %392 = trunc i64 %391 to i32
  %393 = load i8*, i8** %6, align 8
  %394 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %385, i32 %386, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %392, i8* %393)
  br label %395

395:                                              ; preds = %384, %379, %376
  br label %396

396:                                              ; preds = %395, %358, %354
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @CPP_N_WIDTH, align 4
  %399 = and i32 %397, %398
  %400 = load i32, i32* @CPP_N_LARGE, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %416

402:                                              ; preds = %396
  %403 = load i32*, i32** %4, align 8
  %404 = load i32, i32* @c99, align 4
  %405 = call i64 @CPP_OPTION(i32* %403, i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %402
  %408 = load i32*, i32** %4, align 8
  %409 = load i32, i32* @warn_long_long, align 4
  %410 = call i64 @CPP_OPTION(i32* %408, i32 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %407
  %413 = load i32*, i32** %4, align 8
  %414 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %415 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %413, i32 %414, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %416

416:                                              ; preds = %412, %407, %402, %396
  %417 = load i32, i32* @CPP_N_INTEGER, align 4
  %418 = load i32, i32* %9, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %9, align 4
  br label %420

420:                                              ; preds = %416, %327
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* @CPP_N_IMAGINARY, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %433

425:                                              ; preds = %420
  %426 = load i32*, i32** %4, align 8
  %427 = call i64 @CPP_PEDANTIC(i32* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %425
  %430 = load i32*, i32** %4, align 8
  %431 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %432 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %430, i32 %431, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %433

433:                                              ; preds = %429, %425, %420
  %434 = load i32, i32* %10, align 4
  %435 = icmp eq i32 %434, 2
  br i1 %435, label %436, label %444

436:                                              ; preds = %433
  %437 = load i32*, i32** %4, align 8
  %438 = call i64 @CPP_PEDANTIC(i32* %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %436
  %441 = load i32*, i32** %4, align 8
  %442 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %443 = call i32 (i32*, i32, i8*, ...) @cpp_error(i32* %441, i32 %442, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %444

444:                                              ; preds = %440, %436, %433
  %445 = load i32, i32* %10, align 4
  %446 = icmp eq i32 %445, 10
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load i32, i32* @CPP_N_DECIMAL, align 4
  %449 = load i32, i32* %9, align 4
  %450 = or i32 %449, %448
  store i32 %450, i32* %9, align 4
  br label %471

451:                                              ; preds = %444
  %452 = load i32, i32* %10, align 4
  %453 = icmp eq i32 %452, 16
  br i1 %453, label %454, label %458

454:                                              ; preds = %451
  %455 = load i32, i32* @CPP_N_HEX, align 4
  %456 = load i32, i32* %9, align 4
  %457 = or i32 %456, %455
  store i32 %457, i32* %9, align 4
  br label %470

458:                                              ; preds = %451
  %459 = load i32, i32* %10, align 4
  %460 = icmp eq i32 %459, 2
  br i1 %460, label %461, label %465

461:                                              ; preds = %458
  %462 = load i32, i32* @CPP_N_BINARY, align 4
  %463 = load i32, i32* %9, align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* %9, align 4
  br label %469

465:                                              ; preds = %458
  %466 = load i32, i32* @CPP_N_OCTAL, align 4
  %467 = load i32, i32* %9, align 4
  %468 = or i32 %467, %466
  store i32 %468, i32* %9, align 4
  br label %469

469:                                              ; preds = %465, %461
  br label %470

470:                                              ; preds = %469, %454
  br label %471

471:                                              ; preds = %470, %447
  %472 = load i32, i32* %9, align 4
  store i32 %472, i32* %3, align 4
  br label %475

473:                                              ; No predecessors!
  %474 = load i32, i32* @CPP_N_INVALID, align 4
  store i32 %474, i32* %3, align 4
  br label %475

475:                                              ; preds = %473, %471, %342, %315, %260, %189, %26
  %476 = load i32, i32* %3, align 4
  ret i32 %476
}

declare dso_local i64 @ISXDIGIT(i8 signext) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @hex_value(i32) #1

declare dso_local i32 @SYNTAX_ERROR(i8*) #1

declare dso_local i32 @SYNTAX_ERROR2(i8*, i32) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @CPP_PEDANTIC(i32*) #1

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i32 @interpret_float_suffix(i8*, i32) #1

declare dso_local i64 @CPP_WTRADITIONAL(i32*) #1

declare dso_local i32 @cpp_sys_macro_p(i32*) #1

declare dso_local i32 @interpret_int_suffix(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
