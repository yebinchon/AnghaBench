; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_cts_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_cts_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_blkcipher = type { i32 }
%struct.xdr_buf = type { i32, %struct.page** }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_desc = type { i32*, %struct.crypto_blkcipher* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_blkcipher*, %struct.xdr_buf*, i32, i32*, %struct.page**, i32)* @gss_krb5_cts_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_krb5_cts_crypt(%struct.crypto_blkcipher* %0, %struct.xdr_buf* %1, i32 %2, i32* %3, %struct.page** %4, i32 %5) #0 {
  %7 = alloca %struct.crypto_blkcipher*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.scatterlist], align 4
  %15 = alloca %struct.blkcipher_desc, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.page**, align 8
  %19 = alloca i32, align 4
  store %struct.crypto_blkcipher* %0, %struct.crypto_blkcipher** %7, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.page** %4, %struct.page*** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 0
  %21 = load i32*, i32** %10, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 1
  %23 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  store %struct.crypto_blkcipher* %23, %struct.crypto_blkcipher** %22, align 8
  %24 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %25 = call i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher* %24)
  %26 = mul nsw i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %31 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %37 = call i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher* %36)
  %38 = mul nsw i32 %37, 2
  %39 = icmp sgt i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %43 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %42, i32 0, i32 1
  %44 = load %struct.page**, %struct.page*** %43, align 8
  store %struct.page** %44, %struct.page*** %18, align 8
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %6
  %48 = load %struct.page**, %struct.page*** %11, align 8
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %50 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %49, i32 0, i32 1
  store %struct.page** %48, %struct.page*** %50, align 8
  br label %51

51:                                               ; preds = %47, %6
  %52 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @read_bytes_from_xdr_buf(%struct.xdr_buf* %52, i32 %53, i32* %29, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.page**, %struct.page*** %18, align 8
  %57 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %58 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %57, i32 0, i32 1
  store %struct.page** %56, %struct.page*** %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %87

62:                                               ; preds = %51
  %63 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %14, i64 0, i64 0
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @sg_init_one(%struct.scatterlist* %63, i32* %29, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %14, i64 0, i64 0
  %70 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %14, i64 0, i64 0
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %15, %struct.scatterlist* %69, %struct.scatterlist* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  br label %78

73:                                               ; preds = %62
  %74 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %14, i64 0, i64 0
  %75 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %14, i64 0, i64 0
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %15, %struct.scatterlist* %74, %struct.scatterlist* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %87

82:                                               ; preds = %78
  %83 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @write_bytes_to_xdr_buf(%struct.xdr_buf* %83, i32 %84, i32* %29, i32 %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %82, %81, %61
  %88 = load i32, i32* %13, align 4
  %89 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %89)
  ret i32 %88
}

declare dso_local i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i32*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @write_bytes_to_xdr_buf(%struct.xdr_buf*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
