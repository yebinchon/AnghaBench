; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_md5.c_SHATransform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_md5.c_SHATransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHATransform.SHA1Table = internal global [4 x i32] [i32 1518500249, i32 1859775393, i32 -1894007588, i32 -899497514], align 16
@SHA1_F1 = common dso_local global i32 0, align 4
@SHA1_F2 = common dso_local global i32 0, align 4
@SHA1_F3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SHATransform(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %28, i32* %29, align 16
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %80, %2
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 16
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 24
  %40 = and i32 %39, 255
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 65280
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = and i32 %61, 16711680
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = and i32 %73, -16777216
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %33
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %30

83:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %115, %83
  %85 = load i32, i32* %8, align 4
  %86 = icmp ult i32 %85, 64
  br i1 %86, label %87, label %118

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add i32 2, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %91, %96
  %98 = load i32, i32* %8, align 4
  %99 = add i32 8, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %97, %102
  %104 = load i32, i32* %8, align 4
  %105 = add i32 13, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %103, %108
  %110 = call i32 @CYCLIC_LEFT_SHIFT(i32 %109, i32 1)
  %111 = load i32, i32* %8, align 4
  %112 = add i32 16, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %87
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %84

118:                                              ; preds = %84
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %228, %118
  %120 = load i32, i32* %8, align 4
  %121 = icmp ult i32 %120, 80
  br i1 %121, label %122, label %231

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp ult i32 %123, 20
  br i1 %124, label %125, label %143

125:                                              ; preds = %122
  %126 = load i32, i32* @SHA1_F1, align 4
  %127 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %136 = load i32, i32* %135, align 16
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @SHATransform.SHA1Table, i64 0, i64 0), align 16
  %142 = call i32 @SHA1Step(i32 %126, i32 %128, i32 %130, i32 %132, i32 %134, i32 %136, i32 %140, i32 %141)
  br label %211

143:                                              ; preds = %122
  %144 = load i32, i32* %8, align 4
  %145 = icmp uge i32 %144, 20
  br i1 %145, label %146, label %167

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = icmp ult i32 %147, 40
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i32, i32* @SHA1_F2, align 4
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %160 = load i32, i32* %159, align 16
  %161 = load i32, i32* %8, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @SHATransform.SHA1Table, i64 0, i64 1), align 4
  %166 = call i32 @SHA1Step(i32 %150, i32 %152, i32 %154, i32 %156, i32 %158, i32 %160, i32 %164, i32 %165)
  br label %210

167:                                              ; preds = %146, %143
  %168 = load i32, i32* %8, align 4
  %169 = icmp uge i32 %168, 40
  br i1 %169, label %170, label %191

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = icmp ult i32 %171, 60
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  %174 = load i32, i32* @SHA1_F3, align 4
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  %177 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %184 = load i32, i32* %183, align 16
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @SHATransform.SHA1Table, i64 0, i64 2), align 8
  %190 = call i32 @SHA1Step(i32 %174, i32 %176, i32 %178, i32 %180, i32 %182, i32 %184, i32 %188, i32 %189)
  br label %209

191:                                              ; preds = %170, %167
  %192 = load i32, i32* @SHA1_F2, align 4
  %193 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %194 = load i32, i32* %193, align 16
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %202 = load i32, i32* %201, align 16
  %203 = load i32, i32* %8, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @SHATransform.SHA1Table, i64 0, i64 3), align 4
  %208 = call i32 @SHA1Step(i32 %192, i32 %194, i32 %196, i32 %198, i32 %200, i32 %202, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %191, %173
  br label %210

210:                                              ; preds = %209, %149
  br label %211

211:                                              ; preds = %210, %125
  %212 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %213 = load i32, i32* %212, align 16
  store i32 %213, i32* %7, align 4
  %214 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %215, i32* %216, align 16
  %217 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %218, i32* %219, align 4
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %221, i32* %222, align 8
  %223 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %224 = load i32, i32* %223, align 16
  %225 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %224, i32* %225, align 4
  %226 = load i32, i32* %7, align 4
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %226, i32* %227, align 16
  br label %228

228:                                              ; preds = %211
  %229 = load i32, i32* %8, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %119

231:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %246, %231
  %233 = load i32, i32* %8, align 4
  %234 = icmp ult i32 %233, 5
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = load i32, i32* %8, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %4, align 8
  %241 = load i32, i32* %8, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %239
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %235
  %247 = load i32, i32* %8, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %8, align 4
  br label %232

249:                                              ; preds = %232
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @CYCLIC_LEFT_SHIFT(i32, i32) #1

declare dso_local i32 @SHA1Step(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
