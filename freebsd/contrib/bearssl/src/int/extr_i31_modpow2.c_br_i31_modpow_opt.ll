; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_modpow2.c_br_i31_modpow_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_modpow2.c_br_i31_modpow_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i31_modpow_opt(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 63
  %34 = ashr i32 %33, 5
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %17, align 8
  %37 = mul i64 %36, 4
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %17, align 8
  %39 = and i64 %38, 1
  %40 = load i64, i64* %17, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %17, align 8
  %42 = load i32*, i32** %14, align 8
  store i32* %42, i32** %18, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %19, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %17, align 8
  %48 = shl i64 %47, 1
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %259

51:                                               ; preds = %7
  store i32 5, i32* %25, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %25, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32, i32* %25, align 4
  %57 = shl i32 1, %56
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %17, align 8
  %61 = mul i64 %59, %60
  %62 = load i64, i64* %15, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %25, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %25, align 4
  br label %52

69:                                               ; preds = %64, %52
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @br_i31_to_monty(i32* %70, i32* %71)
  %73 = load i32, i32* %25, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** %19, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @memcpy(i32* %76, i32* %77, i64 %78)
  br label %112

80:                                               ; preds = %69
  %81 = load i32*, i32** %19, align 8
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i32 @memcpy(i32* %83, i32* %84, i64 %85)
  %87 = load i32*, i32** %19, align 8
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %20, align 8
  store i64 2, i64* %21, align 8
  br label %90

90:                                               ; preds = %108, %80
  %91 = load i64, i64* %21, align 8
  %92 = load i32, i32* %25, align 4
  %93 = shl i32 1, %92
  %94 = zext i32 %93 to i64
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i32*, i32** %20, align 8
  %98 = load i64, i64* %17, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32*, i32** %20, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @br_i31_montymul(i32* %99, i32* %100, i32* %101, i32* %102, i32 %103)
  %105 = load i64, i64* %17, align 8
  %106 = load i32*, i32** %20, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %20, align 8
  br label %108

108:                                              ; preds = %96
  %109 = load i64, i64* %21, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %21, align 8
  br label %90

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @br_i31_zero(i32* %113, i32 %116)
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 31
  %123 = ashr i32 %122, 5
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %118, i64 %124
  store i32 1, i32* %125, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @br_i31_muladd_small(i32* %126, i32 0, i32* %127)
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %129

129:                                              ; preds = %241, %112
  %130 = load i32, i32* %24, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = icmp ugt i64 %133, 0
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ true, %129 ], [ %134, %132 ]
  br i1 %136, label %137, label %254

137:                                              ; preds = %135
  %138 = load i32, i32* %25, align 4
  store i32 %138, i32* %27, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %137
  %143 = load i64, i64* %11, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32, i32* %23, align 4
  %147 = shl i32 %146, 8
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %10, align 8
  %150 = load i8, i8* %148, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %147, %151
  store i32 %152, i32* %23, align 4
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, -1
  store i64 %154, i64* %11, align 8
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %155, 8
  store i32 %156, i32* %24, align 4
  br label %159

157:                                              ; preds = %142
  %158 = load i32, i32* %24, align 4
  store i32 %158, i32* %27, align 4
  br label %159

159:                                              ; preds = %157, %145
  br label %160

160:                                              ; preds = %159, %137
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %27, align 4
  %164 = sub nsw i32 %162, %163
  %165 = ashr i32 %161, %164
  %166 = load i32, i32* %27, align 4
  %167 = shl i32 1, %166
  %168 = sub nsw i32 %167, 1
  %169 = and i32 %165, %168
  store i32 %169, i32* %28, align 4
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* %24, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %173

173:                                              ; preds = %188, %160
  %174 = load i32, i32* %26, align 4
  %175 = load i32, i32* %27, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load i32*, i32** %18, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @br_i31_montymul(i32* %178, i32* %179, i32* %180, i32* %181, i32 %182)
  %184 = load i32*, i32** %9, align 8
  %185 = load i32*, i32** %18, align 8
  %186 = load i64, i64* %16, align 8
  %187 = call i32 @memcpy(i32* %184, i32* %185, i64 %186)
  br label %188

188:                                              ; preds = %177
  %189 = load i32, i32* %26, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %26, align 4
  br label %173

191:                                              ; preds = %173
  %192 = load i32, i32* %25, align 4
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %241

194:                                              ; preds = %191
  %195 = load i32*, i32** %19, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @br_i31_zero(i32* %195, i32 %198)
  %200 = load i32*, i32** %19, align 8
  %201 = load i64, i64* %17, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %20, align 8
  store i64 1, i64* %21, align 8
  br label %203

203:                                              ; preds = %237, %194
  %204 = load i64, i64* %21, align 8
  %205 = load i32, i32* %27, align 4
  %206 = shl i32 1, %205
  %207 = sext i32 %206 to i64
  %208 = icmp ult i64 %204, %207
  br i1 %208, label %209, label %240

209:                                              ; preds = %203
  %210 = load i64, i64* %21, align 8
  %211 = load i32, i32* %28, align 4
  %212 = call i32 @EQ(i64 %210, i32 %211)
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %29, align 4
  store i64 1, i64* %22, align 8
  br label %214

214:                                              ; preds = %230, %209
  %215 = load i64, i64* %22, align 8
  %216 = load i64, i64* %17, align 8
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %214
  %219 = load i32, i32* %29, align 4
  %220 = load i32*, i32** %20, align 8
  %221 = load i64, i64* %22, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %219, %223
  %225 = load i32*, i32** %19, align 8
  %226 = load i64, i64* %22, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %224
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %218
  %231 = load i64, i64* %22, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %22, align 8
  br label %214

233:                                              ; preds = %214
  %234 = load i64, i64* %17, align 8
  %235 = load i32*, i32** %20, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 %234
  store i32* %236, i32** %20, align 8
  br label %237

237:                                              ; preds = %233
  %238 = load i64, i64* %21, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %21, align 8
  br label %203

240:                                              ; preds = %203
  br label %241

241:                                              ; preds = %240, %191
  %242 = load i32*, i32** %18, align 8
  %243 = load i32*, i32** %9, align 8
  %244 = load i32*, i32** %19, align 8
  %245 = load i32*, i32** %12, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @br_i31_montymul(i32* %242, i32* %243, i32* %244, i32* %245, i32 %246)
  %248 = load i32, i32* %28, align 4
  %249 = call i32 @NEQ(i32 %248, i32 0)
  %250 = load i32*, i32** %9, align 8
  %251 = load i32*, i32** %18, align 8
  %252 = load i64, i64* %16, align 8
  %253 = call i32 @CCOPY(i32 %249, i32* %250, i32* %251, i64 %252)
  br label %129

254:                                              ; preds = %135
  %255 = load i32*, i32** %9, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @br_i31_from_monty(i32* %255, i32* %256, i32 %257)
  store i32 1, i32* %8, align 4
  br label %259

259:                                              ; preds = %254, %50
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local i32 @br_i31_to_monty(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @br_i31_montymul(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @br_i31_zero(i32*, i32) #1

declare dso_local i32 @br_i31_muladd_small(i32*, i32, i32*) #1

declare dso_local i32 @EQ(i64, i32) #1

declare dso_local i32 @CCOPY(i32, i32*, i32*, i64) #1

declare dso_local i32 @NEQ(i32, i32) #1

declare dso_local i32 @br_i31_from_monty(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
