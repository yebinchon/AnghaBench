; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffExpandChildren.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffExpandChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32, i32, i32 }

@OP_WAIT = common dso_local global i32 0, align 4
@SUFF = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Expanding \22%s\22...\00", align 1
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OP_ARCHV = common dso_local global i32 0, align 4
@TARG_CREATE = common dso_local global i32 0, align 4
@var_Error = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s...\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*)* @SuffExpandChildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SuffExpandChildren(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @Lst_Datum(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @Lst_IsEmpty(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Lst_IsEmpty(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %2
  br label %273

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OP_WAIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %273

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @strchr(i8* %41, i8 signext 36)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call i32 @SuffExpandWildcards(i32 %45, %struct.TYPE_11__* %46)
  br label %273

48:                                               ; preds = %38
  %49 = load i32, i32* @SUFF, align 4
  %50 = call i64 @DEBUG(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @debug_file, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = load i32, i32* @VARF_UNDEFERR, align 4
  %64 = load i32, i32* @VARF_WANTRES, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @Var_Subst(i32* null, i8* %61, %struct.TYPE_11__* %62, i32 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %247

69:                                               ; preds = %58
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @Lst_Init(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OP_ARCHV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load i8*, i8** %7, align 8
  store i8* %79, i8** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = call i32 @Arch_ParseArchive(i8** %9, i32 %80, %struct.TYPE_11__* %81)
  br label %203

83:                                               ; preds = %69
  %84 = load i8*, i8** %7, align 8
  store i8* %84, i8** %11, align 8
  %85 = load i8*, i8** %7, align 8
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %99, %83
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 9
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i1 [ true, %86 ], [ %95, %91 ]
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  br label %86

102:                                              ; preds = %96
  %103 = load i8*, i8** %10, align 8
  store i8* %103, i8** %7, align 8
  br label %104

104:                                              ; preds = %187, %102
  %105 = load i8*, i8** %7, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %190

109:                                              ; preds = %104
  %110 = load i8*, i8** %7, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 9
  br i1 %118, label %119, label %146

119:                                              ; preds = %114, %109
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 8
  store i8 0, i8* %120, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* @TARG_CREATE, align 4
  %124 = call %struct.TYPE_11__* @Targ_FindNode(i8* %122, i32 %123)
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = call i32 @Lst_AtEnd(i32 %125, %struct.TYPE_11__* %126)
  br label %128

128:                                              ; preds = %140, %119
  %129 = load i8*, i8** %7, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 32
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %7, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 9
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i1 [ true, %128 ], [ %137, %133 ]
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %7, align 8
  br label %128

143:                                              ; preds = %138
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %145, i8** %7, align 8
  store i8* %144, i8** %10, align 8
  br label %186

146:                                              ; preds = %114
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 36
  br i1 %150, label %151, label %170

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = load i32, i32* @VARF_UNDEFERR, align 4
  %155 = load i32, i32* @VARF_WANTRES, align 4
  %156 = or i32 %154, %155
  %157 = call i8* @Var_Parse(i8* %152, %struct.TYPE_11__* %153, i32 %156, i32* %13, i8** %14)
  store i8* %157, i8** %12, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i8*, i8** @var_Error, align 8
  %160 = icmp ne i8* %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load i32, i32* %13, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load i8*, i8** %7, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %7, align 8
  br label %167

167:                                              ; preds = %161, %151
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @free(i8* %168)
  br label %185

170:                                              ; preds = %146
  %171 = load i8*, i8** %7, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 92
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %7, align 8
  br label %184

184:                                              ; preds = %181, %175, %170
  br label %185

185:                                              ; preds = %184, %167
  br label %186

186:                                              ; preds = %185, %143
  br label %187

187:                                              ; preds = %186
  %188 = load i8*, i8** %7, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %7, align 8
  br label %104

190:                                              ; preds = %104
  %191 = load i8*, i8** %7, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = icmp ne i8* %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i8*, i8** %10, align 8
  %196 = load i32, i32* @TARG_CREATE, align 4
  %197 = call %struct.TYPE_11__* @Targ_FindNode(i8* %195, i32 %196)
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %6, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %200 = call i32 @Lst_AtEnd(i32 %198, %struct.TYPE_11__* %199)
  br label %201

201:                                              ; preds = %194, %190
  %202 = load i8*, i8** %11, align 8
  store i8* %202, i8** %7, align 8
  br label %203

203:                                              ; preds = %201, %78
  br label %204

204:                                              ; preds = %222, %203
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @Lst_IsEmpty(i32 %205)
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  br i1 %208, label %209, label %242

209:                                              ; preds = %204
  %210 = load i32, i32* %8, align 4
  %211 = call i64 @Lst_DeQueue(i32 %210)
  %212 = inttoptr i64 %211 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %212, %struct.TYPE_11__** %6, align 8
  %213 = load i32, i32* @SUFF, align 4
  %214 = call i64 @DEBUG(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %209
  %217 = load i32, i32* @debug_file, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 (i32, i8*, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %216, %209
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %3, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = call i32 @Lst_InsertBefore(i32 %225, i32 %226, %struct.TYPE_11__* %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %233 = call i32 @Lst_AtEnd(i32 %231, %struct.TYPE_11__* %232)
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = load i32, i32* %3, align 4
  %239 = call i32 @Lst_Prev(i32 %238)
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %241 = call i32 @SuffExpandWildcards(i32 %239, %struct.TYPE_11__* %240)
  br label %204

242:                                              ; preds = %204
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @Lst_Destroy(i32 %243, i32* null)
  %245 = load i8*, i8** %7, align 8
  %246 = call i32 @free(i8* %245)
  br label %247

247:                                              ; preds = %242, %58
  %248 = load i32, i32* @SUFF, align 4
  %249 = call i64 @DEBUG(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* @debug_file, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %247
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %256, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @Lst_Remove(i32 %261, i32 %262)
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %271 = call i32 @Lst_Member(i32 %269, %struct.TYPE_11__* %270)
  %272 = call i32 @Lst_Remove(i32 %266, i32 %271)
  br label %273

273:                                              ; preds = %254, %44, %37, %29
  ret void
}

declare dso_local i64 @Lst_Datum(i32) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SuffExpandWildcards(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @Var_Subst(i32*, i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i32 @Arch_ParseArchive(i8**, i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_11__*) #1

declare dso_local i8* @Var_Parse(i8*, %struct.TYPE_11__*, i32, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @Lst_DeQueue(i32) #1

declare dso_local i32 @Lst_InsertBefore(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @Lst_Prev(i32) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

declare dso_local i32 @Lst_Remove(i32, i32) #1

declare dso_local i32 @Lst_Member(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
