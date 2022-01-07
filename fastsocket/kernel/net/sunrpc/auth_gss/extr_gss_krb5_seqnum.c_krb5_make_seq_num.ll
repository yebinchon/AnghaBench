; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_make_seq_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_make_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i64 }
%struct.crypto_blkcipher = type { i32 }

@ENCTYPE_ARCFOUR_HMAC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_make_seq_num(%struct.krb5_ctx* %0, %struct.crypto_blkcipher* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_ctx*, align 8
  %9 = alloca %struct.crypto_blkcipher*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [8 x i8], align 1
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %8, align 8
  store %struct.crypto_blkcipher* %1, %struct.crypto_blkcipher** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @krb5_make_rc4_seq_num(%struct.krb5_ctx* %21, i32 %22, i32 %23, i8* %24, i8* %25)
  store i32 %26, i32* %7, align 4
  br label %64

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 2
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 3
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %10, align 4
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 4
  store i8 %48, i8* %49, align 1
  %50 = load i32, i32* %10, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 5
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* %10, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 6
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %10, align 4
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 7
  store i8 %57, i8* %58, align 1
  %59 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @krb5_encrypt(%struct.crypto_blkcipher* %59, i8* %60, i8* %61, i8* %62, i32 8)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %27, %20
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @krb5_make_rc4_seq_num(%struct.krb5_ctx*, i32, i32, i8*, i8*) #1

declare dso_local i32 @krb5_encrypt(%struct.crypto_blkcipher*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
