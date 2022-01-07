; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_poly1305_i15.c_br_poly1305_i15_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_poly1305_i15.c_br_poly1305_i15_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P1305 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@P0I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_poly1305_i15_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32 (i8*, i8*, i32, i8*, i64)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [32 x i8], align 16
  %20 = alloca [16 x i8], align 16
  %21 = alloca [10 x i32], align 16
  %22 = alloca [10 x i32], align 16
  %23 = alloca [10 x i32], align 16
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 (i8*, i8*, i32, i8*, i64)* %7, i32 (i8*, i8*, i32, i8*, i64)** %17, align 8
  store i32 %8, i32* %18, align 4
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 0, i32 32)
  %26 = load i32 (i8*, i8*, i32, i8*, i64)*, i32 (i8*, i8*, i32, i8*, i64)** %17, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %30 = call i32 %26(i8* %27, i8* %28, i32 0, i8* %29, i64 32)
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %9
  %34 = load i32 (i8*, i8*, i32, i8*, i64)*, i32 (i8*, i8*, i32, i8*, i64)** %17, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 %34(i8* %35, i8* %36, i32 1, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %33, %9
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 15
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 7
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 11
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 15
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 15
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 4
  %62 = load i8, i8* %61, align 4
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 252
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 4
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 8
  %67 = load i8, i8* %66, align 8
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 252
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 8
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 12
  %72 = load i8, i8* %71, align 4
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 252
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 4
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %77 = call i32 @byteswap16(i8* %76)
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i64 0, i64 0
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %80 = load i32, i32* @P1305, align 4
  %81 = call i32 @br_i15_decode_mod(i32* %78, i8* %79, i32 16, i32 %80)
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %22, i64 0, i64 0
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i64 0, i64 0
  %84 = load i32, i32* @R2, align 4
  %85 = load i32, i32* @P1305, align 4
  %86 = load i32, i32* @P0I, align 4
  %87 = call i32 @br_i15_montymul(i32* %82, i32* %83, i32 %84, i32 %85, i32 %86)
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %89 = call i32 @br_i15_zero(i32* %88, i32 138)
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %91 = load i64, i64* %15, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @br_enc64le(i8* %90, i32 %92)
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %95 = getelementptr inbounds i8, i8* %94, i64 8
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @br_enc64le(i8* %95, i32 %97)
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %100 = getelementptr inbounds [10 x i32], [10 x i32]* %22, i64 0, i64 0
  %101 = load i8*, i8** %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @poly1305_inner(i32* %99, i32* %100, i8* %101, i32 %103)
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* %22, i64 0, i64 0
  %107 = load i8*, i8** %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @poly1305_inner(i32* %105, i32* %106, i8* %107, i32 %109)
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %22, i64 0, i64 0
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %114 = call i32 @poly1305_inner(i32* %111, i32* %112, i8* %113, i32 16)
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %116 = getelementptr inbounds i8, i8* %115, i64 16
  %117 = call i32 @byteswap16(i8* %116)
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i64 0, i64 0
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 16
  %121 = load i32, i32* @P1305, align 4
  %122 = call i32 @br_i15_decode_mod(i32* %118, i8* %120, i32 16, i32 %121)
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i64 0, i64 0
  %125 = call i32 @br_i15_add(i32* %123, i32* %124, i32 1)
  %126 = load i8*, i8** %16, align 8
  %127 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %128 = call i32 @br_i15_encode(i8* %126, i32 16, i32* %127)
  %129 = load i8*, i8** %16, align 8
  %130 = call i32 @byteswap16(i8* %129)
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %40
  %134 = load i32 (i8*, i8*, i32, i8*, i64)*, i32 (i8*, i8*, i32, i8*, i64)** %17, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 %134(i8* %135, i8* %136, i32 1, i8* %137, i64 %138)
  br label %140

140:                                              ; preds = %133, %40
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @byteswap16(i8*) #1

declare dso_local i32 @br_i15_decode_mod(i32*, i8*, i32, i32) #1

declare dso_local i32 @br_i15_montymul(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @br_i15_zero(i32*, i32) #1

declare dso_local i32 @br_enc64le(i8*, i32) #1

declare dso_local i32 @poly1305_inner(i32*, i32*, i8*, i32) #1

declare dso_local i32 @br_i15_add(i32*, i32*, i32) #1

declare dso_local i32 @br_i15_encode(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
