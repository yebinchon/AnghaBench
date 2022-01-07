; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_add_mixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_add_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@F256 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @p256_add_mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p256_add_mixed(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca [20 x i32], align 16
  %7 = alloca [20 x i32], align 16
  %8 = alloca [20 x i32], align 16
  %9 = alloca [20 x i32], align 16
  %10 = alloca [20 x i32], align 16
  %11 = alloca [20 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @memcpy(i32* %14, i32* %17, i32 80)
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memcpy(i32* %19, i32* %22, i32 80)
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @square_f256(i32* %24, i32* %27)
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %34 = call i32 @mul_f256(i32* %29, i32* %32, i32* %33)
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %40 = call i32 @mul_f256(i32* %35, i32* %38, i32* %39)
  %41 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %46 = call i32 @mul_f256(i32* %41, i32* %44, i32* %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %83, %2
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 20
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  %51 = load i32*, i32** @F256, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %56, %60
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** @F256, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 1
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %72, %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %50
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %47

86:                                               ; preds = %47
  %87 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %89 = call i32 @norm13(i32* %87, i32* %88, i32 20)
  %90 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %91 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %92 = call i32 @norm13(i32* %90, i32* %91, i32 20)
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %94 = call i32 @reduce_f256(i32* %93)
  %95 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %96 = call i32 @reduce_final_f256(i32* %95)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %107, %86
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 20
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %97

110:                                              ; preds = %97
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 0, %112
  %114 = or i32 %111, %113
  %115 = ashr i32 %114, 31
  store i32 %115, i32* %12, align 4
  %116 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %117 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %118 = call i32 @square_f256(i32* %116, i32* %117)
  %119 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %120 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %121 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %122 = call i32 @mul_f256(i32* %119, i32* %120, i32* %121)
  %123 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %124 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %125 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %126 = call i32 @mul_f256(i32* %123, i32* %124, i32* %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %131 = call i32 @square_f256(i32* %129, i32* %130)
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %161, %110
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 20
  br i1 %134, label %135, label %164

135:                                              ; preds = %132
  %136 = load i32*, i32** @F256, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 3
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %141, %145
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 1
  %152 = sub nsw i32 %146, %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %152
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %135
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %132

164:                                              ; preds = %132
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @norm13(i32* %167, i32* %170, i32 20)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @reduce_f256(i32* %174)
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %199, %164
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 20
  br i1 %178, label %179, label %202

179:                                              ; preds = %176
  %180 = load i32*, i32** @F256, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %185, %192
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %193
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %179
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %176

202:                                              ; preds = %176
  %203 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %204 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %205 = call i32 @norm13(i32* %203, i32* %204, i32 20)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %210 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %211 = call i32 @mul_f256(i32* %208, i32* %209, i32* %210)
  %212 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %213 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %214 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %215 = call i32 @mul_f256(i32* %212, i32* %213, i32* %214)
  store i32 0, i32* %13, align 4
  br label %216

216:                                              ; preds = %239, %202
  %217 = load i32, i32* %13, align 4
  %218 = icmp slt i32 %217, 20
  br i1 %218, label %219, label %242

219:                                              ; preds = %216
  %220 = load i32*, i32** @F256, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 1
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %225, %229
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, %230
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %219
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %13, align 4
  br label %216

242:                                              ; preds = %216
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @norm13(i32* %245, i32* %248, i32 20)
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @reduce_f256(i32* %252)
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %261 = call i32 @mul_f256(i32* %256, i32* %259, i32* %260)
  %262 = load i32, i32* %12, align 4
  ret i32 %262
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @norm13(i32*, i32*, i32) #1

declare dso_local i32 @reduce_f256(i32*) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
