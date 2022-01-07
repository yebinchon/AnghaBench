; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_oaep_unpad.c_br_rsa_oaep_unpad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_oaep_unpad.c_br_rsa_oaep_unpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_oaep_unpad(i32* %0, i8* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @br_digest_size(i32* %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = shl i64 %28, 1
  %30 = add i64 %29, 2
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %136

33:                                               ; preds = %5
  %34 = load i8*, i8** %15, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i64, i64* %14, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub i64 %42, %43
  %45 = sub i64 %44, 1
  %46 = call i32 @br_mgf1_xor(i8* %35, i64 %36, i32* %37, i8* %41, i64 %45)
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = sub i64 %51, %52
  %54 = sub i64 %53, 1
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @br_mgf1_xor(i8* %50, i64 %54, i32* %55, i8* %57, i64 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @xor_hash_data(i32* %60, i8* %64, i8* %65, i64 %66)
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, 255
  %73 = ashr i32 %72, 8
  %74 = sub nsw i32 1, %73
  store i32 %74, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %105, %33
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %77
  %82 = load i8*, i8** %15, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, 255
  %90 = ashr i32 %89, 8
  %91 = and i32 %87, %90
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %19, align 4
  %94 = call i32 @EQ(i32 %93, i32 1)
  %95 = and i32 %92, %94
  %96 = load i32, i32* %17, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %20, align 4
  %99 = call i32 @NOT(i32 %98)
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %81
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %12, align 8
  br label %77

108:                                              ; preds = %77
  %109 = load i32, i32* %18, align 4
  %110 = load i64, i64* %14, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @GE(i32 %109, i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %108
  %118 = load i64, i64* %14, align 8
  %119 = add i64 2, %118
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  store i64 %122, i64* %21, align 8
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %13, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %13, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = load i64, i64* %21, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @memmove(i8* %126, i8* %129, i64 %130)
  %132 = load i64, i64* %13, align 8
  %133 = load i64*, i64** %11, align 8
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %117, %108
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %32
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i64 @br_digest_size(i32*) #1

declare dso_local i32 @br_mgf1_xor(i8*, i64, i32*, i8*, i64) #1

declare dso_local i32 @xor_hash_data(i32*, i8*, i8*, i64) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @NOT(i32) #1

declare dso_local i32 @GE(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
