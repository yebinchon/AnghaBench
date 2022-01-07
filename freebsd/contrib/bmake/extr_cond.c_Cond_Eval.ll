; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_Cond_Eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_Cond_Eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.If = type { i8*, i32 }

@Cond_Eval.cond_state = internal global i32* null, align 8
@Cond_Eval.max_if_depth = internal global i32 128, align 4
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ndif\00", align 1
@COND_INVALID = common dso_local global i32 0, align 4
@cond_depth = common dso_local global i64 0, align 8
@cond_min_depth = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"if-less endif\00", align 1
@COND_PARSE = common dso_local global i32 0, align 4
@COND_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"if-less else\00", align 1
@PARSE_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"extra else\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ifs = common dso_local global %struct.If* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"if-less elif\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"extra elif\00", align 1
@MAXIF = common dso_local global i32 0, align 4
@MAXIF_BUMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cond_Eval(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.If*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @PARSE_FATAL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @Cond_Eval.max_if_depth, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32* @bmake_malloc(i32 %16)
  store i32* %17, i32** @Cond_Eval.cond_state, align 8
  %18 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %12, %1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %36, %20
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 9
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %23

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 101
  br i1 %44, label %45, label %121

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 108
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i64 @istoken(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @COND_INVALID, align 4
  store i32 %57, i32* %2, align 4
  br label %261

58:                                               ; preds = %51
  %59 = load i64, i64* @cond_depth, align 8
  %60 = load i64, i64* @cond_min_depth, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @Parse_Error(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @COND_PARSE, align 4
  store i32 %65, i32* %2, align 4
  br label %261

66:                                               ; preds = %58
  %67 = load i64, i64* @cond_depth, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* @cond_depth, align 8
  %69 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %70 = load i64, i64* @cond_depth, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ule i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @COND_PARSE, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @COND_SKIP, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %2, align 4
  br label %261

80:                                               ; preds = %45
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @istoken(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %80
  %87 = load i64, i64* @cond_depth, align 8
  %88 = load i64, i64* @cond_min_depth, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @Parse_Error(i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @COND_PARSE, align 4
  store i32 %93, i32* %2, align 4
  br label %261

94:                                               ; preds = %86
  %95 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %96 = load i64, i64* @cond_depth, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  switch i32 %99, label %104 [
    i32 2, label %100
    i32 1, label %101
    i32 4, label %101
    i32 0, label %105
    i32 3, label %105
  ]

100:                                              ; preds = %94
  store i32 1, i32* %8, align 4
  br label %106

101:                                              ; preds = %94, %94
  %102 = load i32, i32* @PARSE_WARNING, align 4
  %103 = call i32 @Parse_Error(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %94, %101
  br label %105

105:                                              ; preds = %94, %94, %104
  store i32 4, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %109 = load i64, i64* @cond_depth, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ule i32 %111, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @COND_PARSE, align 4
  br label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @COND_SKIP, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  store i32 %118, i32* %2, align 4
  br label %261

119:                                              ; preds = %80
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %5, align 8
  br label %123

121:                                              ; preds = %39
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 105
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 102
  br i1 %134, label %135, label %137

135:                                              ; preds = %129, %123
  %136 = load i32, i32* @COND_INVALID, align 4
  store i32 %136, i32* %2, align 4
  br label %261

137:                                              ; preds = %129
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8* %139, i8** %3, align 8
  %140 = load %struct.If*, %struct.If** @ifs, align 8
  store %struct.If* %140, %struct.If** %4, align 8
  br label %141

141:                                              ; preds = %166, %137
  %142 = load %struct.If*, %struct.If** %4, align 8
  %143 = getelementptr inbounds %struct.If, %struct.If* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @COND_INVALID, align 4
  store i32 %147, i32* %2, align 4
  br label %261

148:                                              ; preds = %141
  %149 = load %struct.If*, %struct.If** %4, align 8
  %150 = getelementptr inbounds %struct.If, %struct.If* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %3, align 8
  %153 = load %struct.If*, %struct.If** %4, align 8
  %154 = getelementptr inbounds %struct.If, %struct.If* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @istoken(i8* %151, i8* %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %148
  %159 = load %struct.If*, %struct.If** %4, align 8
  %160 = getelementptr inbounds %struct.If, %struct.If* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %3, align 8
  br label %169

165:                                              ; preds = %148
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.If*, %struct.If** %4, align 8
  %168 = getelementptr inbounds %struct.If, %struct.If* %167, i32 1
  store %struct.If* %168, %struct.If** %4, align 8
  br label %141

169:                                              ; preds = %158
  %170 = load i64, i64* %5, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %169
  %173 = load i64, i64* @cond_depth, align 8
  %174 = load i64, i64* @cond_min_depth, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @Parse_Error(i32 %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i32, i32* @COND_PARSE, align 4
  store i32 %179, i32* %2, align 4
  br label %261

180:                                              ; preds = %172
  %181 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %182 = load i64, i64* @cond_depth, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %190, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %197

190:                                              ; preds = %187, %180
  %191 = load i32, i32* @PARSE_WARNING, align 4
  %192 = call i32 @Parse_Error(i32 %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %194 = load i64, i64* @cond_depth, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 4, i32* %195, align 4
  %196 = load i32, i32* @COND_SKIP, align 4
  store i32 %196, i32* %2, align 4
  br label %261

197:                                              ; preds = %187
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 2
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %202 = load i64, i64* @cond_depth, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32 3, i32* %203, align 4
  %204 = load i32, i32* @COND_SKIP, align 4
  store i32 %204, i32* %2, align 4
  br label %261

205:                                              ; preds = %197
  br label %236

206:                                              ; preds = %169
  %207 = load i64, i64* @cond_depth, align 8
  %208 = add i64 %207, 1
  %209 = load i32, i32* @Cond_Eval.max_if_depth, align 4
  %210 = zext i32 %209 to i64
  %211 = icmp uge i64 %208, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load i32, i32* @Cond_Eval.max_if_depth, align 4
  %214 = add i32 %213, 32
  store i32 %214, i32* @Cond_Eval.max_if_depth, align 4
  %215 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %216 = load i32, i32* @Cond_Eval.max_if_depth, align 4
  %217 = zext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = call i32* @bmake_realloc(i32* %215, i32 %219)
  store i32* %220, i32** @Cond_Eval.cond_state, align 8
  br label %221

221:                                              ; preds = %212, %206
  %222 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %223 = load i64, i64* @cond_depth, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %8, align 4
  %226 = load i64, i64* @cond_depth, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* @cond_depth, align 8
  %228 = load i32, i32* %8, align 4
  %229 = icmp ugt i32 %228, 1
  br i1 %229, label %230, label %235

230:                                              ; preds = %221
  %231 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %232 = load i64, i64* @cond_depth, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32 3, i32* %233, align 4
  %234 = load i32, i32* @COND_SKIP, align 4
  store i32 %234, i32* %2, align 4
  br label %261

235:                                              ; preds = %221
  br label %236

236:                                              ; preds = %235, %205
  %237 = load %struct.If*, %struct.If** %4, align 8
  %238 = load i8*, i8** %3, align 8
  %239 = load i64, i64* @TRUE, align 8
  %240 = call i32 @Cond_EvalExpression(%struct.If* %237, i8* %238, i64* %6, i32 1, i64 %239)
  %241 = load i32, i32* @COND_INVALID, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %245 = load i64, i64* @cond_depth, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 3, i32* %246, align 4
  %247 = load i32, i32* @COND_SKIP, align 4
  store i32 %247, i32* %2, align 4
  br label %261

248:                                              ; preds = %236
  %249 = load i64, i64* %6, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %248
  %252 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %253 = load i64, i64* @cond_depth, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32 2, i32* %254, align 4
  %255 = load i32, i32* @COND_SKIP, align 4
  store i32 %255, i32* %2, align 4
  br label %261

256:                                              ; preds = %248
  %257 = load i32*, i32** @Cond_Eval.cond_state, align 8
  %258 = load i64, i64* @cond_depth, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32 0, i32* %259, align 4
  %260 = load i32, i32* @COND_PARSE, align 4
  store i32 %260, i32* %2, align 4
  br label %261

261:                                              ; preds = %256, %251, %243, %230, %200, %190, %176, %146, %135, %117, %90, %78, %62, %56
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i32* @bmake_malloc(i32) #1

declare dso_local i64 @istoken(i8*, i8*, i32) #1

declare dso_local i32 @Parse_Error(i32, i8*) #1

declare dso_local i32* @bmake_realloc(i32*, i32) #1

declare dso_local i32 @Cond_EvalExpression(%struct.If*, i8*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
