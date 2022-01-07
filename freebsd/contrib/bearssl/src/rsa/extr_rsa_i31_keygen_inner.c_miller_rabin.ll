; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_keygen_inner.c_miller_rabin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_keygen_inner.c_miller_rabin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i32*, i64, i32 (i32*, i8*, i64, i32*, i32, i32*, i64)*)* @miller_rabin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miller_rabin(i32** %0, i32* %1, i32 %2, i32* %3, i64 %4, i32 (i32*, i8*, i64, i32*, i32, i32*, i64)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i32*, i8*, i64, i32*, i32, i32*, i64)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 (i32*, i8*, i64, i32*, i32, i32*, i64)* %5, i32 (i32*, i8*, i64, i32*, i32, i32*, i64)** %13, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %14, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 5
  %37 = sub nsw i32 %32, %36
  %38 = add nsw i32 %37, 7
  %39 = ashr i32 %38, 3
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %16, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @br_i31_encode(i8* %41, i64 %42, i32* %43)
  store i32 0, i32* %20, align 4
  store i64 0, i64* %18, align 8
  br label %45

45:                                               ; preds = %65, %6
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* %16, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* %18, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %22, align 4
  %56 = lshr i32 %55, 1
  %57 = load i32, i32* %20, align 4
  %58 = or i32 %56, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %18, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %62, align 1
  %63 = load i32, i32* %22, align 4
  %64 = shl i32 %63, 7
  store i32 %64, i32* %20, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i64, i64* %18, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %18, align 8
  br label %45

68:                                               ; preds = %45
  %69 = load i64, i64* %16, align 8
  %70 = add i64 %69, 3
  %71 = lshr i64 %70, 2
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 %72
  store i32* %74, i32** %11, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %12, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 31
  %82 = ashr i32 %81, 5
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %15, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 31
  %92 = call i32 @EQ0(i32 %91)
  %93 = sub nsw i32 %87, %92
  store i32 %93, i32* %19, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @br_i31_ninv31(i32 %96)
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %187, %68
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %10, align 4
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %102, label %188

102:                                              ; preds = %98
  %103 = load i32*, i32** %11, align 8
  store i32* %103, i32** %23, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %23, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %23, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 0, i32* %111, align 4
  %112 = load i32**, i32*** %8, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @mkrand(i32** %112, i32* %113, i32 %114)
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %24, align 8
  %120 = load i64, i64* %12, align 8
  %121 = sub i64 %120, 1
  %122 = load i64, i64* %15, align 8
  %123 = sub i64 %121, %122
  store i64 %123, i64* %27, align 8
  %124 = load i64, i64* %27, align 8
  %125 = and i64 %124, 1
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %102
  %128 = load i32*, i32** %24, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %24, align 8
  %130 = load i64, i64* %27, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %27, align 8
  br label %132

132:                                              ; preds = %127, %102
  %133 = load i32 (i32*, i8*, i64, i32*, i32, i32*, i64)*, i32 (i32*, i8*, i64, i32*, i32, i32*, i64)** %13, align 8
  %134 = load i32*, i32** %23, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32*, i32** %24, align 8
  %140 = load i64, i64* %27, align 8
  %141 = call i32 %133(i32* %134, i8* %135, i64 %136, i32* %137, i32 %138, i32* %139, i64 %140)
  %142 = load i32*, i32** %23, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %144, 1
  store i32 %145, i32* %25, align 4
  %146 = load i32*, i32** %23, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = xor i32 %148, %152
  store i32 %153, i32* %26, align 4
  store i64 2, i64* %18, align 8
  br label %154

154:                                              ; preds = %176, %132
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* %15, align 8
  %157 = icmp ule i64 %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = load i32*, i32** %23, align 8
  %160 = load i64, i64* %18, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %25, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %25, align 4
  %165 = load i32*, i32** %23, align 8
  %166 = load i64, i64* %18, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i64, i64* %18, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %168, %172
  %174 = load i32, i32* %26, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %26, align 4
  br label %176

176:                                              ; preds = %158
  %177 = load i64, i64* %18, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %18, align 8
  br label %154

179:                                              ; preds = %154
  %180 = load i32, i32* %25, align 4
  %181 = call i32 @EQ0(i32 %180)
  %182 = load i32, i32* %26, align 4
  %183 = call i32 @EQ0(i32 %182)
  %184 = or i32 %181, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 0, i32* %7, align 4
  br label %189

187:                                              ; preds = %179
  br label %98

188:                                              ; preds = %98
  store i32 1, i32* %7, align 4
  br label %189

189:                                              ; preds = %188, %186
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @br_i31_encode(i8*, i64, i32*) #1

declare dso_local i32 @EQ0(i32) #1

declare dso_local i32 @br_i31_ninv31(i32) #1

declare dso_local i32 @mkrand(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
