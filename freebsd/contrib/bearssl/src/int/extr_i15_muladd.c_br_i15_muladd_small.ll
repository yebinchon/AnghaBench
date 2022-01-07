; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_muladd.c_br_i15_muladd_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_muladd.c_br_i15_muladd_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i15_muladd_small(i32* %0, i32 %1, i32* %2) #0 {
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
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %229

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ule i32 %32, 15
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 15
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @divrem16(i32 %40, i32 %43, i32* %20)
  %45 = load i32, i32* %20, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  br label %229

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 15
  %51 = lshr i32 %50, 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 15
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %48
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, 1
  %72 = mul i64 %71, 4
  %73 = call i32 @memmove(i32* %67, i32* %69, i64 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 15
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  br label %149

88:                                               ; preds = %48
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub i32 15, %93
  %95 = shl i32 %92, %94
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %10, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %100, %101
  %103 = or i32 %95, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i64, i64* %10, align 8
  %109 = sub i64 %108, 1
  %110 = mul i64 %109, 4
  %111 = call i32 @memmove(i32* %105, i32* %107, i64 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %12, align 4
  %116 = shl i32 %115, 15
  %117 = load i32*, i32** %4, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sub i32 15, %121
  %123 = shl i32 %120, %122
  %124 = load i32*, i32** %4, align 8
  %125 = load i64, i64* %10, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %128, %129
  %131 = or i32 %123, %130
  %132 = and i32 %131, 32767
  %133 = or i32 %116, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sub i32 15, %138
  %140 = shl i32 %137, %139
  %141 = load i32*, i32** %6, align 8
  %142 = load i64, i64* %10, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = ashr i32 %145, %146
  %148 = or i32 %140, %147
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %88, %61
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @divrem16(i32 %150, i32 %151, i32* null)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @EQ(i32 %153, i32 %154)
  %156 = load i32, i32* %15, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %158, 1
  %160 = ashr i32 %159, 31
  %161 = add nsw i32 %157, %160
  %162 = call i32 @MUX(i32 %155, i32 32767, i32 %161)
  store i32 %162, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i64 1, i64* %9, align 8
  br label %163

163:                                              ; preds = %206, %149
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* %10, align 8
  %166 = icmp ule i64 %164, %165
  br i1 %166, label %167, label %209

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = load i64, i64* %9, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %21, align 4
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @MUL15(i32 %172, i32 %173)
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %22, align 4
  %178 = ashr i32 %177, 15
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %22, align 4
  %180 = and i32 %179, 32767
  store i32 %180, i32* %22, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %22, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* %24, align 4
  %189 = ashr i32 %188, 31
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %24, align 4
  %193 = and i32 %192, 32767
  store i32 %193, i32* %24, align 4
  %194 = load i32, i32* %24, align 4
  %195 = load i32*, i32** %4, align 8
  %196 = load i64, i64* %9, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32 %194, i32* %197, align 4
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %21, align 4
  %200 = call i32 @EQ(i32 %198, i32 %199)
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %24, align 4
  %203 = load i32, i32* %21, align 4
  %204 = call i32 @GT(i32 %202, i32 %203)
  %205 = call i32 @MUX(i32 %200, i32 %201, i32 %204)
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %167
  %207 = load i64, i64* %9, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %9, align 8
  br label %163

209:                                              ; preds = %163
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @GT(i32 %210, i32 %211)
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @LT(i32 %216, i32 %217)
  %219 = or i32 %215, %218
  %220 = and i32 %214, %219
  store i32 %220, i32* %19, align 4
  %221 = load i32*, i32** %4, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @br_i15_add(i32* %221, i32* %222, i32 %223)
  %225 = load i32*, i32** %4, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %19, align 4
  %228 = call i32 @br_i15_sub(i32* %225, i32* %226, i32 %227)
  br label %229

229:                                              ; preds = %209, %34, %30
  ret void
}

declare dso_local i32 @divrem16(i32, i32, i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @MUL15(i32, i32) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @LT(i32, i32) #1

declare dso_local i32 @br_i15_add(i32*, i32*, i32) #1

declare dso_local i32 @br_i15_sub(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
