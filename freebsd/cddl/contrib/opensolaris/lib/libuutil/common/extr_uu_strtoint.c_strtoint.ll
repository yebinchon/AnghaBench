; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_strtoint.c_strtoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_strtoint.c_strtoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BASE = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UU_ERROR_EMPTY = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_CHAR = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_DIGIT = common dso_local global i32 0, align 4
@UU_ERROR_UNDERFLOW = common dso_local global i32 0, align 4
@UU_ERROR_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32)* @strtoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strtoint(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MAX_BASE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22, %4
  %30 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %31 = call i32 @uu_set_error(i32 %30)
  store i32 -1, i32* %5, align 4
  br label %259

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @isspace(i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  br label %33

47:                                               ; preds = %42
  %48 = load i32, i32* %13, align 4
  switch i32 %48, label %59 [
    i32 45, label %49
    i32 43, label %54
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 1, i32* %18, align 4
  br label %53

53:                                               ; preds = %52, %49
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %47, %53
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %13, align 4
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @UU_ERROR_EMPTY, align 4
  %65 = call i32 @uu_set_error(i32 %64)
  store i32 -1, i32* %5, align 4
  br label %259

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 48
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 10, i32* %8, align 4
  br label %88

73:                                               ; preds = %69
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 120
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 88
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %73
  store i32 16, i32* %8, align 4
  br label %87

86:                                               ; preds = %79
  store i32 8, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %72
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 48
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 120
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 88
  br i1 %106, label %107, label %112

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %109, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %107, %101, %92, %89
  %113 = load i32, i32* %13, align 4
  %114 = call i8* @CTOI(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @IS_DIGIT(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 1, i32* %16, align 4
  br label %124

123:                                              ; preds = %118
  store i32 1, i32* %17, align 4
  br label %124

124:                                              ; preds = %123, %122
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %124, %112
  %126 = load i64, i64* @UINT64_MAX, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %8, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %12, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %175, %125
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %180

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = call i8* @CTOI(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp uge i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %137
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @isspace(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %180

148:                                              ; preds = %143
  %149 = load i32, i32* %13, align 4
  %150 = call i64 @IS_DIGIT(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %16, align 4
  br label %154

153:                                              ; preds = %148
  store i32 1, i32* %17, align 4
  br label %154

154:                                              ; preds = %153, %152
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 1, i32* %18, align 4
  br label %160

160:                                              ; preds = %159, %155
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %11, align 4
  %163 = mul nsw i32 %162, %161
  store i32 %163, i32* %11, align 4
  %164 = load i64, i64* @UINT64_MAX, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  store i32 1, i32* %18, align 4
  br label %171

171:                                              ; preds = %170, %160
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %10, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %10, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  store i32 %179, i32* %13, align 4
  br label %134

180:                                              ; preds = %147, %134
  br label %181

181:                                              ; preds = %191, %180
  %182 = load i8*, i8** %10, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  store i32 %184, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i32, i32* %13, align 4
  %188 = call i64 @isspace(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  store i32 1, i32* %17, align 4
  br label %191

191:                                              ; preds = %190, %186
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %10, align 8
  br label %181

194:                                              ; preds = %181
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32, i32* %11, align 4
  %202 = load i64, i64* @INT64_MIN, align 8
  %203 = trunc i64 %202 to i32
  %204 = sub nsw i32 0, %203
  %205 = icmp sgt i32 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  store i32 1, i32* %18, align 4
  br label %207

207:                                              ; preds = %206, %200
  br label %214

208:                                              ; preds = %197
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @INT64_MAX, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 1, i32* %18, align 4
  br label %213

213:                                              ; preds = %212, %208
  br label %214

214:                                              ; preds = %213, %207
  br label %215

215:                                              ; preds = %214, %194
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %11, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %11, align 4
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %16, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* %18, align 4
  %226 = or i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %256

228:                                              ; preds = %221
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* @UU_ERROR_INVALID_CHAR, align 4
  %233 = call i32 @uu_set_error(i32 %232)
  br label %255

234:                                              ; preds = %228
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* @UU_ERROR_INVALID_DIGIT, align 4
  %239 = call i32 @uu_set_error(i32 %238)
  br label %254

240:                                              ; preds = %234
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %240
  %244 = load i32, i32* %15, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* @UU_ERROR_UNDERFLOW, align 4
  %248 = call i32 @uu_set_error(i32 %247)
  br label %252

249:                                              ; preds = %243
  %250 = load i32, i32* @UU_ERROR_OVERFLOW, align 4
  %251 = call i32 @uu_set_error(i32 %250)
  br label %252

252:                                              ; preds = %249, %246
  br label %253

253:                                              ; preds = %252, %240
  br label %254

254:                                              ; preds = %253, %237
  br label %255

255:                                              ; preds = %254, %231
  store i32 -1, i32* %5, align 4
  br label %259

256:                                              ; preds = %221
  %257 = load i32, i32* %11, align 4
  %258 = load i32*, i32** %7, align 8
  store i32 %257, i32* %258, align 4
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %256, %255, %63, %29
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i8* @CTOI(i32) #1

declare dso_local i64 @IS_DIGIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
