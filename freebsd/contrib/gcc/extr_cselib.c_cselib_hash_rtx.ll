; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_hash_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_hash_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cselib_hash_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cselib_hash_rtx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @GET_CODE(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @GET_MODE(i32 %23)
  %25 = trunc i64 %24 to i32
  %26 = add i32 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %163 [
    i32 138, label %30
    i32 130, label %30
    i32 141, label %43
    i32 142, label %56
    i32 140, label %92
    i32 139, label %112
    i32 129, label %126
    i32 133, label %156
    i32 132, label %156
    i32 136, label %156
    i32 135, label %156
    i32 134, label %156
    i32 131, label %156
    i32 137, label %156
    i32 143, label %156
    i32 144, label %156
    i32 128, label %156
    i32 145, label %157
  ]

30:                                               ; preds = %2, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @GET_MODE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_3__* @cselib_lookup(i32 %31, i64 %33, i32 %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %264

39:                                               ; preds = %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %264

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @INTVAL(i32 %44)
  %46 = add i32 18048, %45
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 141, %53 ]
  store i32 %55, i32* %3, align 4
  br label %264

56:                                               ; preds = %2
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @GET_MODE(i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = add i32 %57, %60
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @GET_MODE(i32 %64)
  %66 = load i64, i64* @VOIDmode, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @CONST_DOUBLE_REAL_VALUE(i32 %69)
  %71 = call i32 @real_hash(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %84

74:                                               ; preds = %56
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @CONST_DOUBLE_LOW(i32 %75)
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @CONST_DOUBLE_HIGH(i32 %78)
  %80 = trunc i64 %79 to i32
  %81 = add i32 %77, %80
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %74, %68
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  br label %90

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 142, %89 ]
  store i32 %91, i32* %3, align 4
  br label %264

92:                                               ; preds = %2
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @CONST_VECTOR_NUNITS(i32 %93)
  store i32 %94, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %107, %92
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @CONST_VECTOR_ELT(i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @cselib_hash_rtx(i32 %103, i32 0)
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %95

110:                                              ; preds = %95
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %3, align 4
  br label %264

112:                                              ; preds = %2
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @XEXP(i32 %113, i32 0)
  %115 = call i32 @CODE_LABEL_NUMBER(i32 %114)
  %116 = add i32 17792, %115
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %11, align 4
  br label %124

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 139, %123 ]
  store i32 %125, i32* %3, align 4
  br label %264

126:                                              ; preds = %2
  store i32 0, i32* %14, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i64 @XSTR(i32 %127, i32 0)
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %15, align 8
  br label %130

130:                                              ; preds = %134, %126
  %131 = load i8*, i8** %15, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* %14, align 4
  %136 = shl i32 %135, 7
  %137 = load i8*, i8** %15, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %15, align 8
  %139 = load i8, i8* %137, align 1
  %140 = zext i8 %139 to i32
  %141 = add i32 %136, %140
  %142 = load i32, i32* %14, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %14, align 4
  br label %130

144:                                              ; preds = %130
  %145 = load i32, i32* %14, align 4
  %146 = add i32 16512, %145
  %147 = load i32, i32* %11, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %11, align 4
  br label %154

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ 129, %153 ]
  store i32 %155, i32* %3, align 4
  br label %264

156:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %264

157:                                              ; preds = %2
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @MEM_VOLATILE_P(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %264

162:                                              ; preds = %157
  br label %164

163:                                              ; preds = %2
  br label %164

164:                                              ; preds = %163, %162
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @GET_RTX_LENGTH(i32 %165)
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i8* @GET_RTX_FORMAT(i32 %168)
  store i8* %169, i8** %10, align 8
  br label %170

170:                                              ; preds = %250, %164
  %171 = load i32, i32* %7, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %253

173:                                              ; preds = %170
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  switch i32 %179, label %247 [
    i32 101, label %180
    i32 69, label %194
    i32 115, label %219
    i32 105, label %240
    i32 48, label %246
    i32 116, label %246
  ]

180:                                              ; preds = %173
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @XEXP(i32 %181, i32 %182)
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @cselib_hash_rtx(i32 %184, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %264

190:                                              ; preds = %180
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %11, align 4
  %193 = add i32 %192, %191
  store i32 %193, i32* %11, align 4
  br label %249

194:                                              ; preds = %173
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %215, %194
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @XVECLEN(i32 %197, i32 %198)
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %195
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @XVECEXP(i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @cselib_hash_rtx(i32 %205, i32 %206)
  store i32 %207, i32* %18, align 4
  %208 = load i32, i32* %18, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  store i32 0, i32* %3, align 4
  br label %264

211:                                              ; preds = %201
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %11, align 4
  %214 = add i32 %213, %212
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  br label %195

218:                                              ; preds = %195
  br label %249

219:                                              ; preds = %173
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %7, align 4
  %222 = call i64 @XSTR(i32 %220, i32 %221)
  %223 = inttoptr i64 %222 to i8*
  store i8* %223, i8** %19, align 8
  %224 = load i8*, i8** %19, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %239

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %231, %226
  %228 = load i8*, i8** %19, align 8
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = load i8*, i8** %19, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %19, align 8
  %234 = load i8, i8* %232, align 1
  %235 = zext i8 %234 to i32
  %236 = load i32, i32* %11, align 4
  %237 = add i32 %236, %235
  store i32 %237, i32* %11, align 4
  br label %227

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %219
  br label %249

240:                                              ; preds = %173
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @XINT(i32 %241, i32 %242)
  %244 = load i32, i32* %11, align 4
  %245 = add i32 %244, %243
  store i32 %245, i32* %11, align 4
  br label %249

246:                                              ; preds = %173, %173
  br label %249

247:                                              ; preds = %173
  %248 = call i32 (...) @gcc_unreachable()
  br label %249

249:                                              ; preds = %247, %246, %240, %239, %218, %190
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %7, align 4
  br label %170

253:                                              ; preds = %170
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* %11, align 4
  br label %262

258:                                              ; preds = %253
  %259 = load i32, i32* %4, align 4
  %260 = call i32 @GET_CODE(i32 %259)
  %261 = add i32 1, %260
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i32 [ %257, %256 ], [ %261, %258 ]
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %210, %189, %161, %156, %154, %124, %110, %90, %54, %39, %38
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local %struct.TYPE_3__* @cselib_lookup(i32, i64, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @real_hash(i32) #1

declare dso_local i32 @CONST_DOUBLE_REAL_VALUE(i32) #1

declare dso_local i64 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i64 @CONST_DOUBLE_HIGH(i32) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @XSTR(i32, i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
