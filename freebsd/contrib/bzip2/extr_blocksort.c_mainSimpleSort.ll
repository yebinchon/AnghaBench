; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_mainSimpleSort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_mainSimpleSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@incs = common dso_local global i32* null, align 8
@True = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32*)* @mainSimpleSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainSimpleSort(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  br label %253

30:                                               ; preds = %8
  store i32 0, i32* %21, align 4
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i32*, i32** @incs, align 8
  %33 = load i32, i32* %21, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %21, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %21, align 4
  br label %31

42:                                               ; preds = %31
  %43 = load i32, i32* %21, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %250, %42
  %46 = load i32, i32* %21, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %253

48:                                               ; preds = %45
  %49 = load i32*, i32** @incs, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %19, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %248, %48
  %58 = load i64, i64* @True, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %249

60:                                               ; preds = %57
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %249

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %113, %65
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i64 @mainGtU(i32 %81, i32 %84, i32* %85, i32* %86, i32 %87, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %72
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = icmp sle i32 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %91
  br label %114

113:                                              ; preds = %91
  br label %72

114:                                              ; preds = %112, %72
  %115 = load i32, i32* %22, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %249

126:                                              ; preds = %114
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %174, %126
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32*, i32** %10, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = call i64 @mainGtU(i32 %142, i32 %145, i32* %146, i32* %147, i32 %148, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %133
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %19, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = sub nsw i32 %164, %165
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = icmp sle i32 %167, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %152
  br label %175

174:                                              ; preds = %152
  br label %133

175:                                              ; preds = %173, %133
  %176 = load i32, i32* %22, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %249

187:                                              ; preds = %175
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %22, align 4
  %193 = load i32, i32* %17, align 4
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %235, %187
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %19, align 4
  %198 = sub nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32*, i32** %10, align 8
  %208 = load i32*, i32** %11, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load i32*, i32** %16, align 8
  %211 = call i64 @mainGtU(i32 %203, i32 %206, i32* %207, i32* %208, i32 %209, i32* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %236

213:                                              ; preds = %194
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %19, align 4
  %217 = sub nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %225, %226
  store i32 %227, i32* %18, align 4
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %19, align 4
  %231 = add nsw i32 %229, %230
  %232 = sub nsw i32 %231, 1
  %233 = icmp sle i32 %228, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %213
  br label %236

235:                                              ; preds = %213
  br label %194

236:                                              ; preds = %234, %194
  %237 = load i32, i32* %22, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %17, align 4
  %244 = load i32*, i32** %16, align 8
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  br label %253

248:                                              ; preds = %236
  br label %57

249:                                              ; preds = %186, %125, %64, %57
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %21, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %21, align 4
  br label %45

253:                                              ; preds = %29, %247, %45
  ret void
}

declare dso_local i64 @mainGtU(i32, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
