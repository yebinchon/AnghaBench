; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_parse_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_parse_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_method(i8* %0, i8* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i8 0, i8* %15, align 1
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @gdb_assert(i32 %21)
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load i8**, i8*** %10, align 8
  %28 = icmp ne i8** %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @gdb_assert(i32 %29)
  %31 = load i8**, i8*** %11, align 8
  %32 = icmp ne i8** %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @gdb_assert(i32 %33)
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %41, %5
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %12, align 8
  br label %36

44:                                               ; preds = %36
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 39
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  store i32 1, i32* %14, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %58, %52
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %12, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 43
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %61
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  %76 = load i8, i8* %74, align 1
  store i8 %76, i8* %15, align 1
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %83, %77
  %79 = load i8*, i8** %12, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isspace(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %12, align 8
  br label %78

86:                                               ; preds = %78
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 91
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i8* null, i8** %6, align 8
  br label %259

92:                                               ; preds = %86
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  store i8* %95, i8** %16, align 8
  br label %96

96:                                               ; preds = %108, %92
  %97 = load i8*, i8** %12, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @isalnum(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 95
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ true, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %12, align 8
  br label %96

111:                                              ; preds = %106
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %13, align 8
  br label %113

113:                                              ; preds = %118, %111
  %114 = load i8*, i8** %13, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @isspace(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %13, align 8
  br label %113

121:                                              ; preds = %113
  %122 = load i8*, i8** %13, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 40
  br i1 %125, label %126, label %157

126:                                              ; preds = %121
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %13, align 8
  br label %129

129:                                              ; preds = %134, %126
  %130 = load i8*, i8** %13, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @isspace(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %13, align 8
  br label %129

137:                                              ; preds = %129
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %17, align 8
  br label %139

139:                                              ; preds = %151, %137
  %140 = load i8*, i8** %13, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @isalnum(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load i8*, i8** %13, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 95
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i1 [ true, %139 ], [ %148, %144 ]
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = load i8*, i8** %13, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %13, align 8
  br label %139

154:                                              ; preds = %149
  %155 = load i8*, i8** %13, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %13, align 8
  store i8 0, i8* %155, align 1
  br label %157

157:                                              ; preds = %154, %121
  %158 = load i8*, i8** %12, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %12, align 8
  store i8 0, i8* %158, align 1
  %160 = load i8*, i8** %13, align 8
  store i8* %160, i8** %18, align 8
  %161 = load i8*, i8** %13, align 8
  store i8* %161, i8** %12, align 8
  br label %162

162:                                              ; preds = %196, %157
  %163 = load i8*, i8** %13, align 8
  %164 = load i8, i8* %163, align 1
  %165 = call i64 @isalnum(i8 signext %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %162
  %168 = load i8*, i8** %13, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 95
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** %13, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 58
  br i1 %176, label %177, label %182

177:                                              ; preds = %172, %167, %162
  %178 = load i8*, i8** %13, align 8
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %12, align 8
  store i8 %179, i8* %180, align 1
  br label %196

182:                                              ; preds = %172
  %183 = load i8*, i8** %13, align 8
  %184 = load i8, i8* %183, align 1
  %185 = call i64 @isspace(i8 signext %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %195

188:                                              ; preds = %182
  %189 = load i8*, i8** %13, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 93
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %199

194:                                              ; preds = %188
  store i8* null, i8** %6, align 8
  br label %259

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %177
  %197 = load i8*, i8** %13, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %13, align 8
  br label %162

199:                                              ; preds = %193
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %12, align 8
  store i8 0, i8* %200, align 1
  %202 = load i8*, i8** %13, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %13, align 8
  br label %204

204:                                              ; preds = %209, %199
  %205 = load i8*, i8** %13, align 8
  %206 = load i8, i8* %205, align 1
  %207 = call i64 @isspace(i8 signext %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i8*, i8** %13, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %13, align 8
  br label %204

212:                                              ; preds = %204
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %212
  %216 = load i8*, i8** %13, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 39
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i8* null, i8** %6, align 8
  br label %259

221:                                              ; preds = %215
  %222 = load i8*, i8** %13, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %13, align 8
  br label %224

224:                                              ; preds = %229, %221
  %225 = load i8*, i8** %13, align 8
  %226 = load i8, i8* %225, align 1
  %227 = call i64 @isspace(i8 signext %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i8*, i8** %13, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %13, align 8
  br label %224

232:                                              ; preds = %224
  br label %233

233:                                              ; preds = %232, %212
  %234 = load i8*, i8** %8, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i8, i8* %15, align 1
  %238 = load i8*, i8** %8, align 8
  store i8 %237, i8* %238, align 1
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i8**, i8*** %9, align 8
  %241 = icmp ne i8** %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i8*, i8** %16, align 8
  %244 = load i8**, i8*** %9, align 8
  store i8* %243, i8** %244, align 8
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i8**, i8*** %10, align 8
  %247 = icmp ne i8** %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i8*, i8** %17, align 8
  %250 = load i8**, i8*** %10, align 8
  store i8* %249, i8** %250, align 8
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i8**, i8*** %11, align 8
  %253 = icmp ne i8** %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i8*, i8** %18, align 8
  %256 = load i8**, i8*** %11, align 8
  store i8* %255, i8** %256, align 8
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i8*, i8** %13, align 8
  store i8* %258, i8** %6, align 8
  br label %259

259:                                              ; preds = %257, %220, %194, %91
  %260 = load i8*, i8** %6, align 8
  ret i8* %260
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
