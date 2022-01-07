; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_muladd.c_br_i31_muladd_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_muladd.c_br_i31_muladd_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i31_muladd_small(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %236

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 31
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 31
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @br_rem(i32 %47, i32 %48, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  br label %236

55:                                               ; preds = %33
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 31
  %58 = ashr i32 %57, 5
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 31
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %55
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %77, 1
  %79 = mul i64 %78, 4
  %80 = call i32 @memmove(i32* %74, i32* %76, i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %13, align 4
  br label %152

92:                                               ; preds = %55
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub i32 31, %97
  %99 = shl i32 %96, %98
  %100 = load i32*, i32** %4, align 8
  %101 = load i64, i64* %10, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %104, %105
  %107 = or i32 %99, %106
  %108 = and i32 %107, 2147483647
  store i32 %108, i32* %11, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i64, i64* %10, align 8
  %114 = sub i64 %113, 1
  %115 = mul i64 %114, 4
  %116 = call i32 @memmove(i32* %110, i32* %112, i64 %115)
  %117 = load i32, i32* %5, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub i32 31, %124
  %126 = shl i32 %123, %125
  %127 = load i32*, i32** %4, align 8
  %128 = load i64, i64* %10, align 8
  %129 = sub i64 %128, 1
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %131, %132
  %134 = or i32 %126, %133
  %135 = and i32 %134, 2147483647
  store i32 %135, i32* %12, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = sub i32 31, %140
  %142 = shl i32 %139, %141
  %143 = load i32*, i32** %6, align 8
  %144 = load i64, i64* %10, align 8
  %145 = sub i64 %144, 1
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = ashr i32 %147, %148
  %150 = or i32 %142, %149
  %151 = and i32 %150, 2147483647
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %92, %68
  %153 = load i32, i32* %11, align 4
  %154 = ashr i32 %153, 1
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = shl i32 %156, 31
  %158 = or i32 %155, %157
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @br_div(i32 %154, i32 %158, i32 %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @EQ(i32 %161, i32 %162)
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @EQ(i32 %164, i32 0)
  %166 = load i32, i32* %15, align 4
  %167 = sub nsw i32 %166, 1
  %168 = call i32 @MUX(i32 %165, i32 0, i32 %167)
  %169 = call i32 @MUX(i32 %163, i32 2147483647, i32 %168)
  store i32 %169, i32* %16, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %17, align 4
  store i64 1, i64* %9, align 8
  br label %170

170:                                              ; preds = %213, %152
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %10, align 8
  %173 = icmp ule i64 %171, %172
  br i1 %173, label %174, label %216

174:                                              ; preds = %170
  %175 = load i32*, i32** %6, align 8
  %176 = load i64, i64* %9, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %22, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @MUL31(i32 %179, i32 %180)
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %26, align 4
  %184 = load i32, i32* %26, align 4
  %185 = ashr i32 %184, 31
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %26, align 4
  %187 = and i32 %186, 2147483647
  store i32 %187, i32* %23, align 4
  %188 = load i32*, i32** %4, align 8
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %23, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %25, align 4
  %195 = load i32, i32* %25, align 4
  %196 = ashr i32 %195, 31
  %197 = load i32, i32* %20, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %20, align 4
  %199 = load i32, i32* %25, align 4
  %200 = and i32 %199, 2147483647
  store i32 %200, i32* %25, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = load i64, i64* %9, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32 %201, i32* %204, align 4
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %22, align 4
  %207 = call i32 @EQ(i32 %205, i32 %206)
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %22, align 4
  %211 = call i32 @GT(i32 %209, i32 %210)
  %212 = call i32 @MUX(i32 %207, i32 %208, i32 %211)
  store i32 %212, i32* %17, align 4
  br label %213

213:                                              ; preds = %174
  %214 = load i64, i64* %9, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %9, align 8
  br label %170

216:                                              ; preds = %170
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @GT(i32 %217, i32 %218)
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %19, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @LT(i32 %223, i32 %224)
  %226 = or i32 %222, %225
  %227 = and i32 %221, %226
  store i32 %227, i32* %18, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %19, align 4
  %231 = call i32 @br_i31_add(i32* %228, i32* %229, i32 %230)
  %232 = load i32*, i32** %4, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %18, align 4
  %235 = call i32 @br_i31_sub(i32* %232, i32* %233, i32 %234)
  br label %236

236:                                              ; preds = %216, %36, %32
  ret void
}

declare dso_local i32 @br_rem(i32, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @br_div(i32, i32, i32) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @MUL31(i32, i32) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @LT(i32, i32) #1

declare dso_local i32 @br_i31_add(i32*, i32*, i32) #1

declare dso_local i32 @br_i31_sub(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
