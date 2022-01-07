; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_cbcenc.c_br_aes_ct64_cbcenc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_cbcenc.c_br_aes_ct64_cbcenc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_cbcenc_run(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [120 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [8 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = getelementptr inbounds [120 x i32], [120 x i32]* %10, i64 0, i64 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @br_aes_ct64_skey_expand(i32* %14, i32 %17, i32 %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @br_range_dec32le(i32* %22, i32 4, i8* %23)
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %29, %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %26
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @br_dec32le(i8* %32)
  %34 = xor i32 %31, %33
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i32 @br_dec32le(i8* %39)
  %41 = xor i32 %37, %40
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 8
  %47 = call i32 @br_dec32le(i8* %46)
  %48 = xor i32 %44, %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 12
  %54 = call i32 @br_dec32le(i8* %53)
  %55 = xor i32 %51, %54
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %60 = call i32 @br_aes_ct64_interleave_in(i32* %57, i32* %58, i32* %59)
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %62 = call i32 @br_aes_ct64_ortho(i32* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [120 x i32], [120 x i32]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %68 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %65, i32* %66, i32* %67)
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %70 = call i32 @br_aes_ct64_ortho(i32* %69)
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 4
  %75 = load i32, i32* %74, align 16
  %76 = call i32 @br_aes_ct64_interleave_out(i32* %71, i32 %73, i32 %75)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %79 = call i32 @memcpy(i32* %77, i32* %78, i32 16)
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = call i32 @br_enc32le(i8* %80, i32 %82)
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @br_enc32le(i8* %85, i32 %87)
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @br_enc32le(i8* %90, i32 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 12
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @br_enc32le(i8* %95, i32 %97)
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 16
  store i8* %100, i8** %9, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, 16
  store i64 %102, i64* %8, align 8
  br label %26

103:                                              ; preds = %26
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %106 = call i32 @br_range_enc32le(i8* %104, i32* %105, i32 4)
  ret void
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_range_dec32le(i32*, i32, i8*) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

declare dso_local i32 @br_range_enc32le(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
