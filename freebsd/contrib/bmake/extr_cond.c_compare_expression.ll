; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_compare_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_compare_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i8*)*, i32* }

@TOK_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@lhsStrict = common dso_local global i8* null, align 8
@condExpr = common dso_local global i32* null, align 8
@TOK_FALSE = common dso_local global i32 0, align 4
@if_info = common dso_local global %struct.TYPE_2__* null, align 8
@PARSE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Missing right-hand-side of operator\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"String comparison operator should be either == or !=\00", align 1
@COND = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"lhs = \22%s\22, rhs = \22%s\22, op = %.2s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"left = %f, right = %f, op = %.2s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Unknown operator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @compare_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_expression(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i32, i32* @TOK_ERROR, align 4
  store i32 %13, i32* %3, align 4
  store i8* null, i8** %5, align 8
  %14 = load i8*, i8** @FALSE, align 8
  store i8* %14, i8** %8, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** %10, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** @lhsStrict, align 8
  %18 = call i8* @CondGetString(i8* %16, i8** %9, i8** %7, i8* %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %265

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32*, i32** @condExpr, align 8
  %25 = load i32, i32* %24, align 4
  %26 = trunc i32 %25 to i8
  %27 = call i64 @isspace(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** @condExpr, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** @condExpr, align 8
  br label %23

32:                                               ; preds = %23
  %33 = load i32*, i32** @condExpr, align 8
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %6, align 8
  %35 = load i32*, i32** @condExpr, align 8
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %49 [
    i32 33, label %37
    i32 61, label %37
    i32 60, label %37
    i32 62, label %37
  ]

37:                                               ; preds = %32, %32, %32, %32
  %38 = load i32*, i32** @condExpr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 61
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** @condExpr, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** @condExpr, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** @condExpr, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32* %47, i32** @condExpr, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %99

49:                                               ; preds = %32
  %50 = load i8*, i8** %2, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @TOK_FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %265

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %265

64:                                               ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @CondCvtArg(i8* %65, double* %11)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load double, double* %11, align 8
  %70 = fcmp une double %69, 0.000000e+00
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %265

72:                                               ; preds = %64
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @if_info, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %265

86:                                               ; preds = %72
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @if_info, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (i32, i8*)*, i32 (i32, i8*)** %88, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 %89(i32 %91, i8* %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @if_info, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %265

99:                                               ; preds = %48
  br label %100

100:                                              ; preds = %106, %99
  %101 = load i32*, i32** @condExpr, align 8
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i8
  %104 = call i64 @isspace(i8 zeroext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32*, i32** @condExpr, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** @condExpr, align 8
  br label %100

109:                                              ; preds = %100
  %110 = load i32*, i32** @condExpr, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @PARSE_WARNING, align 4
  %115 = call i32 @Parse_Error(i32 %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %265

116:                                              ; preds = %109
  %117 = load i8*, i8** %2, align 8
  %118 = load i8*, i8** @FALSE, align 8
  %119 = call i8* @CondGetString(i8* %117, i8** %10, i8** %8, i8* %118)
  store i8* %119, i8** %5, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %265

123:                                              ; preds = %116
  %124 = load i8*, i8** %10, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %9, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %177

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %185, %129
  %131 = load i8*, i8** %6, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 33
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %6, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 61
  br i1 %139, label %146, label %140

140:                                              ; preds = %135, %130
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 61
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %135
  %147 = load i32, i32* @PARSE_WARNING, align 4
  %148 = call i32 @Parse_Error(i32 %147, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %265

149:                                              ; preds = %140
  %150 = load i32, i32* @COND, align 4
  %151 = call i64 @DEBUG(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* @debug_file, align 4
  %155 = load i8*, i8** %4, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %155, i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %153, %149
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 61
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i8*, i8** %4, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = call i64 @strcmp(i8* %165, i8* %166)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %3, align 4
  br label %176

170:                                              ; preds = %159
  %171 = load i8*, i8** %4, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i64 @strcmp(i8* %171, i8* %172)
  %174 = icmp ne i64 %173, 0
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %170, %164
  br label %264

177:                                              ; preds = %126
  %178 = load i8*, i8** %4, align 8
  %179 = call i64 @CondCvtArg(i8* %178, double* %11)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i8*, i8** %5, align 8
  %183 = call i64 @CondCvtArg(i8* %182, double* %12)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181, %177
  br label %130

186:                                              ; preds = %181
  %187 = load i32, i32* @COND, align 4
  %188 = call i64 @DEBUG(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* @debug_file, align 4
  %192 = load double, double* %11, align 8
  %193 = load double, double* %12, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), double %192, double %193, i8* %194)
  br label %196

196:                                              ; preds = %190, %186
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  switch i32 %200, label %263 [
    i32 33, label %201
    i32 61, label %215
    i32 60, label %229
    i32 62, label %246
  ]

201:                                              ; preds = %196
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 61
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* @PARSE_WARNING, align 4
  %209 = call i32 @Parse_Error(i32 %208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %265

210:                                              ; preds = %201
  %211 = load double, double* %11, align 8
  %212 = load double, double* %12, align 8
  %213 = fcmp une double %211, %212
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %3, align 4
  br label %263

215:                                              ; preds = %196
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 61
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32, i32* @PARSE_WARNING, align 4
  %223 = call i32 @Parse_Error(i32 %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %265

224:                                              ; preds = %215
  %225 = load double, double* %11, align 8
  %226 = load double, double* %12, align 8
  %227 = fcmp oeq double %225, %226
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %3, align 4
  br label %263

229:                                              ; preds = %196
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 61
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load double, double* %11, align 8
  %237 = load double, double* %12, align 8
  %238 = fcmp ole double %236, %237
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %3, align 4
  br label %245

240:                                              ; preds = %229
  %241 = load double, double* %11, align 8
  %242 = load double, double* %12, align 8
  %243 = fcmp olt double %241, %242
  %244 = zext i1 %243 to i32
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %240, %235
  br label %263

246:                                              ; preds = %196
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 61
  br i1 %251, label %252, label %257

252:                                              ; preds = %246
  %253 = load double, double* %11, align 8
  %254 = load double, double* %12, align 8
  %255 = fcmp oge double %253, %254
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %3, align 4
  br label %262

257:                                              ; preds = %246
  %258 = load double, double* %11, align 8
  %259 = load double, double* %12, align 8
  %260 = fcmp ogt double %258, %259
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %257, %252
  br label %263

263:                                              ; preds = %196, %262, %245, %224, %210
  br label %264

264:                                              ; preds = %263, %176
  br label %265

265:                                              ; preds = %264, %221, %207, %146, %122, %113, %86, %79, %68, %57, %52, %21
  %266 = load i8*, i8** %7, align 8
  %267 = call i32 @free(i8* %266)
  %268 = load i8*, i8** %8, align 8
  %269 = call i32 @free(i8* %268)
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i8* @CondGetString(i8*, i8**, i8**, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @CondCvtArg(i8*, double*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Parse_Error(i32, i8*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
