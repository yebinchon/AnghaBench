; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_co_reduce_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_co_reduce_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64, i64, i64, i64, i32*, i32)* @co_reduce_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @co_reduce_mod(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %13, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %38, %40
  %42 = add nsw i32 %35, %41
  %43 = load i32, i32* %18, align 4
  %44 = mul nsw i32 %42, %43
  %45 = and i32 %44, 2147483647
  store i32 %45, i32* %22, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %15, align 8
  %50 = trunc i64 %49 to i32
  %51 = mul nsw i32 %48, %50
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %16, align 8
  %56 = trunc i64 %55 to i32
  %57 = mul nsw i32 %54, %56
  %58 = add nsw i32 %51, %57
  %59 = load i32, i32* %18, align 4
  %60 = mul nsw i32 %58, %59
  %61 = and i32 %60, 2147483647
  store i32 %61, i32* %23, align 4
  store i64 0, i64* %19, align 8
  br label %62

62:                                               ; preds = %143, %9
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %146

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = load i64, i64* %19, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %24, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %25, align 4
  %75 = load i32, i32* %24, align 4
  %76 = load i64, i64* %13, align 8
  %77 = trunc i64 %76 to i32
  %78 = mul nsw i32 %75, %77
  %79 = load i32, i32* %25, align 4
  %80 = load i64, i64* %14, align 8
  %81 = trunc i64 %80 to i32
  %82 = mul nsw i32 %79, %81
  %83 = add nsw i32 %78, %82
  %84 = load i32*, i32** %17, align 8
  %85 = load i64, i64* %19, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %22, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %83, %89
  %91 = load i64, i64* %20, align 8
  %92 = trunc i64 %91 to i32
  %93 = add nsw i32 %90, %92
  store i32 %93, i32* %26, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i64, i64* %15, align 8
  %96 = trunc i64 %95 to i32
  %97 = mul nsw i32 %94, %96
  %98 = load i32, i32* %25, align 4
  %99 = load i64, i64* %16, align 8
  %100 = trunc i64 %99 to i32
  %101 = mul nsw i32 %98, %100
  %102 = add nsw i32 %97, %101
  %103 = load i32*, i32** %17, align 8
  %104 = load i64, i64* %19, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %23, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %102, %108
  %110 = load i64, i64* %21, align 8
  %111 = trunc i64 %110 to i32
  %112 = add nsw i32 %109, %111
  store i32 %112, i32* %27, align 4
  %113 = load i64, i64* %19, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %66
  %116 = load i32, i32* %26, align 4
  %117 = and i32 %116, 2147483647
  %118 = load i32*, i32** %10, align 8
  %119 = load i64, i64* %19, align 8
  %120 = sub i64 %119, 1
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %27, align 4
  %123 = and i32 %122, 2147483647
  %124 = load i32*, i32** %11, align 8
  %125 = load i64, i64* %19, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %115, %66
  %129 = load i32, i32* %26, align 4
  %130 = ashr i32 %129, 31
  store i32 %130, i32* %28, align 4
  %131 = load i32, i32* %27, align 4
  %132 = ashr i32 %131, 31
  store i32 %132, i32* %29, align 4
  %133 = load i32, i32* %28, align 4
  %134 = xor i32 %133, undef
  %135 = sub nsw i32 %134, undef
  store i32 %135, i32* %28, align 4
  %136 = load i32, i32* %29, align 4
  %137 = xor i32 %136, undef
  %138 = sub nsw i32 %137, undef
  store i32 %138, i32* %29, align 4
  %139 = bitcast i32* %28 to i64*
  %140 = load i64, i64* %139, align 4
  store i64 %140, i64* %20, align 8
  %141 = bitcast i32* %29 to i64*
  %142 = load i64, i64* %141, align 4
  store i64 %142, i64* %21, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load i64, i64* %19, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %19, align 8
  br label %62

146:                                              ; preds = %62
  %147 = load i64, i64* %20, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %10, align 8
  %150 = load i64, i64* %12, align 8
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = load i64, i64* %21, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32*, i32** %11, align 8
  %156 = load i64, i64* %12, align 8
  %157 = sub i64 %156, 1
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = load i64, i64* %20, align 8
  %163 = trunc i64 %162 to i32
  %164 = ashr i32 %163, 63
  %165 = call i32 @finish_mod(i32* %159, i64 %160, i32* %161, i32 %164)
  %166 = load i32*, i32** %11, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i32*, i32** %17, align 8
  %169 = load i64, i64* %21, align 8
  %170 = trunc i64 %169 to i32
  %171 = ashr i32 %170, 63
  %172 = call i32 @finish_mod(i32* %166, i64 %167, i32* %168, i32 %171)
  ret void
}

declare dso_local i32 @finish_mod(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
