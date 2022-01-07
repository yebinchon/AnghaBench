; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_get_seq_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_seqnum.c_krb5_get_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i64, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"RPC:       krb5_get_seq_num:\0A\00", align 1
@ENCTYPE_ARCFOUR_HMAC = common dso_local global i64 0, align 8
@KG_BAD_SEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_get_seq_num(%struct.krb5_ctx* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.krb5_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca %struct.crypto_blkcipher*, align 8
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %15, i32 0, i32 1
  %17 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %16, align 8
  store %struct.crypto_blkcipher* %17, %struct.crypto_blkcipher** %14, align 8
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @krb5_get_rc4_seq_num(%struct.krb5_ctx* %25, i8* %26, i8* %27, i32* %28, i8* %29)
  store i32 %30, i32* %6, align 4
  br label %91

31:                                               ; preds = %5
  %32 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %36 = call i32 @krb5_decrypt(%struct.crypto_blkcipher* %32, i8* %33, i8* %34, i8* %35, i32 8)
  store i32 %36, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %91

40:                                               ; preds = %31
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 6
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 7
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56, %48, %40
  %65 = load i32, i32* @KG_BAD_SEQ, align 4
  store i32 %65, i32* %6, align 4
  br label %91

66:                                               ; preds = %56
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = or i32 %73, %77
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 16
  %83 = or i32 %78, %82
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 24
  %88 = or i32 %83, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %11, align 8
  store i8 %89, i8* %90, align 1
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %66, %64, %38, %24
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @krb5_get_rc4_seq_num(%struct.krb5_ctx*, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @krb5_decrypt(%struct.crypto_blkcipher*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
