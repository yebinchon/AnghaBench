; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_enc.c_mix_columns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_enc.c_mix_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mix_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_columns(i32* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 8
  %45 = load i32, i32* %3, align 4
  %46 = shl i32 %45, 24
  %47 = or i32 %44, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 8
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 24
  %52 = or i32 %49, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 8
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 %55, 24
  %57 = or i32 %54, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 8
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 24
  %62 = or i32 %59, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 8
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 24
  %67 = or i32 %64, %66
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 24
  %72 = or i32 %69, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 8
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 24
  %77 = or i32 %74, %76
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 8
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 24
  %82 = or i32 %79, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %18, align 4
  %85 = xor i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = xor i32 %85, %86
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %11, align 4
  %90 = xor i32 %88, %89
  %91 = call i32 @rotr16(i32 %90)
  %92 = xor i32 %87, %91
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %11, align 4
  %97 = xor i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = xor i32 %97, %98
  %100 = load i32, i32* %18, align 4
  %101 = xor i32 %99, %100
  %102 = load i32, i32* %12, align 4
  %103 = xor i32 %101, %102
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %12, align 4
  %106 = xor i32 %104, %105
  %107 = call i32 @rotr16(i32 %106)
  %108 = xor i32 %103, %107
  %109 = load i32*, i32** %2, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %12, align 4
  %113 = xor i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = xor i32 %113, %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %13, align 4
  %118 = xor i32 %116, %117
  %119 = call i32 @rotr16(i32 %118)
  %120 = xor i32 %115, %119
  %121 = load i32*, i32** %2, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %13, align 4
  %125 = xor i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = xor i32 %125, %126
  %128 = load i32, i32* %18, align 4
  %129 = xor i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = xor i32 %129, %130
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %14, align 4
  %134 = xor i32 %132, %133
  %135 = call i32 @rotr16(i32 %134)
  %136 = xor i32 %131, %135
  %137 = load i32*, i32** %2, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %14, align 4
  %141 = xor i32 %139, %140
  %142 = load i32, i32* %10, align 4
  %143 = xor i32 %141, %142
  %144 = load i32, i32* %18, align 4
  %145 = xor i32 %143, %144
  %146 = load i32, i32* %15, align 4
  %147 = xor i32 %145, %146
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %15, align 4
  %150 = xor i32 %148, %149
  %151 = call i32 @rotr16(i32 %150)
  %152 = xor i32 %147, %151
  %153 = load i32*, i32** %2, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %15, align 4
  %157 = xor i32 %155, %156
  %158 = load i32, i32* %16, align 4
  %159 = xor i32 %157, %158
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %16, align 4
  %162 = xor i32 %160, %161
  %163 = call i32 @rotr16(i32 %162)
  %164 = xor i32 %159, %163
  %165 = load i32*, i32** %2, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %16, align 4
  %169 = xor i32 %167, %168
  %170 = load i32, i32* %17, align 4
  %171 = xor i32 %169, %170
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %17, align 4
  %174 = xor i32 %172, %173
  %175 = call i32 @rotr16(i32 %174)
  %176 = xor i32 %171, %175
  %177 = load i32*, i32** %2, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %17, align 4
  %181 = xor i32 %179, %180
  %182 = load i32, i32* %18, align 4
  %183 = xor i32 %181, %182
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %18, align 4
  %186 = xor i32 %184, %185
  %187 = call i32 @rotr16(i32 %186)
  %188 = xor i32 %183, %187
  %189 = load i32*, i32** %2, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 7
  store i32 %188, i32* %190, align 4
  ret void
}

declare dso_local i32 @rotr16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
