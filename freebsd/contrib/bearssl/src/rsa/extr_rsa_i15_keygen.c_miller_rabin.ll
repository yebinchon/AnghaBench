; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_miller_rabin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_miller_rabin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i32*, i64)* @miller_rabin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miller_rabin(i32** %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %12, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = sub nsw i32 %28, %32
  %34 = add nsw i32 %33, 7
  %35 = ashr i32 %34, 3
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @br_i15_encode(i8* %37, i64 %38, i32* %39)
  store i32 0, i32* %18, align 4
  store i64 0, i64* %16, align 8
  br label %41

41:                                               ; preds = %61, %5
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = lshr i32 %51, 1
  %53 = load i32, i32* %18, align 4
  %54 = or i32 %52, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %16, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %55, i8* %58, align 1
  %59 = load i32, i32* %20, align 4
  %60 = shl i32 %59, 7
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %45
  %62 = load i64, i64* %16, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %16, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  %67 = lshr i64 %66, 1
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 %68
  store i32* %70, i32** %10, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %11, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %11, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 15
  %78 = ashr i32 %77, 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %13, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = call i32 @EQ0(i32 %87)
  %89 = sub nsw i32 %83, %88
  store i32 %89, i32* %17, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @br_i15_ninv15(i32 %92)
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %171, %64
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  %97 = icmp sgt i32 %95, 0
  br i1 %97, label %98, label %172

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  store i32* %99, i32** %21, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %21, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %21, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 0, i32* %107, align 4
  %108 = load i32**, i32*** %7, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @mkrand(i32** %108, i32* %109, i32 %110)
  %112 = load i32*, i32** %21, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i64, i64* %11, align 8
  %122 = sub i64 %121, 1
  %123 = load i64, i64* %13, align 8
  %124 = sub i64 %122, %123
  %125 = call i32 @br_i15_modpow_opt(i32* %112, i8* %113, i64 %114, i32* %115, i32 %116, i32* %120, i64 %124)
  %126 = load i32*, i32** %21, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %128, 1
  store i32 %129, i32* %22, align 4
  %130 = load i32*, i32** %21, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = xor i32 %132, %136
  store i32 %137, i32* %23, align 4
  store i64 2, i64* %16, align 8
  br label %138

138:                                              ; preds = %160, %98
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp ule i64 %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = load i32*, i32** %21, align 8
  %144 = load i64, i64* %16, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %22, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %22, align 4
  %149 = load i32*, i32** %21, align 8
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = xor i32 %152, %156
  %158 = load i32, i32* %23, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %23, align 4
  br label %160

160:                                              ; preds = %142
  %161 = load i64, i64* %16, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %16, align 8
  br label %138

163:                                              ; preds = %138
  %164 = load i32, i32* %22, align 4
  %165 = call i32 @EQ0(i32 %164)
  %166 = load i32, i32* %23, align 4
  %167 = call i32 @EQ0(i32 %166)
  %168 = or i32 %165, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 0, i32* %6, align 4
  br label %173

171:                                              ; preds = %163
  br label %94

172:                                              ; preds = %94
  store i32 1, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %170
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @br_i15_encode(i8*, i64, i32*) #1

declare dso_local i32 @EQ0(i32) #1

declare dso_local i32 @br_i15_ninv15(i32) #1

declare dso_local i32 @mkrand(i32**, i32*, i32) #1

declare dso_local i32 @br_i15_modpow_opt(i32*, i8*, i64, i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
