; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_ghash_ctmul64.c_br_ghash_ctmul64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_ghash_ctmul64.c_br_ghash_ctmul64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ghash_ctmul64(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca [16 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @br_dec64be(i8* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = call i32 @br_dec64be(i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @br_dec64be(i8* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  %48 = call i32 @br_dec64be(i8* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @rev64(i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @rev64(i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = xor i32 %53, %54
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = xor i32 %56, %57
  store i32 %58, i32* %19, align 4
  br label %59

59:                                               ; preds = %84, %4
  %60 = load i64, i64* %8, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %212

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = icmp uge i64 %63, 16
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  store i8* %66, i8** %20, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 16
  store i8* %68, i8** %9, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, 16
  store i64 %70, i64* %8, align 8
  br label %84

71:                                               ; preds = %62
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 16, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(i8* %78, i32 0, i32 %81)
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  store i8* %83, i8** %20, align 8
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %71, %65
  %85 = load i8*, i8** %20, align 8
  %86 = call i32 @br_dec64be(i8* %85)
  %87 = load i32, i32* %13, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i8*, i8** %20, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = call i32 @br_dec64be(i8* %90)
  %92 = load i32, i32* %12, align 4
  %93 = xor i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @rev64(i32 %94)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @rev64(i32 %96)
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = xor i32 %98, %99
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %23, align 4
  %103 = xor i32 %101, %102
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @bmul64(i32 %104, i32 %105)
  store i32 %106, i32* %26, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @bmul64(i32 %107, i32 %108)
  store i32 %109, i32* %27, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @bmul64(i32 %110, i32 %111)
  store i32 %112, i32* %28, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @bmul64(i32 %113, i32 %114)
  store i32 %115, i32* %29, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @bmul64(i32 %116, i32 %117)
  store i32 %118, i32* %30, align 4
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %19, align 4
  %121 = call i32 @bmul64(i32 %119, i32 %120)
  store i32 %121, i32* %31, align 4
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %27, align 4
  %124 = xor i32 %122, %123
  %125 = load i32, i32* %28, align 4
  %126 = xor i32 %125, %124
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %29, align 4
  %128 = load i32, i32* %30, align 4
  %129 = xor i32 %127, %128
  %130 = load i32, i32* %31, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %31, align 4
  %132 = load i32, i32* %29, align 4
  %133 = call i32 @rev64(i32 %132)
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %29, align 4
  %135 = load i32, i32* %30, align 4
  %136 = call i32 @rev64(i32 %135)
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %30, align 4
  %138 = load i32, i32* %31, align 4
  %139 = call i32 @rev64(i32 %138)
  %140 = ashr i32 %139, 1
  store i32 %140, i32* %31, align 4
  %141 = load i32, i32* %26, align 4
  store i32 %141, i32* %32, align 4
  %142 = load i32, i32* %29, align 4
  %143 = load i32, i32* %28, align 4
  %144 = xor i32 %142, %143
  store i32 %144, i32* %33, align 4
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %31, align 4
  %147 = xor i32 %145, %146
  store i32 %147, i32* %34, align 4
  %148 = load i32, i32* %30, align 4
  store i32 %148, i32* %35, align 4
  %149 = load i32, i32* %35, align 4
  %150 = shl i32 %149, 1
  %151 = load i32, i32* %34, align 4
  %152 = ashr i32 %151, 63
  %153 = or i32 %150, %152
  store i32 %153, i32* %35, align 4
  %154 = load i32, i32* %34, align 4
  %155 = shl i32 %154, 1
  %156 = load i32, i32* %33, align 4
  %157 = ashr i32 %156, 63
  %158 = or i32 %155, %157
  store i32 %158, i32* %34, align 4
  %159 = load i32, i32* %33, align 4
  %160 = shl i32 %159, 1
  %161 = load i32, i32* %32, align 4
  %162 = ashr i32 %161, 63
  %163 = or i32 %160, %162
  store i32 %163, i32* %33, align 4
  %164 = load i32, i32* %32, align 4
  %165 = shl i32 %164, 1
  store i32 %165, i32* %32, align 4
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %32, align 4
  %168 = ashr i32 %167, 1
  %169 = xor i32 %166, %168
  %170 = load i32, i32* %32, align 4
  %171 = ashr i32 %170, 2
  %172 = xor i32 %169, %171
  %173 = load i32, i32* %32, align 4
  %174 = ashr i32 %173, 7
  %175 = xor i32 %172, %174
  %176 = load i32, i32* %34, align 4
  %177 = xor i32 %176, %175
  store i32 %177, i32* %34, align 4
  %178 = load i32, i32* %32, align 4
  %179 = shl i32 %178, 63
  %180 = load i32, i32* %32, align 4
  %181 = shl i32 %180, 62
  %182 = xor i32 %179, %181
  %183 = load i32, i32* %32, align 4
  %184 = shl i32 %183, 57
  %185 = xor i32 %182, %184
  %186 = load i32, i32* %33, align 4
  %187 = xor i32 %186, %185
  store i32 %187, i32* %33, align 4
  %188 = load i32, i32* %33, align 4
  %189 = load i32, i32* %33, align 4
  %190 = ashr i32 %189, 1
  %191 = xor i32 %188, %190
  %192 = load i32, i32* %33, align 4
  %193 = ashr i32 %192, 2
  %194 = xor i32 %191, %193
  %195 = load i32, i32* %33, align 4
  %196 = ashr i32 %195, 7
  %197 = xor i32 %194, %196
  %198 = load i32, i32* %35, align 4
  %199 = xor i32 %198, %197
  store i32 %199, i32* %35, align 4
  %200 = load i32, i32* %33, align 4
  %201 = shl i32 %200, 63
  %202 = load i32, i32* %33, align 4
  %203 = shl i32 %202, 62
  %204 = xor i32 %201, %203
  %205 = load i32, i32* %33, align 4
  %206 = shl i32 %205, 57
  %207 = xor i32 %204, %206
  %208 = load i32, i32* %34, align 4
  %209 = xor i32 %208, %207
  store i32 %209, i32* %34, align 4
  %210 = load i32, i32* %34, align 4
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %35, align 4
  store i32 %211, i32* %13, align 4
  br label %59

212:                                              ; preds = %59
  %213 = load i8*, i8** %11, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @br_enc64be(i8* %213, i32 %214)
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 8
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @br_enc64be(i8* %217, i32 %218)
  ret void
}

declare dso_local i32 @br_dec64be(i8*) #1

declare dso_local i32 @rev64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bmul64(i32, i32) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
