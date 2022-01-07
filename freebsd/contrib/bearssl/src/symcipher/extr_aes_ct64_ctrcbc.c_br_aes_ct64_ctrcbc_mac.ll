; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_ctrcbc_mac(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca [120 x i32], align 16
  %16 = alloca [4 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @br_aes_ct64_skey_expand(i32* %17, i32 %20, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = call i32 @br_dec32le(i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = call i32 @br_dec32le(i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = call i32 @br_dec32le(i8* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 12
  %36 = call i32 @br_dec32le(i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %9, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %39 = call i32 @memset(i32* %38, i32 0, i32 32)
  br label %40

40:                                               ; preds = %43, %4
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %100

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = call i32 @br_dec32le(i8* %46)
  %48 = xor i32 %44, %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = call i32 @br_dec32le(i8* %52)
  %54 = xor i32 %50, %53
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = call i32 @br_dec32le(i8* %58)
  %60 = xor i32 %56, %59
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 12
  %65 = call i32 @br_dec32le(i8* %64)
  %66 = xor i32 %62, %65
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %71 = call i32 @br_aes_ct64_interleave_in(i32* %68, i32* %69, i32* %70)
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %73 = call i32 @br_aes_ct64_ortho(i32* %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %79 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %76, i32* %77, i32* %78)
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %81 = call i32 @br_aes_ct64_ortho(i32* %80)
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  %86 = load i32, i32* %85, align 16
  %87 = call i32 @br_aes_ct64_interleave_out(i32* %82, i32 %84, i32 %86)
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  store i32 %89, i32* %10, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %11, align 4
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %12, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %13, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 16
  store i8* %97, i8** %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub i64 %98, 16
  store i64 %99, i64* %8, align 8
  br label %40

100:                                              ; preds = %40
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @br_enc32le(i8* %102, i32 %103)
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @br_enc32le(i8* %106, i32 %107)
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @br_enc32le(i8* %110, i32 %111)
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 12
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @br_enc32le(i8* %114, i32 %115)
  ret void
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
