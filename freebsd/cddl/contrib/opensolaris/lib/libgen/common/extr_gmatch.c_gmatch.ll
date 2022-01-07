; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libgen/common/extr_gmatch.c_gmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libgen/common/extr_gmatch.c_gmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@multibyte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmatch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @MB_LEN_MAX, align 4
  %17 = call i32 @mbtowc(i32* %10, i8* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %7, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @MB_LEN_MAX, align 4
  %33 = call i32 @mbtowc(i32* %10, i8* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %244

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %244

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %185 [
    i32 91, label %51
    i32 92, label %181
    i32 63, label %191
    i32 42, label %201
  ]

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %244

55:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 33
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  store i32 1, i32* %13, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @Popwchar(i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %168, %63
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %135

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 93
  br i1 %77, label %78, label %135

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @Popwchar(i8* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 92
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @Popwchar(i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load i32, i32* @multibyte, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @valid_range(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %111

110:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %244

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %94
  br label %134

113:                                              ; preds = %88
  %114 = load i32, i32* @multibyte, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @valid_range(i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116, %113
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %129, %125, %121
  br label %133

133:                                              ; preds = %132, %116
  br label %134

134:                                              ; preds = %133, %112
  br label %143

135:                                              ; preds = %73, %70, %67
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 92
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @Popwchar(i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %135
  br label %143

143:                                              ; preds = %142, %134
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %155

154:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %244

155:                                              ; preds = %151
  br label %164

156:                                              ; preds = %143
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %160, %156
  br label %164

164:                                              ; preds = %163, %155
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @Popwchar(i8* %165, i32 %166)
  br label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 93
  br i1 %170, label %67, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i8*, i8** %4, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 @gmatch(i8* %175, i8* %176)
  br label %179

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %174
  %180 = phi i32 [ %177, %174 ], [ 0, %178 ]
  store i32 %180, i32* %3, align 4
  br label %244

181:                                              ; preds = %44
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @Popwchar(i8* %182, i32 %183)
  br label %185

185:                                              ; preds = %44, %181
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %244

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %44, %190
  %192 = load i32, i32* %7, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i8*, i8** %4, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = call i32 @gmatch(i8* %195, i8* %196)
  br label %199

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi i32 [ %197, %194 ], [ 0, %198 ]
  store i32 %200, i32* %3, align 4
  br label %244

201:                                              ; preds = %44
  br label %202

202:                                              ; preds = %207, %201
  %203 = load i8*, i8** %5, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 42
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %5, align 8
  br label %202

210:                                              ; preds = %202
  %211 = load i8*, i8** %5, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 1, i32* %3, align 4
  br label %244

216:                                              ; preds = %210
  %217 = load i8*, i8** %6, align 8
  store i8* %217, i8** %4, align 8
  br label %218

218:                                              ; preds = %242, %216
  %219 = load i8*, i8** %4, align 8
  %220 = load i8, i8* %219, align 1
  %221 = icmp ne i8 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %218
  %223 = load i8*, i8** %4, align 8
  %224 = load i8*, i8** %5, align 8
  %225 = call i32 @gmatch(i8* %223, i8* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i32 1, i32* %3, align 4
  br label %244

228:                                              ; preds = %222
  %229 = load i8*, i8** %4, align 8
  %230 = load i32, i32* @MB_LEN_MAX, align 4
  %231 = call i32 @mbtowc(i32* %10, i8* %229, i32 %230)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i8*, i8** %4, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %4, align 8
  br label %242

237:                                              ; preds = %228
  %238 = load i32, i32* %9, align 4
  %239 = load i8*, i8** %4, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8* %241, i8** %4, align 8
  br label %242

242:                                              ; preds = %237, %234
  br label %218

243:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %243, %227, %215, %199, %189, %179, %154, %110, %54, %40, %36
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @mbtowc(i32*, i8*, i32) #1

declare dso_local i32 @Popwchar(i8*, i32) #1

declare dso_local i32 @valid_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
