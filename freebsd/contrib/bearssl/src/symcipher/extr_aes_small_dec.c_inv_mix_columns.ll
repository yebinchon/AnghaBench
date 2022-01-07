; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_dec.c_inv_mix_columns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_dec.c_inv_mix_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @inv_mix_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inv_mix_columns(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %184, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %187

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 2
  %44 = xor i32 %41, %43
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 3
  %47 = xor i32 %44, %46
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 1
  %52 = xor i32 %49, %51
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 %53, 3
  %55 = xor i32 %52, %54
  %56 = load i32, i32* %6, align 4
  %57 = xor i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 2
  %60 = xor i32 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, 3
  %63 = xor i32 %60, %62
  %64 = load i32, i32* %7, align 4
  %65 = xor i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 3
  %68 = xor i32 %65, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 %70, 3
  %72 = xor i32 %69, %71
  %73 = load i32, i32* %5, align 4
  %74 = shl i32 %73, 1
  %75 = xor i32 %72, %74
  %76 = load i32, i32* %5, align 4
  %77 = shl i32 %76, 2
  %78 = xor i32 %75, %77
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 %79, 3
  %81 = xor i32 %78, %80
  %82 = load i32, i32* %6, align 4
  %83 = xor i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = shl i32 %84, 1
  %86 = xor i32 %83, %85
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 3
  %89 = xor i32 %86, %88
  %90 = load i32, i32* %7, align 4
  %91 = xor i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 %92, 2
  %94 = xor i32 %91, %93
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 %95, 3
  %97 = xor i32 %94, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = shl i32 %99, 2
  %101 = xor i32 %98, %100
  %102 = load i32, i32* %4, align 4
  %103 = shl i32 %102, 3
  %104 = xor i32 %101, %103
  %105 = load i32, i32* %5, align 4
  %106 = xor i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = shl i32 %107, 3
  %109 = xor i32 %106, %108
  %110 = load i32, i32* %6, align 4
  %111 = shl i32 %110, 1
  %112 = xor i32 %109, %111
  %113 = load i32, i32* %6, align 4
  %114 = shl i32 %113, 2
  %115 = xor i32 %112, %114
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 %116, 3
  %118 = xor i32 %115, %117
  %119 = load i32, i32* %7, align 4
  %120 = xor i32 %118, %119
  %121 = load i32, i32* %7, align 4
  %122 = shl i32 %121, 1
  %123 = xor i32 %120, %122
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 %124, 3
  %126 = xor i32 %123, %125
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = shl i32 %128, 1
  %130 = xor i32 %127, %129
  %131 = load i32, i32* %4, align 4
  %132 = shl i32 %131, 3
  %133 = xor i32 %130, %132
  %134 = load i32, i32* %5, align 4
  %135 = xor i32 %133, %134
  %136 = load i32, i32* %5, align 4
  %137 = shl i32 %136, 2
  %138 = xor i32 %135, %137
  %139 = load i32, i32* %5, align 4
  %140 = shl i32 %139, 3
  %141 = xor i32 %138, %140
  %142 = load i32, i32* %6, align 4
  %143 = xor i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = shl i32 %144, 3
  %146 = xor i32 %143, %145
  %147 = load i32, i32* %7, align 4
  %148 = shl i32 %147, 1
  %149 = xor i32 %146, %148
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %150, 2
  %152 = xor i32 %149, %151
  %153 = load i32, i32* %7, align 4
  %154 = shl i32 %153, 3
  %155 = xor i32 %152, %154
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @gf256red(i32 %156)
  %158 = load i32*, i32** %2, align 8
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 0
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @gf256red(i32 %163)
  %165 = load i32*, i32** %2, align 8
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @gf256red(i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @gf256red(i32 %177)
  %179 = load i32*, i32** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 3
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %15
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 4
  store i32 %186, i32* %3, align 4
  br label %12

187:                                              ; preds = %12
  ret void
}

declare dso_local i32 @gf256red(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
