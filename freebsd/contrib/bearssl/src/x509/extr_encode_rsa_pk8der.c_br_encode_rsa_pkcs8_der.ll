; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_rsa_pk8der.c_br_encode_rsa_pkcs8_der.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_rsa_pk8der.c_br_encode_rsa_pkcs8_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@br_encode_rsa_pkcs8_der.PK8_HEAD = internal constant [19 x i8] c"\02\01\000\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\04", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_encode_rsa_pkcs8_der(i8* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @br_encode_rsa_raw_der(i8* null, i32* %16, i32* %17, i8* %18, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @len_of_len(i64 %21)
  %23 = sext i32 %22 to i64
  %24 = add i64 19, %23
  %25 = load i64, i64* %12, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @len_of_len(i64 %30)
  %32 = add nsw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %13, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %6, align 8
  br label %65

36:                                               ; preds = %5
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %14, align 8
  store i8 48, i8* %38, align 1
  %40 = load i8*, i8** %14, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @br_asn1_encode_length(i8* %40, i64 %41)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @memcpy(i8* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @br_encode_rsa_pkcs8_der.PK8_HEAD, i64 0, i64 0), i32 19)
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 19
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @br_asn1_encode_length(i8* %50, i64 %51)
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @br_encode_rsa_raw_der(i8* %55, i32* %56, i32* %57, i8* %58, i64 %59)
  %61 = load i64, i64* %15, align 8
  %62 = add i64 1, %61
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %36, %29
  %66 = load i64, i64* %6, align 8
  ret i64 %66
}

declare dso_local i64 @br_encode_rsa_raw_der(i8*, i32*, i32*, i8*, i64) #1

declare dso_local i32 @len_of_len(i64) #1

declare dso_local i64 @br_asn1_encode_length(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
