; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_encrypt_xdr_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_encrypt_xdr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_blkcipher = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.page = type { i32 }
%struct.encryptor_desc = type { i32, i32, i32, i64, i64, %struct.page**, %struct.xdr_buf*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.crypto_blkcipher* }

@encryptor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_encrypt_xdr_buf(%struct.crypto_blkcipher* %0, %struct.xdr_buf* %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca %struct.crypto_blkcipher*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.encryptor_desc, align 8
  store %struct.crypto_blkcipher* %0, %struct.crypto_blkcipher** %5, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page** %3, %struct.page*** %8, align 8
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %12 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %5, align 8
  %17 = call i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher* %16)
  %18 = srem i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %5, align 8
  %26 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store %struct.crypto_blkcipher* %25, %struct.crypto_blkcipher** %27, align 8
  %28 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %37 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 6
  store %struct.xdr_buf* %36, %struct.xdr_buf** %37, align 8
  %38 = load %struct.page**, %struct.page*** %8, align 8
  %39 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 5
  store %struct.page** %38, %struct.page*** %39, align 8
  %40 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sg_init_table(i32 %43, i32 4)
  %45 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sg_init_table(i32 %46, i32 4)
  %48 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %51 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @encryptor, align 4
  %56 = call i32 @xdr_process_buf(%struct.xdr_buf* %48, i32 %49, i32 %54, i32 %55, %struct.encryptor_desc* %10)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @xdr_process_buf(%struct.xdr_buf*, i32, i32, i32, %struct.encryptor_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
