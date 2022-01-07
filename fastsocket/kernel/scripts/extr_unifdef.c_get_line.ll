; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_get_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tline = common dso_local global i8* null, align 8
@MAXLINE = common dso_local global i32 0, align 4
@input = common dso_local global i32 0, align 4
@LT_EOF = common dso_local global i64 0, align 8
@LT_PLAIN = common dso_local global i64 0, align 8
@incomment = common dso_local global i32 0, align 4
@linestate = common dso_local global i64 0, align 8
@LS_START = common dso_local global i64 0, align 8
@LS_HASH = common dso_local global i64 0, align 8
@LS_DIRTY = common dso_local global i64 0, align 8
@keyword = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@LT_IF = common dso_local global i64 0, align 8
@LT_FALSE = common dso_local global i64 0, align 8
@LT_TRUE = common dso_local global i64 0, align 8
@value = common dso_local global i32** null, align 8
@ignore = common dso_local global i64* null, align 8
@LT_TRUEI = common dso_local global i64 0, align 8
@LT_FALSEI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@LT_ELIF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@LT_ELSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@LT_ENDIF = common dso_local global i64 0, align 8
@LT_ELTRUE = common dso_local global i64 0, align 8
@LT_ELFALSE = common dso_local global i64 0, align 8
@LT_DODGY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"parser %s comment %s line\00", align 1
@comment_name = common dso_local global i32* null, align 8
@linestate_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_line() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i8*, i8** @tline, align 8
  %8 = load i32, i32* @MAXLINE, align 4
  %9 = load i32, i32* @input, align 4
  %10 = call i32* @fgets(i8* %7, i32 %8, i32 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* @LT_EOF, align 8
  store i64 %13, i64* %1, align 8
  br label %265

14:                                               ; preds = %0
  %15 = load i64, i64* @LT_PLAIN, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* @incomment, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** @tline, align 8
  %18 = call i8* @skipcomment(i8* %17)
  store i8* %18, i8** %2, align 8
  %19 = load i64, i64* @linestate, align 8
  %20 = load i64, i64* @LS_START, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load i8*, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i64, i64* @LS_HASH, align 8
  store i64 %28, i64* @linestate, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @skipcomment(i8* %30)
  store i8* %31, i8** %2, align 8
  br label %40

32:                                               ; preds = %22
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @LS_DIRTY, align 8
  store i64 %38, i64* @linestate, align 8
  br label %39

39:                                               ; preds = %37, %32
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* @incomment, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %238, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @linestate, align 8
  %46 = load i64, i64* @LS_HASH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %238

48:                                               ; preds = %44
  %49 = load i8*, i8** @tline, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = load i8*, i8** @tline, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8* %55, i8** @keyword, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i8* @skipsym(i8* %56)
  store i8* %57, i8** %2, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = load i8*, i8** @keyword, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load i8*, i8** %2, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = call i32 (...) @Eioccc()
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i8*, i8** @keyword, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @strlcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** @keyword, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @strlcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %74, %69
  %80 = load i8*, i8** %2, align 8
  %81 = call i8* @skipcomment(i8* %80)
  store i8* %81, i8** %2, align 8
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @findsym(i8* %82)
  store i32 %83, i32* %3, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i64, i64* @LT_IF, align 8
  store i64 %86, i64* %5, align 8
  br label %133

87:                                               ; preds = %79
  %88 = load i8*, i8** @keyword, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 110
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* @LT_FALSE, align 8
  br label %97

95:                                               ; preds = %87
  %96 = load i64, i64* @LT_TRUE, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  store i64 %98, i64* %5, align 8
  %99 = load i32**, i32*** @value, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @LT_TRUE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i64, i64* @LT_FALSE, align 8
  br label %113

111:                                              ; preds = %105
  %112 = load i64, i64* @LT_TRUE, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64 [ %110, %109 ], [ %112, %111 ]
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %113, %97
  %116 = load i64*, i64** @ignore, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @LT_TRUE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i64, i64* @LT_TRUEI, align 8
  br label %130

128:                                              ; preds = %122
  %129 = load i64, i64* @LT_FALSEI, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i64 [ %127, %126 ], [ %129, %128 ]
  store i64 %131, i64* %5, align 8
  br label %132

132:                                              ; preds = %130, %115
  br label %133

133:                                              ; preds = %132, %85
  %134 = load i8*, i8** %2, align 8
  %135 = call i8* @skipsym(i8* %134)
  store i8* %135, i8** %2, align 8
  br label %175

136:                                              ; preds = %74
  %137 = load i8*, i8** @keyword, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i64 @strlcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %137, i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i64 @ifeval(i8** %2)
  store i64 %142, i64* %5, align 8
  br label %174

143:                                              ; preds = %136
  %144 = load i8*, i8** @keyword, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i64 @strlcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %144, i32 %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = call i64 @ifeval(i8** %2)
  %150 = load i64, i64* @LT_IF, align 8
  %151 = sub nsw i64 %149, %150
  %152 = load i64, i64* @LT_ELIF, align 8
  %153 = add nsw i64 %151, %152
  store i64 %153, i64* %5, align 8
  br label %173

154:                                              ; preds = %143
  %155 = load i8*, i8** @keyword, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i64 @strlcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %155, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i64, i64* @LT_ELSE, align 8
  store i64 %160, i64* %5, align 8
  br label %172

161:                                              ; preds = %154
  %162 = load i8*, i8** @keyword, align 8
  %163 = load i32, i32* %4, align 4
  %164 = call i64 @strlcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %162, i32 %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i64, i64* @LT_ENDIF, align 8
  store i64 %167, i64* %5, align 8
  br label %171

168:                                              ; preds = %161
  %169 = load i64, i64* @LS_DIRTY, align 8
  store i64 %169, i64* @linestate, align 8
  %170 = load i64, i64* @LT_PLAIN, align 8
  store i64 %170, i64* %5, align 8
  br label %171

171:                                              ; preds = %168, %166
  br label %172

172:                                              ; preds = %171, %159
  br label %173

173:                                              ; preds = %172, %148
  br label %174

174:                                              ; preds = %173, %141
  br label %175

175:                                              ; preds = %174, %133
  %176 = load i8*, i8** %2, align 8
  %177 = call i8* @skipcomment(i8* %176)
  store i8* %177, i8** %2, align 8
  %178 = load i8*, i8** %2, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %175
  %183 = load i64, i64* @LS_DIRTY, align 8
  store i64 %183, i64* @linestate, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* @LT_TRUE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %199, label %187

187:                                              ; preds = %182
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @LT_FALSE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* @LT_TRUEI, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* @LT_FALSEI, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195, %191, %187, %182
  %200 = load i64, i64* @LT_IF, align 8
  store i64 %200, i64* %5, align 8
  br label %201

201:                                              ; preds = %199, %195
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* @LT_ELTRUE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %5, align 8
  %207 = load i64, i64* @LT_ELFALSE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205, %201
  %210 = load i64, i64* @LT_ELIF, align 8
  store i64 %210, i64* %5, align 8
  br label %211

211:                                              ; preds = %209, %205
  br label %212

212:                                              ; preds = %211, %175
  %213 = load i64, i64* %5, align 8
  %214 = load i64, i64* @LT_PLAIN, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* @incomment, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219, %216
  %223 = load i64, i64* @LT_DODGY, align 8
  %224 = load i64, i64* %5, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %5, align 8
  %226 = load i32, i32* @incomment, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i64, i64* @LS_DIRTY, align 8
  store i64 %229, i64* @linestate, align 8
  br label %230

230:                                              ; preds = %228, %222
  br label %231

231:                                              ; preds = %230, %219, %212
  %232 = load i64, i64* @linestate, align 8
  %233 = load i64, i64* @LS_HASH, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 (...) @abort() #3
  unreachable

237:                                              ; preds = %231
  br label %238

238:                                              ; preds = %237, %44, %41
  %239 = load i64, i64* @linestate, align 8
  %240 = load i64, i64* @LS_DIRTY, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %238
  br label %243

243:                                              ; preds = %248, %242
  %244 = load i8*, i8** %2, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load i8*, i8** %2, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 1
  %251 = call i8* @skipcomment(i8* %250)
  store i8* %251, i8** %2, align 8
  br label %243

252:                                              ; preds = %243
  br label %253

253:                                              ; preds = %252, %238
  %254 = load i32*, i32** @comment_name, align 8
  %255 = load i32, i32* @incomment, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** @linestate_name, align 8
  %260 = load i64, i64* @linestate, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %258, i32 %262)
  %264 = load i64, i64* %5, align 8
  store i64 %264, i64* %1, align 8
  br label %265

265:                                              ; preds = %253, %12
  %266 = load i64, i64* %1, align 8
  ret i64 %266
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i8* @skipsym(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Eioccc(...) #1

declare dso_local i64 @strlcmp(i8*, i8*, i32) #1

declare dso_local i32 @findsym(i8*) #1

declare dso_local i64 @ifeval(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
