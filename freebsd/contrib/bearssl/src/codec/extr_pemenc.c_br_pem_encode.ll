; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/codec/extr_pemenc.c_br_pem_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/codec/extr_pemenc.c_br_pem_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BR_PEM_LINE64 = common dso_local global i32 0, align 4
@BR_PEM_CRLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-----END \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_pem_encode(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BR_PEM_LINE64, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 47
  %31 = udiv i64 %30, 48
  store i64 %31, i64* %14, align 8
  br label %36

32:                                               ; preds = %5
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 56
  %35 = udiv i64 %34, 57
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %13, align 8
  %38 = shl i64 %37, 1
  %39 = add i64 %38, 30
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 2
  %42 = udiv i64 %41, 3
  %43 = shl i64 %42, 2
  %44 = add i64 %39, %43
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %44, %45
  %47 = add i64 %46, 2
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @BR_PEM_CRLF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, 2
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %52, %36
  %58 = load i8*, i8** %7, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %6, align 8
  br label %281

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %16, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @memmove(i8* %70, i8* %71, i64 %72)
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @memcpy(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 11
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %13, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i8* %78, i8* %79, i32 %81)
  %83 = load i64, i64* %13, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %15, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @memcpy(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 5
  store i8* %89, i8** %15, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @BR_PEM_CRLF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %62
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %15, align 8
  store i8 13, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %62
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %15, align 8
  store i8 10, i8* %98, align 1
  store i32 0, i32* %18, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @BR_PEM_LINE64, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 16, i32 19
  store i32 %105, i32* %19, align 4
  store i64 0, i64* %17, align 8
  br label %106

106:                                              ; preds = %175, %97
  %107 = load i64, i64* %17, align 8
  %108 = add i64 %107, 2
  %109 = load i64, i64* %9, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %178

111:                                              ; preds = %106
  %112 = load i8*, i8** %16, align 8
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 16
  %118 = load i8*, i8** %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = add i64 %119, 1
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = or i32 %117, %124
  %126 = load i8*, i8** %16, align 8
  %127 = load i64, i64* %17, align 8
  %128 = add i64 %127, 2
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %125, %131
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = ashr i32 %133, 18
  %135 = call i8* @b64char(i32 %134)
  %136 = ptrtoint i8* %135 to i8
  %137 = load i8*, i8** %15, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %15, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i32, i32* %20, align 4
  %140 = ashr i32 %139, 12
  %141 = and i32 %140, 63
  %142 = call i8* @b64char(i32 %141)
  %143 = ptrtoint i8* %142 to i8
  %144 = load i8*, i8** %15, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %15, align 8
  store i8 %143, i8* %144, align 1
  %146 = load i32, i32* %20, align 4
  %147 = ashr i32 %146, 6
  %148 = and i32 %147, 63
  %149 = call i8* @b64char(i32 %148)
  %150 = ptrtoint i8* %149 to i8
  %151 = load i8*, i8** %15, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %15, align 8
  store i8 %150, i8* %151, align 1
  %153 = load i32, i32* %20, align 4
  %154 = and i32 %153, 63
  %155 = call i8* @b64char(i32 %154)
  %156 = ptrtoint i8* %155 to i8
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %15, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %111
  store i32 0, i32* %18, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @BR_PEM_CRLF, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i8*, i8** %15, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %15, align 8
  store i8 13, i8* %169, align 1
  br label %171

171:                                              ; preds = %168, %163
  %172 = load i8*, i8** %15, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %15, align 8
  store i8 10, i8* %172, align 1
  br label %174

174:                                              ; preds = %171, %111
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %17, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %17, align 8
  br label %106

178:                                              ; preds = %106
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* %9, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %237

182:                                              ; preds = %178
  %183 = load i8*, i8** %16, align 8
  %184 = load i64, i64* %17, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = shl i32 %187, 16
  store i32 %188, i32* %21, align 4
  %189 = load i64, i64* %17, align 8
  %190 = add i64 %189, 1
  %191 = load i64, i64* %9, align 8
  %192 = icmp ult i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %182
  %194 = load i8*, i8** %16, align 8
  %195 = load i64, i64* %17, align 8
  %196 = add i64 %195, 1
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl i32 %199, 8
  %201 = load i32, i32* %21, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %21, align 4
  br label %203

203:                                              ; preds = %193, %182
  %204 = load i32, i32* %21, align 4
  %205 = ashr i32 %204, 18
  %206 = call i8* @b64char(i32 %205)
  %207 = ptrtoint i8* %206 to i8
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %15, align 8
  store i8 %207, i8* %208, align 1
  %210 = load i32, i32* %21, align 4
  %211 = ashr i32 %210, 12
  %212 = and i32 %211, 63
  %213 = call i8* @b64char(i32 %212)
  %214 = ptrtoint i8* %213 to i8
  %215 = load i8*, i8** %15, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %15, align 8
  store i8 %214, i8* %215, align 1
  %217 = load i64, i64* %17, align 8
  %218 = add i64 %217, 1
  %219 = load i64, i64* %9, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %203
  %222 = load i32, i32* %21, align 4
  %223 = ashr i32 %222, 6
  %224 = and i32 %223, 63
  %225 = call i8* @b64char(i32 %224)
  %226 = ptrtoint i8* %225 to i8
  %227 = load i8*, i8** %15, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %15, align 8
  store i8 %226, i8* %227, align 1
  br label %232

229:                                              ; preds = %203
  %230 = load i8*, i8** %15, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %15, align 8
  store i8 61, i8* %230, align 1
  br label %232

232:                                              ; preds = %229, %221
  %233 = load i8*, i8** %15, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %15, align 8
  store i8 61, i8* %233, align 1
  %235 = load i32, i32* %18, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %232, %178
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %237
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @BR_PEM_CRLF, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load i8*, i8** %15, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %15, align 8
  store i8 13, i8* %246, align 1
  br label %248

248:                                              ; preds = %245, %240
  %249 = load i8*, i8** %15, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %15, align 8
  store i8 10, i8* %249, align 1
  br label %251

251:                                              ; preds = %248, %237
  %252 = load i8*, i8** %15, align 8
  %253 = call i32 @memcpy(i8* %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %254 = load i8*, i8** %15, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 9
  store i8* %255, i8** %15, align 8
  %256 = load i8*, i8** %15, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = load i64, i64* %13, align 8
  %259 = trunc i64 %258 to i32
  %260 = call i32 @memcpy(i8* %256, i8* %257, i32 %259)
  %261 = load i64, i64* %13, align 8
  %262 = load i8*, i8** %15, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 %261
  store i8* %263, i8** %15, align 8
  %264 = load i8*, i8** %15, align 8
  %265 = call i32 @memcpy(i8* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %266 = load i8*, i8** %15, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 5
  store i8* %267, i8** %15, align 8
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @BR_PEM_CRLF, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %251
  %273 = load i8*, i8** %15, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %15, align 8
  store i8 13, i8* %273, align 1
  br label %275

275:                                              ; preds = %272, %251
  %276 = load i8*, i8** %15, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %15, align 8
  store i8 10, i8* %276, align 1
  %278 = load i8*, i8** %15, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %15, align 8
  store i8 0, i8* %278, align 1
  %280 = load i64, i64* %12, align 8
  store i64 %280, i64* %6, align 8
  br label %281

281:                                              ; preds = %275, %60
  %282 = load i64, i64* %6, align 8
  ret i64 %282
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @b64char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
