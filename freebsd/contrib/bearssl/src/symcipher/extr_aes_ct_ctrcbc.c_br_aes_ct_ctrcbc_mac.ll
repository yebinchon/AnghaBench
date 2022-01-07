; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_ctrcbc_mac(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @br_aes_ct_skey_expand(i32* %16, i32 %19, i32 %22)
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %9, align 8
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
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 3
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 5
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 7
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %44, %4
  %42 = load i64, i64* %8, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = call i32 @br_dec32le(i8* %47)
  %49 = xor i32 %45, %48
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = call i32 @br_dec32le(i8* %53)
  %55 = xor i32 %51, %54
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 2
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = call i32 @br_dec32le(i8* %59)
  %61 = xor i32 %57, %60
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 12
  %66 = call i32 @br_dec32le(i8* %65)
  %67 = xor i32 %63, %66
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 6
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %70 = call i32 @br_aes_ct_ortho(i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %76 = call i32 @br_aes_ct_bitslice_encrypt(i32 %73, i32* %74, i32* %75)
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %78 = call i32 @br_aes_ct_ortho(i32* %77)
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  store i32 %80, i32* %10, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %11, align 4
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  %84 = load i32, i32* %83, align 16
  store i32 %84, i32* %12, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 6
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %13, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 16
  store i8* %88, i8** %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, 16
  store i64 %90, i64* %8, align 8
  br label %41

91:                                               ; preds = %41
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @br_enc32le(i8* %93, i32 %94)
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @br_enc32le(i8* %97, i32 %98)
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @br_enc32le(i8* %101, i32 %102)
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 12
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @br_enc32le(i8* %105, i32 %106)
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
