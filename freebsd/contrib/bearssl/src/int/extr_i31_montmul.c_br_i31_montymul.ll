; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_montmul.c_br_i31_montymul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_montmul.c_br_i31_montymul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i31_montymul(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 31
  %25 = ashr i32 %24, 5
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = and i64 %27, -4
  store i64 %28, i64* %12, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @br_i31_zero(i32* %29, i32 %32)
  store i32 0, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %241, %5
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %244

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MUL31_lo(i32 %51, i32 %54)
  %56 = add nsw i32 %46, %55
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @MUL31_lo(i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %14, align 8
  br label %59

59:                                               ; preds = %188, %38
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %191

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MUL31(i32 %69, i32 %74)
  %76 = add nsw i32 %68, %75
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, 1
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MUL31(i32 %77, i32 %82)
  %84 = add nsw i32 %76, %83
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = ashr i32 %87, 31
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = and i32 %89, 2147483647
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %14, align 8
  %93 = add i64 %92, 0
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %96, 2
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 2
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @MUL31(i32 %100, i32 %105)
  %107 = add nsw i32 %99, %106
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 2
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MUL31(i32 %108, i32 %113)
  %115 = add nsw i32 %107, %114
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = ashr i32 %118, 31
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %19, align 4
  %121 = and i32 %120, 2147483647
  %122 = load i32*, i32** %6, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, 1
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* %14, align 8
  %128 = add i64 %127, 3
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 3
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @MUL31(i32 %131, i32 %136)
  %138 = add nsw i32 %130, %137
  %139 = load i32, i32* %16, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %141, 3
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MUL31(i32 %139, i32 %144)
  %146 = add nsw i32 %138, %145
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = ashr i32 %149, 31
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %19, align 4
  %152 = and i32 %151, 2147483647
  %153 = load i32*, i32** %6, align 8
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, 2
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i64, i64* %14, align 8
  %159 = add i64 %158, 4
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = load i64, i64* %14, align 8
  %165 = add i64 %164, 4
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @MUL31(i32 %162, i32 %167)
  %169 = add nsw i32 %161, %168
  %170 = load i32, i32* %16, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = load i64, i64* %14, align 8
  %173 = add i64 %172, 4
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @MUL31(i32 %170, i32 %175)
  %177 = add nsw i32 %169, %176
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = ashr i32 %180, 31
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %19, align 4
  %183 = and i32 %182, 2147483647
  %184 = load i32*, i32** %6, align 8
  %185 = load i64, i64* %14, align 8
  %186 = add i64 %185, 3
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  br label %188

188:                                              ; preds = %63
  %189 = load i64, i64* %14, align 8
  %190 = add i64 %189, 4
  store i64 %190, i64* %14, align 8
  br label %59

191:                                              ; preds = %59
  br label %192

192:                                              ; preds = %227, %191
  %193 = load i64, i64* %14, align 8
  %194 = load i64, i64* %11, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %230

196:                                              ; preds = %192
  %197 = load i32*, i32** %6, align 8
  %198 = load i64, i64* %14, align 8
  %199 = add i64 %198, 1
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32*, i32** %8, align 8
  %204 = load i64, i64* %14, align 8
  %205 = add i64 %204, 1
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @MUL31(i32 %202, i32 %207)
  %209 = add nsw i32 %201, %208
  %210 = load i32, i32* %16, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = load i64, i64* %14, align 8
  %213 = add i64 %212, 1
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @MUL31(i32 %210, i32 %215)
  %217 = add nsw i32 %209, %216
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %20, align 4
  %220 = load i32, i32* %20, align 4
  %221 = ashr i32 %220, 31
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %20, align 4
  %223 = and i32 %222, 2147483647
  %224 = load i32*, i32** %6, align 8
  %225 = load i64, i64* %14, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %196
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %14, align 8
  br label %192

230:                                              ; preds = %192
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %15, align 4
  %235 = and i32 %234, 2147483647
  %236 = load i32*, i32** %6, align 8
  %237 = load i64, i64* %11, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 %235, i32* %238, align 4
  %239 = load i32, i32* %15, align 4
  %240 = ashr i32 %239, 31
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %230
  %242 = load i64, i64* %13, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %13, align 8
  br label %34

244:                                              ; preds = %34
  %245 = load i32*, i32** %9, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %247, i32* %249, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @NEQ(i32 %252, i32 0)
  %254 = load i32*, i32** %6, align 8
  %255 = load i32*, i32** %9, align 8
  %256 = call i32 @br_i31_sub(i32* %254, i32* %255, i32 0)
  %257 = call i32 @NOT(i32 %256)
  %258 = or i32 %253, %257
  %259 = call i32 @br_i31_sub(i32* %250, i32* %251, i32 %258)
  ret void
}

declare dso_local i32 @br_i31_zero(i32*, i32) #1

declare dso_local i32 @MUL31_lo(i32, i32) #1

declare dso_local i32 @MUL31(i32, i32) #1

declare dso_local i32 @br_i31_sub(i32*, i32*, i32) #1

declare dso_local i32 @NEQ(i32, i32) #1

declare dso_local i32 @NOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
