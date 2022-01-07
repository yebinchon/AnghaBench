; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_cbcenc.c_br_aes_ct_cbcenc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_cbcenc.c_br_aes_ct_cbcenc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_cbcenc_run(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [120 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [120 x i32], [120 x i32]* %16, i64 0, i64 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @br_aes_ct_skey_expand(i32* %21, i32 %24, i32 %27)
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @br_dec32le(i8* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = call i32 @br_dec32le(i8* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = call i32 @br_dec32le(i8* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 12
  %40 = call i32 @br_dec32le(i8* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %45, %4
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %106

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @br_dec32le(i8* %47)
  %49 = xor i32 %46, %48
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load i32, i32* %13, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = call i32 @br_dec32le(i8* %53)
  %55 = xor i32 %51, %54
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = call i32 @br_dec32le(i8* %59)
  %61 = xor i32 %57, %60
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 12
  %66 = call i32 @br_dec32le(i8* %65)
  %67 = xor i32 %63, %66
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %70 = call i32 @br_aes_ct_ortho(i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [120 x i32], [120 x i32]* %16, i64 0, i64 0
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %76 = call i32 @br_aes_ct_bitslice_encrypt(i32 %73, i32* %74, i32* %75)
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %78 = call i32 @br_aes_ct_ortho(i32* %77)
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  store i32 %80, i32* %12, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %13, align 4
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  %84 = load i32, i32* %83, align 16
  store i32 %84, i32* %14, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %15, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @br_enc32le(i8* %87, i32 %88)
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @br_enc32le(i8* %91, i32 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @br_enc32le(i8* %95, i32 %96)
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 12
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @br_enc32le(i8* %99, i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 16
  store i8* %103, i8** %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %104, 16
  store i64 %105, i64* %8, align 8
  br label %42

106:                                              ; preds = %42
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @br_enc32le(i8* %107, i32 %108)
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @br_enc32le(i8* %111, i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @br_enc32le(i8* %115, i32 %116)
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 12
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @br_enc32le(i8* %119, i32 %120)
  ret void
}

declare dso_local i32 @br_aes_ct_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @br_aes_ct_ortho(i32*) #1

declare dso_local i32 @br_aes_ct_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
